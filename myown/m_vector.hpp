#ifndef _M_VECTOR_HPP_
#define _M_VECTOR_HPP_
//  finished
#include <initializer_list>
#include "m_iterator.hpp"
#include "m_memory.hpp"
#include "m_util.hpp"
#include "m_exceptdef.hpp"
#include "algo.h"
#include <vector>

/**
 * @brief 
 * @c 命名规则：
 * @c 模板参数：_Tp（下划线开头，后面大写开头）
 * @c 函数形参：_val（下划线开头，后面小写）
 * @c 类成员：val（小写）
 * @c 内置函数：_fun（下划线开头，后面小写）
 */
namespace mystl{

#define  DEFAULT_CAPACITY_VECTOR    16                                               //  默认 capacity 大小

template<class _Tp>
class vector
{

public:
    // 类型定义
    typedef mystl::allocator<_Tp>                       allocator_type;              //  分配器类型

    typedef typename allocator_type::value_type         value_type;                  //  数值类型
    typedef typename allocator_type::pointer            pointer;                     //  指针类型
    typedef typename allocator_type::const_pointer      const_pointer;               //  常指针类型
    typedef typename allocator_type::reference          reference;                   //  引用类型
    typedef typename allocator_type::const_reference    const_reference;             //  常引用类型
    typedef typename allocator_type::size_type          size_type;                   //  容量类型
    typedef typename allocator_type::difference_type    difference_type;             //  差值类型

    typedef pointer                                     iterator;                    //  迭代器类型
    typedef const_pointer                               const_iterator;              //  常量迭代器类型
    typedef mystl::reverse_iterator<iterator>           reverse_iterator;            //  反向迭代器类型
    typedef mystl::reverse_iterator<const_iterator>     const_reverse_iterator;      //  常量反向迭代器

