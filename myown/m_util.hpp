#ifndef _M_UTIL_HPP_
#define _M_UTIL_HPP_
//  finished
#include <cstddef>
//#include "type_traits.h"
#include "m_type_traits.hpp"

namespace mystl
{

//  move
template<class _Tp> 
    typename std::remove_reference<_Tp>::type&& 
    move(_Tp && _arg)  noexcept
    {
        return static_cast<typename std::remove_reference<_Tp>::type &&>(_arg);
    }
//  forward
template<class _Tl> 
    _Tl&& 
    forward(typename std::remove_reference<_Tl>::type &_arg) noexcept
    {
        return static_cast<_Tl &&>(_arg);
    }
template<class _Tr> 
    _Tr&& 
    forward(typename std::remove_reference<_Tr>::type &&_arg) noexcept
    {
        static_assert(!std::is_lvalue_reference<_Tr>::value, "bad forward!");
        return static_cast<_Tr &&>(_arg);
    }

//  swap
template<class _Tp> 
    void 
    swap(_Tp &_lhs, _Tp &_rhs)
    {
        //_VSTD::swap(_lhs, _rhs);
        _Tp tmp(mystl::move(_lhs));
        _lhs = mystl::move(_rhs);
        _rhs = mystl::move(tmp);
    }
template<class _ForwardIter1, class _ForwardIter2> 
    _ForwardIter2
    swap_range(_ForwardIter1 _first1, _ForwardIter1 _last1, _ForwardIter2 _first2)
    {
        // return _VSTD::swap_ranges(_first1, _last1, _first2);
        for (; _first1 != _last1; ++_first1, (void)++_first2)
            mystl::swap(_first1, _first2);
        return _first2;
    }
template<class _Tp, size_t _Np>
    void
    swap(_Tp (&_a)[_Np], _Tp(&_b))
    {
        //_VSTD::swap_ranges(_a, _a + _Np, _b);
        mystl::swap_range(_a, _a + _Np, _b);
    }

//-----------------------------------------------------------------------------------------------------------------------------
//---------------------------------------------------- pair结构体模�? -----------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------------------------

template<class _Tp1, class _Tp2>
struct pair
{
    typedef _Tp1 first_type;
    typedef _Tp2 second_type;

    first_type first;
    second_type second;
/**
 * @brief 
 * @c 这里第三个参数的意思是：_This1和_This2类型是否都是默认可构造类型，是则返回true�?
 * @c 否则返回false，则后面的type将不存在，出现错�?
 * @tparam _This1 
 * @tparam _This2 
 * @tparam std::enable_if<
 * std::is_default_constructible<_This1>::value &&
 * std::is_default_constructible<_This2>::value, void>::type 
 */
//  默认构�?
    template<class  _This1 = _Tp1, class _This2 = _Tp2,
            typename = typename std::enable_if< 
            std::is_default_constructible<_This1>::value &&
            std::is_default_constructible<_This2>::value, void>::type>
            constexpr pair() : first(), second() 
            {}
/**
 * @brief 
 * @c 可复制构造，可以转化
 * @tparam _This1 
 * @tparam _This2 
 * @tparam std::enable_if<
 * std::is_copy_constructible<_This1>::value &&
 * std::is_copy_constructible<_This2>::value &&
 * std::is_convertible<const _This1&, _Tp1>::value &&
 * std::is_convertible<const _This2&, _Tp2>::value, int>::type 
 */
//  常量复制构�?
    template<class  _This1 = _Tp1, class _This2 = _Tp2,
            typename std::enable_if< 
            std::is_copy_constructible<_This1>::value &&
            std::is_copy_constructible<_This2>::value &&
            std::is_convertible<const _This1&, _Tp1>::value &&
            std::is_convertible<const _This2&, _Tp2>::value, int>::type = 0>
            constexpr pair(const _Tp1 &_a, const _Tp2 &_b) : first(_a), second(_b) 
            {}
/**
 * @brief 
 * @c 可复制构造，至少一个不能转�?
 * @tparam _This1 
 * @tparam _This2 
 * @tparam std::enable_if<
 * std::is_copy_constructible<_This1>::value &&
 * std::is_copy_constructible<_This2>::value &&
 * (!std::is_convertible<const _This1&, _Tp1>::value ||
 * !std::is_convertible<const _This2&, _Tp2>::value), int>::type 
 */
    template<class  _This1 = _Tp1, class _This2 = _Tp2,
            typename std::enable_if< 
            std::is_copy_constructible<_This1>::value &&
            std::is_copy_constructible<_This2>::value &&
            (!std::is_convertible<const _This1&, _Tp1>::value ||
             !std::is_convertible<const _This2&, _Tp2>::value), int>::type = 0>
            explicit constexpr pair(const _Tp1 &_a, const _Tp2 &_b) : first(_a), second(_b) 
            {}
    
