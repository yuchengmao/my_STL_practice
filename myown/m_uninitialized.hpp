#ifndef _M_UNINITIALIZED_HPP_
#define _M_UNINITIALIZED_HPP_
//  finished
#include "algobase.h"
#include "m_construct.hpp"
#include "m_iterator.hpp"
#include "m_type_traits.hpp"
#include "m_util.hpp"

namespace mystl
{
//-----------------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------- copy ---------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------------------------
    //  true_type  则调用 copy
template<class _InputIter, class _ForwardIter> 
    _ForwardIter
    _unchecked_uninit_copy(_InputIter _first, _InputIter _last, _ForwardIter _result, std::true_type)
    {
        return mystl::copy(_first, _last, _result);
    }
    //  false_type 则原地构造
template<class _InputIter, class _ForwardIter> 
    _ForwardIter
    _unchecked_uninit_copy(_InputIter _first, _InputIter _last, _ForwardIter _result, std::false_type)
    {
        _ForwardIter cur = _result;
        try
        {
            for (; _first != _last; ++_first, ++cur)
            {
                mystl::construct(cur, *_first);
            }
        }
        catch(...)
        {
            for (; _result != cur; ++_result)
            {
                mystl::destroy(_result);
            }
        }
        return cur;
    }
template<class _InputIter, class _ForwardIter> 
    _ForwardIter
    uninitialized_copy(_InputIter _first, _InputIter _last, _ForwardIter _result)
    {
        return mystl::_unchecked_uninit_copy(_first, _last, _result,
                                            std::is_trivially_copy_assignable<decltype(*_first)>());
    }
//-----------------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------- copy_n -------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------------------------
    //  true_type  则调用 copy
template<class _InputIter, class _Size, class _ForwardIter> 
    _ForwardIter
    _unchecked_uninit_copy_n(_InputIter _first, _Size _size, _ForwardIter _result, std::true_type)
    {
        return mystl::copy_n(_first, _size, _result).second;
    }
    //  false_type 则原地构造
template<class _InputIter, class _Size, class _ForwardIter> 
    _ForwardIter
    _unchecked_uninit_copy_n(_InputIter _first, _Size _size, _ForwardIter _result, std::false_type)
    {
        _ForwardIter cur = _result;
        try
        {
            for (; _size > 0; ++_first, ++cur, --_size)
            {
                mystl::construct(cur, *_first);
            }
        }
        catch(...)
        {
            for (; _result != cur; ++_result)
            {
                mystl::destroy(_result);
            }
        }
        return cur;
    }
template<class _InputIter, class _Size, class _ForwardIter> 
    _ForwardIter
    uninitialized_copy_n(_InputIter _first, _Size _size, _ForwardIter _result)
    {
        return mystl::_unchecked_uninit_copy_n(_first, _size, _result,
                                              std::is_trivially_copy_assignable<decltype(*_first)>());
    }

//-----------------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------- fill ---------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------------------------
template<class _ForwardIter, class _Tp> 
    void
    _unchecked_uninit_fill(_ForwardIter _first, _ForwardIter _last, const _Tp &_value, std::true_type)
    {
        mystl::fill(_first, _last, _value);
    }
template<class _ForwardIter, class _Tp> 
    void
    _unchecked_uninit_fill(_ForwardIter _first, _ForwardIter _last, const _Tp &_value, std::false_type)
    {
        _ForwardIter cur = _first;
        try
        {
            for (; cur != _last; ++cur)
            {
                mystl::construct(cur, _value);
            }
        }
        catch(...)
        {
            for (; _first != cur; ++_first)
            {
                mystl::destroy(_first);
            }
        }
    }
template<class _ForwardIter, class _Tp> 
    void
    uninitialized_fill(_ForwardIter _first, _ForwardIter _last, const _Tp &_value)
    {
        mystl::_unchecked_uninit_fill(_first, _last, _value,
                                     std::is_trivially_copy_assignable<decltype(*_first)>());
    }
//-----------------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------- fill_n -------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------------------------
template<class _ForwardIter, class _Size, class _Tp> 
    _ForwardIter
    _unchecked_uninit_fill_n(_ForwardIter _first, _Size _size, const _Tp &_value, std::true_type)
    {
        return mystl::fill_n(_first, _size, _value);
    }
template<class _ForwardIter, class _Size, class _Tp> 
    _ForwardIter
    _unchecked_uninit_fill_n(_ForwardIter _first, _Size _size,const _Tp &_value, std::false_type)
    {
        _ForwardIter cur = _first;
        try
        {
            for (; _size > 0; --_size, ++cur)
            {
                mystl::construct(cur, _value);
            }
        }
        catch(...)
        {
            for (; _first != cur; ++_first)
            {
                mystl::destroy(_first);
            }
        }
        return cur;
    }
template<class _ForwardIter, class _Size, class _Tp> 
    _ForwardIter
    uninitialized_fill_n(_ForwardIter _first, _Size _size, const _Tp &_value)
    {
        return mystl::_unchecked_uninit_fill_n(_first, _size, _value,
                                            std::is_trivially_copy_assignable<decltype(*_first)>());
    }

//-----------------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------- move ---------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------------------------
template<class _InputIter, class _ForwardIter> 
    _ForwardIter
    _unchecked_uninit_move(_InputIter _first, _InputIter _last, _ForwardIter _result, std::true_type)
    {
        return mystl::move(_first, _last, _result);
    }
template<class _InputIter, class _ForwardIter> 
    _ForwardIter
    _unchecked_uninit_move(_InputIter _first, _InputIter _last, _ForwardIter _result, std::false_type)
    {
        _ForwardIter cur = _result;
        try
        {
            for (; _first != _last; ++_first, ++cur)
            {
                mystl::construct(cur, mystl::move(*_first));
            }
        }
        catch(...)
        {
            for (; _result != cur; ++_result)
            {
                mystl::destroy(_result);
            }
        }
        return cur;
    }
template<class _InputIter, class _ForwardIter> 
    _ForwardIter
    uninitialized_move(_InputIter _first, _InputIter _last, _ForwardIter _result)
    {
        return mystl::_unchecked_uninit_move(_first, _last, _result,
                                            std::is_trivially_copy_assignable<decltype(*_first)>());
    }
} // namespace mystl


#endif /* _M_UNINITIALIZED_HPP_ */