    allocator_type get_allocator_type() { return allocator_type(); }                 //  返回 allocator_type 默认构造

private: 
// 定义vector中的三个操作指针
    iterator begin_;                                                                 //  指向容器首地址
    iterator end_;                                                                   //  指向最后一个元素的后一个位置
    iterator capacity_;                                                              //  指向（begin_ + 容器容量）位置

// 构造，析构函数
public:  
// 无参构造函数
    vector()                   noexcept                 { _init_with_nothing();                           }  
// 带参构造函数（带大小）
    explicit vector(size_type _size)                    { _init_with_size(_size);                         }  
// 带参构造函数（带大小和初值）
    vector(size_type _size, const value_type &_value)   { _init_with_size_and_value(_size, _value);       }  
// 迭代器构造
template<class _Iter, typename std::enable_if<mystl::is_input_iterator<_Iter>::value, int>::type = 0>
    vector(_Iter _begin, _Iter _end)                    { _init_with_iter(_begin, _end);                  } 
// 拷贝构造
    vector(vector &_rhs)                                { _init_with_vector(_rhs);                        }
    //template <class _Tstd>
    // vector(std::vector<_Tstd> &_rhs)                    { 
    //                                                       begin_ = (iterator)(_rhs.begin());
    //                                                       end_ = (iterator)(_rhs.end());
    //                                                       capacity_ = begin() + (size_type)(_rhs.capacity());
    //                                                                                                       }
// 右值拷贝
    vector(vector &&_rhs) noexcept// : begin_(_rhs.begin_), end_(_rhs.end_), capacity_(_rhs.capacity_)
                                                        { _init_with_temporary_object(mystl::move(_rhs));              }
// 初始化列表构造
    vector(std::initializer_list<value_type> _ilist)    { _init_with_initializer_list(_ilist);            }  
// 析构函数
    ~vector()                                           { _destroy_and_recover(begin_, end_, capacity());
                                                          begin_ = end_ = capacity_ = nullptr;            }
// 等号重载
    vector &operator=(const vector &_rhs);
    vector &operator=(vector &&_rhs) noexcept;
    vector &operator=(std::initializer_list<value_type> _ilist)
    {
        vector tmp(_ilist.begin(), _ilist.end());
        swap(tmp);
        return *this;
    }

private:  
// 辅助函数，将具体实现 声明 为 私有，只暴露接口函数给外部
//  构造函数辅助函数
    void _init_with_nothing () noexcept;                                            // 无参构造函数
    void _init_with_size(size_type _size);                                          // 带参构造函数
    void _init_with_size_and_cap(size_type _size, size_type _cap);                  // 带参构造函数
    void _init_with_size_and_value(size_type _size, const value_type &_value);      // 带参构造函数（size 和 指定 value）
template<class _Iter>
    void _init_with_iter(_Iter _begin, _Iter _end);                                 // 迭代器构造
    void _init_with_vector(vector &_rhs);                                           // 拷贝构造
    void _init_with_temporary_object(vector &&_rhs)     noexcept;                    // 临时对象拷贝构造
    void _init_with_initializer_list(std::initializer_list<value_type> _ilist);            // initiaizer_list为参数的构造函数
    void _destroy_and_recover(iterator _first, iterator _last, size_type n);        // 析构函数

// 迭代器相关操作
public:  
    // 正向迭代器
    iterator                    begin()             { return _begin();   }
    const_iterator              begin()     const   { return _begin();   }
    iterator                    end()               { return _end();     }
    const_iterator              end()       const   { return _end();     }
    // 反向迭代器
    reverse_iterator            rbegin()            { return _rbegin();  }
    const_reverse_iterator      rbegin()    const   { return _rbegin();  }
    reverse_iterator            rend()              { return _rend();    }
    const_reverse_iterator      rend()      const   { return _rend();    }
    // 常量迭代器
    const_iterator              cbegin()    const   { return _cbegin();  }
    const_iterator              cend()      const   { return _cend();    }
    const_reverse_iterator      crbegin()   const   { return _crbegin(); }
    const_reverse_iterator      crend()     const   { return crend();    }
private:  
    // 正向迭代器
    iterator                    _begin();
    const_iterator              _begin()    const;
    iterator                    _end();
    const_iterator              _end()      const;
    // 反向迭代器
    reverse_iterator            _rbegin();
    const_reverse_iterator      _rbegin()   const;
    reverse_iterator            _rend();
    const_reverse_iterator      _rend()     const;
    // 常量迭代器
    const_iterator              _cbegin()   const;
    const_iterator              _cend()     const;
    const_reverse_iterator      _crbegin()  const;
    const_reverse_iterator      _crend()    const;

// 容量相关函数
public:  
    bool                empty()                         { return _empty();     }  
    size_type           size()                          { return _size();    }  
    size_type           max_size()                      { return _max_size();  }  
    size_type           capacity()                      { return _capacity();  }  
    void                reserve(size_type _new_size)    { _reserve(_new_size); }  
    void                shrink_to_fit()                 { _shrink_to_fit();    }  
private:  
// 容量相关函数
    bool                _empty();                                               // 判断 vector 是否为空
    size_type           _size();                                                // vector size大小
    size_type           _max_size();                                            // max_size()
    size_type           _capacity();                                            // vector 容量大小
    void                _reserve(size_type _new_size);                          // _new_size 大于 size() 则增大 size 为 _new_size
    void                _shrink_to_fit();                                       // 将 capacity 变为 size 大小

// 访问容器内元素
public:
    reference           operator[](size_type _index)            { return _at(_index);     }
    const_reference     operator[](size_type _index)    const   { return _at(_index);     }
    reference           at(size_type _index)                    { return (*this)[_index]; }
    const_reference     at(size_type _index)            const   { return (*this)[_index]; }
    reference           front()                                 { return _front();        }
    const_reference     front()                         const   { return _front();        }
    reference           back()                                  { return _back();         }
    const_reference     back()                          const   { return _back();         }
    pointer             data()                                  { return _data();         }
    const_pointer       data()                          const   { return _data();         }
private:
    reference           _at(size_type _index);
    const_reference     _at(size_type _index)           const;
    reference           _front();
    const_reference     _front()                        const;
    reference           _back();
    const_reference     _back()                         const;
    pointer             _data();
    const_pointer       _data()                         const;

// 修改容器相关操作
public:
// assign，用来重新分配容器 大小 容量 与 元素
    void                assign(size_type _size, const value_type &_value)                   { _assign(_size, _value);           }
// ！！这里没明白，模板参数第二项的意思
  template <class _Iter, typename std::enable_if<mystl::is_input_iterator<_Iter>::value, int>::type = 0>
    void                assign(_Iter _first, _Iter _last)                                   { _assign(_first, _last, 
                                                                                              iterator_category(_first));       }
    void                assign(std::initializer_list<value_type> _ilist)                    { _assign(_ilist);                  }
// emplace，用来在容器某个位置插入元素（直接构造，不调用拷贝构造）
  template <class... _Args>
    iterator            emplace(const_iterator _pos, _Args &&..._args)                      { return _emplace(_pos, _args...);  }
// emplace_back，用来在容器末尾插入元素（直接构造，不调用拷贝构造）
  template <class... _Args>
    void                emplace_back(_Args &&..._args)                                      { _emplace_back(_args...);          }
// push_back，在末尾插入元素
    void                push_back(const value_type &_value)                                 { _push_back(_value);               }
    void                push_back(value_type &&_value)                                      { _push_back(_value);               }
// pop_back，删除尾部元素
    void                pop_back()                                                          { _pop_back();                      }
// insert，在指定位置插入元素，调用拷贝构造
    iterator            insert(const_iterator _pos, const value_type &_value)               { return _insert(_pos, _value);     }
    iterator            insert(const_iterator _pos, value_type &&_value)                    { return _insert(_pos, _value);     }
    iterator            insert(const_iterator _pos, size_type _n, const value_type &_value) { return _insert(_pos, _n, _value); }
  template <class _Iter, typename std::enable_if<mystl::is_input_iterator<_Iter>::value, int>::type = 0>
    void                insert(const_iterator _pos, _Iter _first, _Iter _last)              { _insert(_pos, _first, _last);     }
// 删除指定位置元素
    iterator            erase(const_iterator _pos)                                          { return _erase(_pos);              }
    iterator            erase(const_iterator _first, const_iterator _last)                  { return _erase(_first, _last);     }
// 清空容器
    void                clear()                                                             { _clear();                         }
// 重新分配 size
    void                resize(size_type _new_size)                                         { _resize(_new_size);               }
    void                resize(size_type _new_size, const value_type &_value)               { _resize(_new_size, _value);       }
// 容器内元素反转
    void                reverse()                                                           { _reverse();                       }
// 交换函数
    void                swap(vector &_rhs) noexcept                                         { _swap(_rhs);                      }

private:
    void                _assign(size_type _size, const value_type &_value);                   // 重置容器大小为 _size，内容全是 _value
  template <class _Iter>
    void                _assign(_Iter _first, _Iter _last, forward_iterator_tag);             // 将 vector 变为 _first 到 _last 之间的内容
  template <class _Iter>
    void                _assign(_Iter _first, _Iter _last, input_iterator_tag);               // 重载
    void                _assign(std::initializer_list<value_type> _ilist);                   
  template <class... _Args>
    iterator            _emplace(const_iterator _pos, _Args &&..._args);                      // 指定位置插入
  template <class... _Args>
    void                _emplace_back(_Args &&..._args);                                      // 尾部插入
    void                _push_back(const value_type &_value);                                 // 尾插 const _value
    void                _push_back(value_type &&_value);                                      // 尾插 _value
    void                _pop_back();                                                          // 尾删
    iterator            _insert(const_iterator _pos, const value_type &_value);               // 指定位置插入 const _value
    iterator            _insert(const_iterator _pos, value_type &&value);                     // 指定位置插入 _value
    iterator            _insert(const_iterator _pos, size_type _n, const value_type &_value); // 指定位置插入 n 个 const _value
  template <class _Iter>
    void                _insert(const_iterator _pos, _Iter first, _Iter _last);               // 指定位置插入 _first 到 _last所有内容
    iterator            _erase(const_iterator _pos);                                          // 删除指定位置元素
    iterator            _erase(const_iterator _first, const_iterator _last);                  // 删除 _first 到 _last 所有元素
    void                _clear();                                                             // 清除所有元素
    void                _resize(size_type _new_size);                                         // 重新分配 size，减小则删除元素，增大则插入
    void                _resize(size_type _new_size, const value_type &_value);               // size 增大时 插入 new_size - size 个 value
    void                _reverse();
    void                _swap(vector &_rhs) noexcept;
};

//-----------------------------------------------------------------------------------------------------------------------------
//---------------------------------------------------- 构造与析构 ---------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------------------------
template<class _Tp>
    void // 默认构造
    vector<_Tp>::_init_with_nothing () noexcept
    {
        try
        {   //  allocate分配内存 底层调用 operator new
            begin_      =   allocator_type::allocate(static_cast<size_type>(DEFAULT_CAPACITY_VECTOR));
            end_        =   begin_;
            capacity_   =   begin_ + DEFAULT_CAPACITY_VECTOR;
        }
        catch(...)
        {
            begin_      =   nullptr;
            end_        =   nullptr;
            capacity_   =   nullptr;
        }
    }
template<class _Tp>
    void 
    vector<_Tp>::_init_with_size( size_type _size)
    { 
        // size_type cap = static_cast<size_type>(DEFAULT_CAPACITY_VECTOR);
        // while(cap < _size){
        //     cap *= 2;
        // }
        _init_with_size_and_cap(_size, _size);
    }
template<class _Tp>
    void 
    vector<_Tp>::_init_with_size_and_cap(size_type _size, size_type _cap)
    {
        try
        {
            begin_      =   allocator_type::allocate(_cap);
            end_        =   begin_ + _size;
            capacity_   =   begin_ + _cap;
        }
        catch(...)
        {
            begin_      =   nullptr;
            end_        =   nullptr;
            capacity_   =   nullptr;
            throw;
        }
    }
template<class _Tp>
    void 
    vector<_Tp>::_init_with_size_and_value( size_type  _size, 
                                            const value_type &_value )
    {
        // size_type cap = static_cast<size_type>(DEFAULT_CAPACITY_VECTOR);
        _init_with_size_and_cap(_size, _size);
        mystl::uninitialized_fill_n(begin_, _size, _value);
    }
template<class _Tp>
template<class _Iter>
    void 
    vector<_Tp>::_init_with_iter( _Iter _begin, 
                                  _Iter _end )
    {
        size_type size = static_cast<size_type>(_end - _begin);
        // size_type cap  = max(static_cast<size_type>(DEFAULT_CAPACITY_VECTOR), size);
        _init_with_size_and_cap(size, size);
        uninitialized_copy(_begin, _end, begin_);     
    }
template<class _Tp>
    void 
    vector<_Tp>::_init_with_vector( vector &_rhs )
    {
        _init_with_iter(_rhs.begin(), _rhs.end());
    }
template<class _Tp>
    void 
    vector<_Tp>::_init_with_temporary_object( vector &&_rhs )  noexcept
    {
        begin_    = _rhs.begin_;
        end_      = _rhs.end_;
        capacity_ = _rhs.capacity_;
        //allocator_type::destroy(_rhs.begin(), _rhs.end());
    }
template<class _Tp>
    void 
    vector<_Tp>::_init_with_initializer_list( std::initializer_list<value_type> _ilist )
    {
        _init_with_iter(_ilist.begin(), _ilist.end());
    }
template<class _Tp>
    void 
    vector<_Tp>::_destroy_and_recover( iterator  _first, 
                                       iterator  _last, 
                                       size_type _capacity )
    {
        allocator_type::destroy(_first, _last);
        allocator_type::deallocate(_first, _capacity);
    }

//-----------------------------------------------------------------------------------------------------------------------------
//---------------------------------------------------- 迭代器操作 ---------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------------------------
    // 正向迭代器
template<class _Tp>
    typename vector<_Tp>::iterator 
    vector<_Tp>::_begin()
    {
        return begin_;
    }
template<class _Tp>
    typename vector<_Tp>::const_iterator 
    vector<_Tp>::_begin()   
    const
    {
        return begin_;
    }
template<class _Tp>
    typename vector<_Tp>::iterator 
    vector<_Tp>::_end()
    {
        return end_;
    }
template<class _Tp>
    typename vector<_Tp>::const_iterator 
    vector<_Tp>::_end() 
    const
    {
        return end_;
    }
    // 反向迭代器
template<class _Tp>
    typename vector<_Tp>::reverse_iterator 
    vector<_Tp>::_rbegin()
    {
        return reverse_iterator(end());
    }
template<class _Tp>
    typename vector<_Tp>::const_reverse_iterator 
    vector<_Tp>::_rbegin() 
    const
    {
        return const_reverse_iterator(end());
    }
template<class _Tp>
    typename vector<_Tp>::reverse_iterator 
    vector<_Tp>::_rend()
    {
        return reverse_iterator(begin());
    }
template<class _Tp>
    typename vector<_Tp>::const_reverse_iterator      
    vector<_Tp>::_rend()    
    const
    {
        return const_reverse_iterator(begin());
    }
    // 常量迭代器
template<class _Tp>
    typename vector<_Tp>::const_iterator              
    vector<_Tp>::_cbegin()   
    const
    {
        return begin();
    }
template<class _Tp>
    typename vector<_Tp>::const_iterator              
    vector<_Tp>::_cend()    
    const
    {
        return end();
    }
template<class _Tp>
    typename vector<_Tp>::const_reverse_iterator      
    vector<_Tp>::_crbegin()  
    const
    {
        return rbegin();
    }
template<class _Tp>
    typename vector<_Tp>::const_reverse_iterator     
    vector<_Tp>::_crend()    
    const
    {
        return rend();
    }
//-----------------------------------------------------------------------------------------------------------------------------
//---------------------------------------------------- 容量相关操作 -------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------------------------
template<class _Tp>
    bool    
    vector<_Tp>::_empty()
    {
        return begin_ == end_;
    }
template<class _Tp>
    typename vector<_Tp>::size_type          
    vector<_Tp>::_size()
    {
        return static_cast<size_type>(end_ - begin_);
    }
template<class _Tp>
    typename vector<_Tp>::size_type           
    vector<_Tp>::_max_size()
    {
        return static_cast<size_type>(-1) / sizeof(_Tp);
    }
template<class _Tp>
    typename vector<_Tp>::size_type           
    vector<_Tp>::_capacity()
    {
        return static_cast<size_type>(capacity_ - begin_);
    }
template<class _Tp>
    void 
    vector<_Tp>::_reserve(size_type _new_size)
    {   //  新分配的容量大于原始容量才操作，且不能超过最大容量
        if (_new_size > capacity()){
            THROW_OUT_OF_RANGE_IF(_new_size > max_size(), "reserve(_new_size) error! out of range!");
            size_type old_size = size();
            iterator new_begin = allocator_type::allocate(_new_size);
            uninitialized_move(begin_, end_, new_begin);
            begin_             = new_begin;
            end_               = begin_ + old_size;
            capacity_          = begin_ + _new_size;
            //allocator_type::destroy(new_begin);
            //delete new_begin;
            //new_begin = nullptr;
        }
    }
template<class _Tp>
    void               
    vector<_Tp>::_shrink_to_fit()
    {
        if (end_ < capacity_){
            size_type old_size = static_cast<size_type>(end_ - begin_);
            iterator new_begin = allocator_type::allocate(old_size);
            try
            {
                uninitialized_move(begin_, end_, new_begin);
            }
            catch(...)
            {
                //allocator_type::destroy(new_begin, size());
                allocator_type::deallocate(new_begin, old_size);
                throw;
            }
            allocator_type::deallocate(begin_, old_size);
            begin_             = new_begin;
            end_               = begin_ + static_cast<size_type>(old_size);
            capacity_          = end_;
        }
    }

//-----------------------------------------------------------------------------------------------------------------------------
//---------------------------------------------------- 访问元素操作 -------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------------------------
template<class _Tp>
    typename vector<_Tp>::reference           
    vector<_Tp>::_at( size_type _index )
    {
        MYSTL_DEBUG(_index < static_cast<size_type>(end_ - begin_) && _index >= 0);
        return *(begin_ + _index);
    }
template<class _Tp>
    typename vector<_Tp>::const_reference     
    vector<_Tp>::_at( size_type _index )    
    const
    {
        MYSTL_DEBUG(_index < (end_ - begin_) && _index >= 0);
        return *(begin_ + _index);
    }
template<class _Tp>
    typename vector<_Tp>::reference           
    vector<_Tp>::_front()
    {
        MYSTL_DEBUG(begin_ != end_);
        return *begin_;
    }
template<class _Tp>
    typename vector<_Tp>::const_reference     
    vector<_Tp>::_front()                        
    const
    {
        MYSTL_DEBUG(begin_ != end_);
        return *begin_;
    }
template<class _Tp>
    typename vector<_Tp>::reference           
    vector<_Tp>::_back()
    {
        MYSTL_DEBUG(begin_ != end_);
        return *(end_ - 1);
    }
template<class _Tp>
    typename vector<_Tp>::const_reference     
    vector<_Tp>::_back()
    const
    {
        MYSTL_DEBUG(begin_ != end_);
        return *(end_ - 1);
    }
template<class _Tp>
    typename vector<_Tp>::pointer             
    vector<_Tp>::_data()
    {
        return begin_;
    }
template<class _Tp>
    typename vector<_Tp>::const_pointer       
    vector<_Tp>::_data()  
    const                       
    {
        return begin_;
    }

//-----------------------------------------------------------------------------------------------------------------------------
//---------------------------------------------------- 修改容器操作 -------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------------------------
template<class _Tp>
    void 
    vector<_Tp>::_assign( size_type  _size, 
                    const value_type &_value )
    {
        if (_size > capacity()){
            vector tmp(_size, _value);
            swap(tmp);
            // swap(vector(_size, _value));
            // iterator new_begin = allocator_type::allocator(_size);
            // uninitialized_fill_n(new_begin, _size, _value);
            // allocator_type::destroy(begin_, end_);
            // allocator_type::deallocate(begin_, capacity());
            // begin_    = new_begin;
            // end_      = begin_ + _size;
            // capacity_ = end_;
        }
        else if (_size > size()){
            fill_n(begin_, size(), _value);
            end_ = uninitialized_fill_n(end_, _size - size(), _value);
        }
        else{
            erase(fill_n(begin_, _size, _value), end_);
            
            // fill_n(begin_, _size, _value);
            // allocator_type::destroy(begin_ + _size, end_);
            // allocator_type::deallocate(begin_ + _size, size() - _size);
            // end_      = begin_ + _size;
        }
    }
template<class _Tp> 
template<class _Iter>
    void               
    vector<_Tp>::_assign( _Iter _first, 
                          _Iter _last,
                          forward_iterator_tag )
    {
        const size_type new_size = distance(_first, _last);
        if (new_size > capacity()){
            vector tmp(_first, _last);
            //tmp.assign(_first, _last);
            swap(tmp);
            // iterator new_begin = allocator_type::allocate(new_size);
            // uninitialized_move(_first, _last, new_begin);
            // allocator_type::destroy(begin_, end_);
            // allocator_type::deallocate(begin_, size());
            // begin_             = new_begin;
            // end_               = begin_ + new_size;
            // capacity_          = begin_ + new_size;
        }
        else if (new_size > size()){
            copy(_first, _first + size(), begin_);
            uninitialized_copy(_first + size(), _last, end_);
            end_ = begin_ + new_size;
        }
        else{
            erase(copy(_first, _last, begin_), end_);
            end_ = begin_ + new_size;
        }
    }
template<class _Tp> 
template<class _Iter>
    void               
    vector<_Tp>::_assign( _Iter _first, 
                          _Iter _last,
                          input_iterator_tag )
    {
        iterator cur = begin_;
        for (; cur != end_ && _first != _last; ++ cur, ++_first){
            *cur = *_first;
        }
        if (cur == end_){
            insert(end_, _first, _last);
        }
        else{
            erase(cur, end_);
        }
    }
template<class _Tp>
    void                
    vector<_Tp>::_assign( std::initializer_list<value_type> _ilist )
    {
        assign(_ilist.begin(), _ilist.end());
    }
template<class _Tp>
template<class... _Args>
    typename vector<_Tp>::iterator                
    vector<_Tp>::_emplace( const_iterator _pos, 
                           _Args &&..._args )
    {
        iterator pos = const_cast<iterator>(_pos);
        size_type n  = pos - begin_;
        MYSTL_DEBUG(_pos >= begin_ && _pos <= end_);
        if (end_ == capacity_)
        {
            if (capacity() == static_cast<size_type>(0)){
                size_type new_size  = static_cast<size_type>(1);
                iterator new_begin  = allocator_type::allocate(new_size);
                construct(new_begin, mystl::forward<_Args>(_args)...);
                _destroy_and_recover(begin_, end_, capacity());
                begin_              = new_begin;
                end_                = begin_ + new_size;
                capacity_           = end_;
            }
            else{
                MYSTL_DEBUG(capacity() < max_size() / 2);
                size_type new_capacity   = 2 * capacity();
                size_type new_size       = size() + static_cast<size_type>(1);
                iterator new_begin       = allocator_type::allocate(new_size);
                try
                {
                    iterator new_end     = mystl::uninitialized_move(begin_, pos, new_begin);
                    construct(new_end, mystl::forward<_Args>(_args)...);
                    ++new_end;
                    mystl::uninitialized_move(pos, end_, new_end);
                }
                catch(...)
                {
                    allocator_type::deallocate(new_begin, new_size);
                    throw;
                }
                _destroy_and_recover(begin_, end_, capacity());
                begin_                  = new_begin;
                end_                    = begin_ + new_size;
                capacity_               = begin_ + new_capacity;
            }
        }
        else{
            if (_pos == end_){
                construct(address_of(*end_), mystl::forward<_Args>(_args)...);
                ++end_;
            }
            else{
                construct(address_of(*end_), *(end_ - 1));
                move(pos, end_ - 1, pos + 1);
                *pos = value_type(mystl::forward <_Args>(_args)...);
                ++end_;
            }
        }
        return begin_ + n;
    }
template<class _Tp>
  template <class... _Args>
    void                
    vector<_Tp>::_emplace_back( _Args &&..._args )
    {
        const_iterator pos = const_cast<const_iterator>(end_);
        _emplace(pos, _args...);
    }
template<class _Tp>
    void                
    vector<_Tp>::_push_back(const value_type &_value )
    {
        if (end_ == capacity_){
            emplace(end_, _value);
            // if (capacity() == static_cast<size_type>(0))
            // {
            //     size_type new_size  = static_cast<size_type>(1);
            //     iterator new_begin  = allocator_type::allocate(new_size);
            //     uninitialized_fill(new_begin, new_begin + new_size, _value);
            //     begin_              = new_begin;
            //     end_                = begin_ + new_size;
            //     capacity_           = end_;
            // }
            // else
            // {
            //     MYSTL_DEBUG(size() < max_size() / 2);
            //     size_type new_size = 2 * size();
            //     iterator new_begin = allocator_type::allocate(new_size);
            //     try
            //     {
            //         uninitialized_move(begin_, end_, new_begin);
            //     }
            //     catch(...)
            //     {
            //         allocator_type::deallocate(new_begin, new_size);
            //     }
            //     begin_ = new_begin;
            //     end_ = begin_ + size();
            //     insert(end_, _value);
            //     ++end_;
            //     capacity_ = begin_ + new_size;
            // }
        }
        else{
            //emplace(end_, _value);
            construct(address_of(*end_), _value);
            ++end_;
        }
    }
template<class _Tp>
    void                
    vector<_Tp>::_push_back( value_type &&_value )
    {
        _emplace_back(move(_value));
        // if (end_ == capacity_){
        //     value_type _value_new = _value;
        //     _push_back(_value_new);
        // }
        // else{
        //     construct(address_of(*end_), _value);
        //     ++end_;
        // }
    }
template<class _Tp>
    void                
    vector<_Tp>::_pop_back()
    {
        MYSTL_DEBUG(!empty());
        allocator_type::destroy(end_ - 1);
        --end_;
    }
template<class _Tp>
    typename vector<_Tp>::iterator            
    vector<_Tp>::_insert( const_iterator  _pos, 
                    const value_type      &_value )
    {
        const value_type value = _value;
        return _emplace(_pos, value);
    }
template<class _Tp>
    typename vector<_Tp>::iterator            
    vector<_Tp>::_insert( const_iterator _pos, 
                          value_type     &&_value )
    {
        return _emplace(_pos, move(_value));
    }
template<class _Tp>
    typename vector<_Tp>::iterator            
    vector<_Tp>::_insert( const_iterator _pos, 
                          size_type      _n, 
                    const value_type     &_value )
    {
        MYSTL_DEBUG(size() < max_size() - _n);
        iterator pos   = const_cast<iterator>(_pos);
        if (_n == static_cast<size_type>(0))
            return pos;
        if ((capacity() - size()) >= _n)
        {   //  剩余空间充足
            iterator  old_end = end_;
            //size_type left    = static_cast<size_type>(pos - begin_);
            size_type right   = static_cast<size_type>(end_ - pos);
            size_type diff    = _n - right;
            if (_n > right)
            {
                end_ = uninitialized_move(pos, end_, end_ + diff);
                uninitialized_fill_n(pos, _n, _value);
            }
            else
            {
                end_ = uninitialized_copy(end_ - _n, end_, end_);
                move(pos, old_end - _n, pos + _n);
                uninitialized_fill_n(pos, _n, _value);
            }
        }
        else
        {   //  剩余空间不足
            size_type new_size     = size() + _n;
            iterator  new_begin    = allocator_type::allocate(new_size);
            iterator  new_end      = new_begin;
            try
            {
                new_end            = uninitialized_move(begin_, pos, new_begin);
                new_end            = uninitialized_fill_n(new_end, _n, _value);
                new_end            = uninitialized_move(pos, end_, new_end);
            }
            catch(...)
            {
                _destroy_and_recover(new_begin, new_end, new_size);
            }
            _destroy_and_recover(begin_, end_, capacity());
            begin_             = new_begin;
            end_               = new_end;
            capacity_          = begin_ + new_size;
        }
        return begin_ + _n;
    }
template<class _Tp>
  template <class _Iter>
    void                
    vector<_Tp>::_insert( const_iterator _pos, 
                          _Iter _first, 
                          _Iter _last )
    {
        size_type n           = static_cast<size_type>(_first - _last);
        iterator pos = const_cast<iterator>(_pos);
        MYSTL_DEBUG(size() < max_size() - n);
        if (_first == _last)
            return;
        if ((capacity() - size()) >= n)
        {
            iterator  old_end      = end_;
            //size_type left         = static_cast<size_type>(_pos - begin_);
            size_type right        = static_cast<size_type>(end_ - _pos);
            size_type diff         = n - right;
            if (n > right)
            {
                end_ = uninitialized_move(pos, end_, end_ + diff);
                uninitialized_copy(_first, _last, pos);
            }
            else
            {
                end_ = uninitialized_copy(end_ - n, end_, end_);
                move(pos, old_end - n, pos + n);
                uninitialized_copy(_first, _last, pos);
            }
        }
        else
        {
            size_type new_size     = size() + n;
            iterator  new_begin    = allocator_type::allocate(new_size);
            iterator  new_end      = new_begin;
            try
            {
                new_end            = uninitialized_move(begin_, pos, new_begin);
                new_end            = uninitialized_copy(_first, _last, new_end);
                new_end            = uninitialized_move(pos, end_, new_end);
            }
            catch(...)
            {
                _destroy_and_recover(new_begin, new_end, new_size);
                throw;
            }
            _destroy_and_recover(begin_, end_, capacity());
            begin_                 = new_begin;
            end_                   = new_end;
            capacity_              = begin_ + new_size;
        }
    }
template<class _Tp>
    typename vector<_Tp>::iterator           
    vector<_Tp>::_erase( const_iterator _pos )
    {
        MYSTL_DEBUG(_pos >= begin_ && _pos < end_);
        iterator pos = const_cast<iterator>(_pos);
        move(pos + 1, end_, pos);
        allocator_type::destroy(end_ - 1);
        --end_;
        return pos;
    }
template<class _Tp>
    typename vector<_Tp>::iterator            
    vector<_Tp>::_erase( const_iterator _first, 
                         const_iterator _last )
    {
        MYSTL_DEBUG(_first >= begin_ && _last <= end_ && _first <= _last);
        iterator        first      = const_cast<iterator>(_first);
        iterator        last       = const_cast<iterator>(_last);
        iterator        new_end    = move(last, end_, first);
        allocator_type::destroy(new_end, end_);
        end_                       = new_end;
        return first;
    }
template<class _Tp>
    void                
    vector<_Tp>::_clear()
    {
        erase(begin(), end());
    }
template<class _Tp>
    void                
    vector<_Tp>::_resize( size_type _new_size )
    {
        _resize(_new_size, size_type());
    }
template<class _Tp>
    void                
    vector<_Tp>::_resize( size_type  _new_size, 
                    const value_type &_value )
    {
        if(_new_size < size())
        {
            erase(begin_ + _new_size, end_);
        }
        else
        {
            insert(end_, _new_size - size(), _value);
        }
    }
template<class _Tp>
    void                
    vector<_Tp>::_reverse()
    {
        iterator begin = begin_;
        iterator end = end_ - 1;
        while(begin < end)
        {
            mystl::swap(*begin, *end);
            ++begin;
            --end;
        }
    }
template<class _Tp>
    void                
    vector<_Tp>::_swap(vector &_rhs) 
    noexcept
    {
        if (this!=&_rhs)
        {
            mystl::swap(begin_, _rhs.begin_);
            mystl::swap(end_, _rhs.end_);
            mystl::swap(capacity_, _rhs.capacity_);
        }
    }
//*****************************************************************************************/
// 重载 mystl 的 swap
template <class T>
    void 
    swap(vector<T>& lhs, vector<T>& rhs)
    {
        lhs.swap(rhs);
    }

// 重载比较操作符

template <class T>
    bool 
    operator==(const vector<T>& lhs, const vector<T>& rhs)
    {
        return lhs.size() == rhs.size() &&
        mystl::equal(lhs.begin(), lhs.end(), rhs.begin());
    }

template <class T>
    bool 
    operator<(const vector<T>& lhs, const vector<T>& rhs)
    {
        return mystl::lexicographical_compare(lhs.begin(), lhs.end(), rhs.begin(), lhs.end());
    }

template <class T>
    bool 
    operator!=(const vector<T>& lhs, const vector<T>& rhs)
    {
        return !(lhs == rhs);
    }

template <class T>
    bool 
    operator>(const vector<T>& lhs, const vector<T>& rhs)
    {
        return rhs < lhs;
    }

template <class T>
    bool 
    operator<=(const vector<T>& lhs, const vector<T>& rhs)
    {
        return !(rhs < lhs);
    }

template <class T>
    bool 
    operator>=(const vector<T>& lhs, const vector<T>& rhs)
    {
        return !(lhs < rhs);
    }

}
#endif /* _M_VECTOR_HPP_ */