    pair(const pair &rhs) = default;
    pair(pair &&rhs) = default;
//  右值构�?
    template<class  _Other1, class _Other2,
            typename std::enable_if< 
            std::is_constructible<_Tp1, _Other1>::value &&
            std::is_constructible<_Tp2, _Other2>::value &&
            std::is_convertible<_Other1&&, _Tp1>::value &&
            std::is_convertible<_Other2&&, _Tp2>::value, int>::type = 0>
            constexpr pair(_Other1 &&_a, _Other2 &&_b) 
            : first(mystl::forward<_Other1>(_a)), second(mystl::forward<_Other2>(_b)) 
            {}
    template<class  _Other1, class _Other2,
            typename std::enable_if< 
            std::is_constructible<_Tp1, _Other1>::value &&
            std::is_constructible<_Tp2, _Other2>::value &&
            (!std::is_convertible<_Other1, _Tp1>::value ||
             !std::is_convertible<_Other2, _Tp2>::value), int>::type = 0>
            explicit constexpr pair(_Other1 &&_a, _Other2 &&_b) 
            : first(mystl::forward<_Other1>(_a)), second(mystl::forward<_Other2>(_b)) 
            {}
//  常量 pair 构�?
    template<class  _Other1, class _Other2,
            typename std::enable_if< 
            std::is_constructible<_Tp1, const _Other1&>::value &&
            std::is_constructible<_Tp2, const _Other2&>::value &&
            std::is_convertible<const _Other1&, _Tp1>::value &&
            std::is_convertible<const _Other2&, _Tp2>::value, int>::type = 0>
            constexpr pair(const pair<_Other1, _Other2> &_other) 
            : first(_other.first), second(_other.second) 
            {}
    template<class  _Other1, class _Other2,
            typename std::enable_if< 
            std::is_constructible<_Tp1, const _Other1&>::value &&
            std::is_constructible<_Tp2, const _Other2&>::value &&
            (!std::is_convertible<const _Other1&, _Tp1>::value ||
             !std::is_convertible<const _Other2&, _Tp2>::value), int>::type = 0>
            explicit constexpr pair(const pair<_Other1, _Other2> &_other) 
            : first(_other.first), second(_other.second) 
            {}
//  右�? pair 构�?
    template<class  _Other1, class _Other2,
            typename std::enable_if< 
            std::is_constructible<_Tp1, _Other1>::value &&
            std::is_constructible<_Tp2, _Other2>::value &&
            std::is_convertible<_Other1, _Tp1>::value &&
            std::is_convertible<_Other2, _Tp2>::value, int>::type = 0>
            constexpr pair(pair<_Other1, _Other2> &&_other) 
            : first(mystl::forward<_Other1>(_other.first)), 
              second(mystl::forward<_Other2>(_other.second))
            {}
    template<class  _Other1, class _Other2,
            typename std::enable_if< 
            std::is_constructible<_Tp1, _Other1>::value &&
            std::is_constructible<_Tp2, _Other2>::value &&
            (!std::is_convertible<_Other1, _Tp1>::value ||
             !std::is_convertible<_Other2, _Tp2>::value), int>::type = 0>
            explicit constexpr pair(pair<_Other1, _Other2> &&_other) 
            : first(mystl::forward<_Other1>(_other.first)), 
              second(mystl::forward<_Other2>(_other.second))
            {}

//  等号重载
    pair& 
    operator=(const pair& rhs)
    {
        if(this != &rhs)
        {
            first = rhs.first;
            second = rhs.second;
        }
        return *this;
    }
    pair& 
    operator=(pair &&rhs)
    {
        if(this != &rhs)
        {
            first = mystl::move(rhs.first);
            second = mystl::move(rhs.second);
        }
        return *this;
    }
    template <class _Other1, class _Other2> 
    pair& 
    operator=(const pair<_Other1, _Other2>& _other)
    {
        first = _other.first;
        second = _other.second;
        return *this;
    }
    template <class _Other1, class _Other2> 
    pair& 
    operator=(pair<_Other1, _Other2>&& _other)
    {
        first = mystl::forward<_Other1>(_other.first);
        second = mystl::forward<_Other2>(_other.second);
        return *this;
    }
    ~pair() = default;

//  重载 swap
    void 
    swap(pair& _other)
    {
        if(this != &_other)
        {
            mystl::swap(this->first, _other.first);
            mystl::swap(this->second, _other.second);
        }
    }
};
//  重载比较操作�?
template <class _Tp1, class _Tp2> 
    bool 
    operator==(const pair<_Tp1, _Tp2> &lhs, const pair<_Tp1, _Tp2> &rhs)
    {
        return lhs.first == rhs.first && lhs.second == rhs.second;
    }

template <class _Tp1, class _Tp2> 
    bool 
    operator!=(const pair<_Tp1, _Tp2> &lhs, const pair<_Tp1, _Tp2> &rhs)
    {
        return !(rhs == lhs);
    }

template <class _Tp1, class _Tp2> 
    bool 
    operator<(const pair<_Tp1, _Tp2> &lhs, const pair<_Tp1, _Tp2> &rhs)
    {
        return lhs.first < rhs.first || (lhs.first == rhs.first && lhs.second < rhs.second);
    }

template <class _Tp1, class _Tp2> 
    bool
    operator>(const pair<_Tp1, _Tp2> &lhs, const pair<_Tp1, _Tp2> &rhs)
    {
        return rhs < lhs;
    }

template <class _Tp1, class _Tp2> 
    bool 
    operator<=(const pair<_Tp1, _Tp2> &lhs, const pair<_Tp1, _Tp2> &rhs)
    {
        return !(lhs > rhs);
    }

template <class _Tp1, class _Tp2> 
    bool 
    operator>=(const pair<_Tp1, _Tp2> &lhs, const pair<_Tp1, _Tp2> &rhs)
    {
        return !(lhs < rhs);
    }


} // namespace mystl


#endif /* _M_UTIL_HPP_ */
