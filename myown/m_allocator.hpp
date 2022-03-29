#ifndef _M_ALLOCATOR_HPP_
#define _M_ALLOCATOR_HPP_
//  finished
#include "m_util.hpp"
#include "m_construct.hpp"

namespace mystl
{
    
template<class _Tp> 
class allocator
{
public:
    typedef _Tp             value_type;
    typedef _Tp*            pointer;
    typedef const _Tp*      const_pointer;
    typedef _Tp&            reference;
    typedef _Tp&&           rvalue_reference;
    typedef const _Tp&      const_reference;
    typedef size_t          size_type;
    typedef ptrdiff_t       difference_type;

public:
    static pointer  allocate();
    static pointer  allocate(size_type _size);

    static void     deallocate(pointer _p);
    static void     deallocate(pointer _p, size_type);

    static void     construct(pointer _p);
    static void     construct(pointer _p, const_reference _value);
    static void     construct(pointer _p, rvalue_reference _value);
template <class... _Args>
    static void     construct(pointer _p, _Args &&..._args);

    static void     destroy(pointer _p);
    static void     destroy(pointer _first, pointer _last);
};
template<class _Tp>
    typename allocator<_Tp>::pointer
    allocator<_Tp>::allocate()
    {
        return static_cast<pointer>(::operator new(sizeof(_Tp)));
    }
template<class _Tp>
    typename allocator<_Tp>::pointer
    allocator<_Tp>::allocate(size_type _size)
    {
        return _size == 0 ? nullptr : static_cast<pointer>(::operator new(_size * sizeof(_Tp)));
    }
template<class _Tp>
    void
    allocator<_Tp>::deallocate(pointer _p)
    {
        if(_p) 
        {
            ::operator delete(_p);
        }  
    }
template<class _Tp>
    void
    allocator<_Tp>::deallocate(pointer _p, size_type)
    {
        if(_p)
        {
            ::operator delete(_p);
        }
    }
template<class _Tp>
    void
    allocator<_Tp>::construct(pointer _p)
    {
        mystl::construct(_p);
    }
template<class _Tp>
    void
    allocator<_Tp>::construct(pointer _p, const_reference _value)
    {
        mystl::construct(_p, _value);
    }
template<class _Tp>
    void
    allocator<_Tp>::construct(pointer _p, rvalue_reference _value)
    {
        mystl::construct(_p, mystl::move(_value));
    }
template <class _Tp>
template <class... _Args>
    void
    allocator<_Tp>::construct(pointer _p, _Args &&..._args)
    {
        mystl::construct(_p, mystl::forward<_Args>(_args)...);
    }
template<class _Tp>
    void
    allocator<_Tp>::destroy(pointer _p)
    {
        mystl::destroy(_p);
    }
template<class _Tp>
    void
    allocator<_Tp>::destroy(pointer _first, pointer _last)
    {
        mystl::destroy(_first, _last);
    }
} // namespace mystl

#endif /* _M_ALLOCATOR_HPP_ */
