#ifndef _M_ITERATOR_HPP_
#define _M_ITERATOR_HPP_
//  finished
#include <cstddef>
#include "m_type_traits.hpp"

namespace mystl
{

struct input_iterator_tag {};
struct output_iterator_tag {};
struct forward_iterator_tag       : public input_iterator_tag {};
struct bidirectional_iterator_tag : public forward_iterator_tag {};
struct random_access_iterator_tag : public bidirectional_iterator_tag {};

template<class _Category, class _Tp, class _Distence = ptrdiff_t,
         class _Pointer = _Tp*, class _Reference = _Tp&>
struct iterator
{
    typedef _Category           iterator_category;
    typedef _Tp                 value_type;
    typedef _Pointer            pointer;
    typedef _Reference          reference;
    typedef _Distence           difference_type;
};

template<class _Tp> 
struct has_iterator_cat
{
private: 
    struct two { char a; char b; };
    template <class _U>
    static two test(...);
    template <class _U>
    static char test(typename _U::iterator_category * = 0);

public:
    static const bool value = sizeof(test<_Tp>(0)) == sizeof(char);
};

template<class _Iter, bool> 
struct iterator_traits_impl {};

template<class _Iter> 
struct iterator_traits_impl<_Iter, true>
{
    typedef typename _Iter::iterator_category   iterator_category;
    typedef typename _Iter::value_type          value_type;
    typedef typename _Iter::pointer             pointer;
    typedef typename _Iter::reference           reference;
    typedef typename _Iter::difference_type     difference_type;
};

template<class _Iter, bool>
struct iterator_traits_helper {};

template<class _Iter> 
struct iterator_traits_helper<_Iter, true> : public iterator_traits_impl<_Iter, 
    std::is_convertible<typename _Iter::iterator_category, input_iterator_tag>::value ||
    std::is_convertible<typename _Iter::iterator_category, output_iterator_tag>::value> {};

template<class _Iter> 
struct iterator_traits : public iterator_traits_helper<_Iter, has_iterator_cat<_Iter>::value> {};

template <class _Tp> 
struct iterator_traits<_Tp*>
{
    typedef random_access_iterator_tag          iterator_category;
    typedef _Tp                                 value_type;
    typedef _Tp*                                pointer;
    typedef _Tp&                                reference;
    typedef ptrdiff_t                           difference_type;
};

template <class _Tp> 
struct iterator_traits<const _Tp*>
{
    typedef random_access_iterator_tag          iterator_category;
    typedef _Tp                                 value_type;
    typedef const _Tp*                          pointer;
    typedef const _Tp&                          reference;
    typedef ptrdiff_t                           difference_type;
};

template<class _Tp, class _U, bool = has_iterator_cat<iterator_traits<_Tp>>::value> 
struct has_iterator_cat_of 
: public m_bool_constant<std::is_convertible<
typename iterator_traits<_Tp>::iterator_category, _U>::value> {};

//  萃取迭代器类型
template <class _Tp, class _U>
struct has_iterator_cat_of<_Tp, _U, false> : public m_false_type {};

template <class _Iter> 
struct is_input_iterator : public has_iterator_cat_of<_Iter, input_iterator_tag> {};

template <class _Iter> 
struct is_output_iterator : public has_iterator_cat_of<_Iter, output_iterator_tag> {};

template <class _Iter> 
struct is_forward_iterator : public has_iterator_cat_of<_Iter, forward_iterator_tag> {};

template <class _Iter> 
struct is_bidirectional_iterator : public has_iterator_cat_of<_Iter, bidirectional_iterator_tag> {};

template <class _Iter> 
struct is_random_access_iterator : public has_iterator_cat_of<_Iter, random_access_iterator_tag> {};

template <class _Iter> 
struct is_iterator : public m_bool_constant<is_input_iterator<_Iter>::value || is_output_iterator<_Iter>::value> {};

//  萃取迭代器 category
template <class _Iter>
typename iterator_traits<_Iter>::iterator_category
iterator_category(const _Iter&)
{
    typedef typename iterator_traits<_Iter>::iterator_category Category;
    return Category();
}

//  萃取迭代器 distance_type
template <class _Iter>
typename iterator_traits<_Iter>::difference_type*
distance_type(const _Iter&)
{
    return static_cast<typename iterator_traits<_Iter>::difference_type *>(0);
}
//  萃取迭代器 value_type
template <class _Iter>
typename iterator_traits<_Iter>::value_type*
value_type(const _Iter&)
{
    return static_cast<typename iterator_traits<_Iter>::value_type *>(0);
}

//  计算迭代器之间的距离
template <class _InputIter>
typename iterator_traits<_InputIter>::difference_type
distance_dispatch(_InputIter _first, _InputIter _last, input_iterator_tag)
{
    typename iterator_traits<_InputIter>::difference_type n = 0;
    while(_first != _last)
    {
        ++_first;
        ++n;
    }
    return n;
}
template <class _RandomIter>
typename iterator_traits<_RandomIter>::difference_type
distance_dispatch(_RandomIter _first, _RandomIter _last, random_access_iterator_tag)
{
    return _last - _first;
}
template <class _InputIter>
typename iterator_traits<_InputIter>::difference_type
distance(_InputIter _first, _InputIter _last)
{
    return distance_dispatch(_first, _last, iterator_category(_first));
}

//  advance
template<class _InputIter, class _Distance> 
void advance_dispatch(_InputIter& i, _Distance n, input_iterator_tag)
{
    while(n--)
        ++i;
}template<class _BidirectionalIter, class _Distance> 
void advance_dispatch(_BidirectionalIter& i, _Distance n, bidirectional_iterator_tag)
{
    if(n >= 0)
        while(n--)  ++i;
    else
        while(n++)  --i;
}
template<class _RandomIter, class _Distance> 
void advance_dispatch(_RandomIter& i, _Distance n, random_access_iterator_tag)
{
    i += n;
}
template<class _InputIter, class _Distance> 
void advance(_InputIter& i, _Distance n)
{
    return advance_dispatch(i, n, iterator_category(i));
}

//-----------------------------------------------------------------------------------------------------------------------------
//---------------------------------------------------- reverse_iterator -------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------------------------
template<class _Iter> 
class reverse_iterator
{
private:
    _Iter current;

public:
    typedef typename iterator_traits<_Iter>::iterator_category   iterator_category;
    typedef typename iterator_traits<_Iter>::value_type         value_type;
    typedef typename iterator_traits<_Iter>::difference_type    difference_type;
    typedef typename iterator_traits<_Iter>::pointer            pointer;
    typedef typename iterator_traits<_Iter>::reference          reference;

