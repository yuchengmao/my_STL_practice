#ifndef _M_MEMORY_HPP_
#define _M_MEMORY_HPP_
//  finished
#include <cstddef>
#include <cstdlib>
#include <climits>

#include "algobase.h"
#include "m_allocator.hpp"
#include "m_construct.hpp"
#include "m_uninitialized.hpp"

namespace mystl
{
    //  获取对象地址
template <class _Tp>
    constexpr _Tp *
    address_of(_Tp &_value) noexcept
    {
        return &_value;
    }
template <class _Tp>
    pair<_Tp*, ptrdiff_t>
    get_buffer_helper(ptrdiff_t len, _Tp*)
    {
        if(len > static_cast<ptrdiff_t>(INT_MAX / sizeof(_Tp)))
            len = INT_MAX / sizeof(_Tp);
        while( len > 0)
        {
            _Tp *tmp = static_cast<_Tp *>(malloc(static_cast<size_t>(len) * sizeof(_Tp)));
            if(tmp)
                return pair<_Tp *, ptrdiff_t>(tmp, len);
            len /= 2;
        }
        return pair<_Tp *, ptrdiff_t>(nullptr, 0);
    }

template<class _Tp> 
    pair<_Tp*, ptrdiff_t>
    get_temporary_buffer(ptrdiff_t _len)
    {
        return get_buffer_helper(_len, static_cast<_Tp *>(0));
    }
template<class _Tp> 
    pair<_Tp*, ptrdiff_t>
    get_temporary_buffer(ptrdiff_t _len, _Tp*)
    {
        return get_buffer_helper(_len, static_cast<_Tp *>(0));
    }
template<class _Tp> 
    void 
    release_temporary_buffer(_Tp* _ptr)
    {
        free(_ptr);
    }

template<class _ForwardIter, class _Tp> 
class temporary_buffer
{
private:
    ptrdiff_t   original_len_;
    ptrdiff_t   len_;
    _Tp         *buffer_;

public:
    temporary_buffer(_ForwardIter _first, _ForwardIter _last)
    {
        try
        {
            len_ = mystl::distance(_first, _last);
            allocate_buffer();
            if(len_ > 0)
            {
                initialize_buffer(*_first, std::is_trivially_default_constructible<_Tp>());
            }
        }
        catch(...)
        {
            free(buffer_);
            buffer_ = nullptr;
            len_ = 0;
        }
        }
    ~temporary_buffer();

public:
    ptrdiff_t size() const noexcept { return len_; }
    ptrdiff_t request_size() const noexcept { return original_len_; }
    _Tp *begin() noexcept { return buffer_; }
    _Tp end() noexcept { return buffer_ + len_; }

private:
    void allocate_buffer()
    {
        original_len_ = len_;
        if(len_ > static_cast<ptrdiff_t>(INT_MAX/sizeof(_Tp)))
            len_ = INT_MAX / sizeof(_Tp);
        while(len_ > 0)
        {
            buffer_ = static_cast<_Tp *>(malloc(len_ * sizeof(_Tp)));
            if(buffer_)
                break;
            len_ /= 2;
        }
    }
    void initialize_buffer(const _Tp&, std::true_type) {}
    void initialize_buffer(const _Tp &_value, std::false_type)
    {
        mystl::uninitialized_fill_n(buffer_, len_, _value);
    }
private:
    temporary_buffer(const temporary_buffer &);
    void operator=(const temporary_buffer &);
};

template<class _Tp> 
class auto_ptr
{
public:
    typedef _Tp elem_type;

private:
    _Tp *m_ptr;

public:
    explicit auto_ptr(_Tp* _p = nullptr) : m_ptr(_p) {}
    auto_ptr(auto_ptr& rhs) : m_ptr() {}
    template<class _U>
    auto_ptr(auto_ptr<_U>& rhs) : m_ptr() {}

    auto_ptr& operator=(auto_ptr& rhs)
    {
        if(this != &rhs)
        {
            delete m_ptr;
            m_ptr = rhs.release();
        }
        return *this;
    }

    template<class _U> 
    auto_ptr& operator=(auto_ptr<_U>& rhs)
    {
        if(this->get() != rhs.get())
        {
            delete m_ptr;
            m_ptr = rhs.release();
        }
    }
    ~auto_ptr() { delete m_ptr; }

public:
    _Tp &operator*() const { return *m_ptr; }
    _Tp *operator->() const { return m_ptr; }
    _Tp *get() const { return m_ptr; }
    _Tp *release()
    {
        _Tp *tmp = m_ptr;
        m_ptr = nullptr;
        return tmp;
    }
    void reset(_Tp* _p = nullptr)
    {
        if(m_ptr != _p)
        {
                delete m_ptr;
                m_ptr = _p;
        }
    }
};


} // namespace mystl

#endif /* _M_MEMORY_HPP_ */
