#ifndef _M_CONSTRUCT_HPP_
#define _M_CONSTRUCT_HPP_
//  finished
#include "m_type_traits.hpp"
#include "m_iterator.hpp"
#include "m_util.hpp"

namespace mystl
{

//  construct

template<class _Tp> 
    void 
    construct(_Tp * _ptr)
    {   //  emplacement new，在 _ptr 处直接构造元素
        ::new ((void *)_ptr) _Tp();
    }
template<class _Tp, class _Tv> 
    void 
    construct(_Tp * _ptr, const _Tv &_value)
    {   //  emplacement new，在 _ptr 处直接构造元素
        ::new ((void *)_ptr) _Tv(_value);
    }
template <class _Tp, class... _Args>
    void
    construct(_Tp *_ptr, _Args &&..._args)
    {   //  emplacement new，在 _ptr 处直接构造元素
        ::new ((void *)_ptr) _Tp(mystl::forward<_Args>(_args)...);
    }

//  destroy 辅助函数
template<class _Tp> 
    void 
    _destroy_one(_Tp *, std::true_type) {}     //  true_type 说明这个对象不需要手动释放
template<class _Tp> 
    void 
    _destroy_one(_Tp * _ptr, std::false_type)       //  false_type 说明这个对象需要手动释放
    { 
        if(_ptr)
        {
            _ptr->~_Tp();
        }
    }
template<class _ForwardIter> 
    void 
    _destroy_cat(_ForwardIter, _ForwardIter, std::true_type) {}
template<class _ForwardIter> 
    void 
    _destroy_cat(_ForwardIter _first, _ForwardIter _last, std::false_type)
    {
        for (; _first != _last; ++_first)
        {
            destroy(&*_first);                      //  取迭代器当前指向的 元素 的 地址
        }
    }
//  destroy
template<class _Tp> 
    void 
    destroy(_Tp * _ptr)
    {
        _destroy_one(_ptr, std::is_trivially_destructible<_Tp>());
    }
template<class _ForwardIter> 
    void 
    destroy(_ForwardIter _first, _ForwardIter _last)
    {
        _destroy_cat(_first, _last, std::is_trivially_destructible<decltype(*_first)>());
        //_destroy_cat(_first, _last, std::is_trivially_destructible<typename mystl::iterator_traits<_ForwardIter>::value_type>());
    }



} // namespace mystl



#endif /* _M_CONSTRUCT_HPP_ */