    typedef _Iter                                               iterator_type;
    typedef reverse_iterator<_Iter>                             self;

public:
    reverse_iterator() {}
    explicit reverse_iterator(iterator_type i) : current (i) {}
    reverse_iterator(const self& rhs) :current(rhs.current) {}

public: 
    iterator_type base() const
    {
        return current;
    }
    reference operator*() const 
    {
        auto tmp = current;
        return *--tmp;
    }
    pointer operator->() const 
    {
        return &(operator*());
    }
    self& operator++()
    {
        --current;
        return *this;
    }
    self operator++(int)
    {
        self tmp = *this;
        --current;
        return tmp;
    }
    self& operator--()
    {
        ++current;
        return this;
    }
    self operator--(int)
    {
        self tmp = *this;
        ++current;
        return tmp;
    }
    self& operator+=(difference_type n)
    {
        current -= n;
        return *this;
    }
    self operator+(difference_type n)
    {
        return self(current - n);
    }
    self& operator-=(difference_type n)
    {
        current += n;
        return *this;
    }
    self operator-(difference_type n)
    {
        return self(current + n);
    }
    reference operator[](difference_type n) const 
    {
        return *(*this + n);
    }
};

//  重载 操作符
/**
 * @brief 
 * @c 反向迭代器相减，(lhs-rhs)=-(lhs.base-rhs.base)=rhs.base-lhs.base
 * @tparam _Iter 
 * @param lhs 
 * @param rhs 
 * @return reverse_iterator<_Iter>::difference_type 
 */
template <class _Iter>
typename reverse_iterator<_Iter>::difference_type
operator-(const reverse_iterator<_Iter>& lhs,
          const reverse_iterator<_Iter>& rhs)
{
    return rhs.base() - lhs.base();
}
template <class _Iter>
bool
operator==(const reverse_iterator<_Iter>& lhs,
           const reverse_iterator<_Iter>& rhs)
{
    return rhs.base() == lhs.base();
}
template <class _Iter>
bool
operator<(const reverse_iterator<_Iter>& lhs,
          const reverse_iterator<_Iter>& rhs)
{
    return rhs.base() < lhs.base();
}
template <class _Iter>
bool
operator!=(const reverse_iterator<_Iter>& lhs,
           const reverse_iterator<_Iter>& rhs)
{
    return rhs.base() != lhs.base();
}
template <class _Iter>
bool
operator>(const reverse_iterator<_Iter>& lhs,
           const reverse_iterator<_Iter>& rhs)
{
    return rhs.base() > lhs.base();
}
template <class _Iter>
bool
operator<=(const reverse_iterator<_Iter>& lhs,
           const reverse_iterator<_Iter>& rhs)
{
    return !(lhs < rhs);
}
} // namespace mystl



#endif /* _M_ITERATOR_HPP_ */
