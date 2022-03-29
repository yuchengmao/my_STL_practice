#include "m_vector.hpp"
#include "printInfo.hpp"
#include <memory>
#include <iterator>
#include <vector>

// void test01()
// {
//     //mystl::vector<int> v;
//     //printVal(v);
// }
// class A
// {

// public:
//     int *a;
//     A()
//     {
//         a = new int(10);
//     }
//     ~A()
//     {
//         delete a;
//         a = nullptr;
//     }
// };

// void test02()
// {
//     A *a = new A;
//     std::allocator<A> alloc;
//     alloc.destroy(a);
//     cout << a->a << endl;
//     alloc.deallocate(a, 1);
//     cout << a->a << endl;
// }
// template <class T>
// class B
// {
// public:
//     typedef T type1;
//     typedef T *type2;
//     type1 a(type1 t1, type2 t2);
// };

// template <class T>
// typename B<T>::type1 B<T>::a(type1 t1, type2 t2)
// {
//     cout << "B->a" << endl;
//     return 0;
// }
// void test03()
// {
//     B<int> b1;
//     int a = 10;
//     int *b = &a;
//     b1.a(a, b);
// }

// void test04()
// {
//     vector<int> v;
//     for (int i = 0; i < 10; ++i)
//     {
//         v.push_back(i);
//     }
//     cout << v.size() << endl;
//     auto it = v.end() + 1;
//     for (int i = 0; i < 100; ++i)
//     {
//         cout << "i = " << i << endl;
//         cout << &(*it) << endl;
//         cout << *it << endl;
//         ++it;
//     }
//     cout << v.capacity() << endl;
//     //non-const lvalue reference to type 'vector<...>' cannot bind to a temporary of type 'vector<...>'
//     //v.swap(vector<int>(10, 1));
//     //printVal(v);
// }

int i = 2;
template <class T>
void print(T t)
{
    cout << "------------------------------" << endl;
    cout << "----------- test" << i++ << " ------------" << endl;
    cout << "info: ";
    printInfo(t);
    cout << "value: ";
    printVal(t);
}
void my_vector_test01()
{
    //  构造函数测�?
    //  1，无参构造函�?
    mystl::vector<int> v1;
    //print(v1);

    //  2，带参构造函�?
    mystl::vector<int> v2(10);
    print(v2);

    //  3，带参构造函数，有初�?
    mystl::vector<int> v3(10, 1);
    print(v3);

    //  4，迭代器构�?
    mystl::vector<int> v4(v3.begin(), v3.begin() + 3);
    print(v4);

    //  5，拷贝构�?
    mystl::vector<int> v5(v4);
    print(v5);

    //  6，右值拷�?
    mystl::vector<int> v6(mystl::vector<int>(10, 2));
    print(v6);

    //  7，参数列表构�?
    mystl::vector<int> v7 = {1, 2, 3, 4, 5};
    print(v7);

    //  8，参数列表构�?
    mystl::vector<int> v8({1, 2, 3});
    print(v8);
}
void my_vector_test02()
{
    //  符号重载测试
    //  9，等号测�?
    mystl::vector<int> v8({1, 2, 3});
    mystl::vector<int> v9 = v8;
    print(v9);
    //  10，取右�?
    mystl::vector<int> v10 = mystl::vector<int>(10, 3);
    print(v10);
}
void my_vector_test03()
{
    // 迭代器相关测�?
    //  11，begin()，end()，rbegin()，rend()，cbegin()，cend()
    mystl::vector<int> v11 = {1, 2, 3, 4, 5, 6};
    print(v11);
    cout << "v11.begin()    = " << v11.begin() << endl;
    cout << "*v11.begin()   = " << *v11.begin() << endl;
    cout << "v11.end()      = " << v11.end() << endl;
    cout << "*v11.end()     = " << *v11.end() << endl;

    cout << "reverse_iterator_test : ";
    for (auto it = v11.rbegin(); it != v11.rend(); ++it)
    {
        cout << *it << " ";
    }
    cout << endl;

    cout << "v11.cbegin()   = " << v11.cbegin() << endl;
    cout << "*v11.cbegin()  = " << *v11.cbegin() << endl;
    cout << "v11.cend()     = " << v11.cend() << endl;
    cout << "*v11.cend()    = " << *v11.cend() << endl;
}
void my_vector_test04()
{
    //  容量相关测试
    //  12，empty()，size()，capacity()，max_size()
    //  reserve()                                           //  要变换的容量大于原始容量才变
    //  shrink_to_fit()                                     //  �? capacity 变成 size 大小
    mystl::vector<int> v12 = {1, 2, 3, 4, 5};
    print(v12);
    cout << "v12.empty()    = " << v12.empty() << endl;
    cout << "v12.size()     = " << v12.size() << endl;
    cout << "v12.max_size() = " << v12.max_size() << endl;
    cout << "v12.capacity() = " << v12.capacity() << endl;
    cout << "v12.info           : ";
    printInfo(v12);
    v12.reserve(15);
    cout << "v12.reserve(15)    : ";
    printInfo(v12);
    v12.reserve(17);
    cout << "v12.reserve(17)    : ";
    printInfo(v12);
    v12.shrink_to_fit();
    cout << "v12.shrink_to_fit(): ";
    printInfo(v12);
}
void my_vector_test05()
{
    //  访问元素相关
    //  data()，返回迭代器 begin()
    mystl::vector<int> v13 = {1, 2, 3, 4, 5};
    print(v13);
    cout << "v13.at(1)   = " << v13.at(1) << endl;
    cout << "v13[1]      = " << v13[1] << endl;
    cout << "*v13.data() = " << *v13.data() << endl;
}
void my_vector_test06()
{
    //  修改容器相关操作
    //  assign()测试
    mystl::vector<int> v14 = {1, 2, 3};
    print(v14);
    //  assign(size_type _size, value_type _value)
    v14.assign(1, 1);
    cout << "v14.assign(1, 1)" << endl;
    cout << "v14.info           : ";
    printInfo(v14);
    cout << "v14.value          : ";
    printVal(v14);
    //  assign(_Iter _first, _Iter _last)
    cout << "v14.assign(v13.begin(), v13.end())" << endl;
    mystl::vector<int> v13(1);
    v14.assign(v13.begin(), v13.end());
    cout << "v14.info           : ";
    printInfo(v14);
    cout << "v14.value          : ";
    printVal(v14);
    //  assign(std::initializer_list<value_type> _ilist)
    cout << "v14.assign(std::initializer_list<value_type> _ilist)" << endl;
    v14.assign({1, 2, 3, 4, 5, 6, 7, 8, 9});
    cout << "v14.info           : ";
    printInfo(v14);
    cout << "v14.value          : ";
    printVal(v14);
}
void my_vector_test07()
{
    // emplace() 测试
    mystl::vector<int> v15 = {1, 2, 3};
    print(v15);

    v15.emplace(v15.begin(), 4);
    cout << "v15.emplace(v15.begin(), 4)" << endl;
    cout << "v15.info                      : ";
    printInfo(v15);
    cout << "v15.value                     : ";
    printVal(v15);

    // emplace_back() 测试
    v15.emplace_back(5);
    cout << "v15.emplace_back(5)" << endl;
    cout << "v15.info                      : ";
    printInfo(v15);
    cout << "v15.value                     : ";
    printVal(v15);

    // push_back() 测试
    v15.push_back(6);
    cout << "v15.push_back(6)" << endl;
    cout << "v15.info                      : ";
    printInfo(v15);
    cout << "v15.value                     : ";
    printVal(v15);

    // pop_back() 测试
    v15.pop_back();
    cout << "v15.pop_back()" << endl;
    cout << "v15.info                      : ";
    printInfo(v15);
    cout << "v15.value                     : ";
    printVal(v15);

    // insert() 测试
    mystl::vector<int> v16 = v15;
    print(v16);
    v16.insert(v16.begin(), 3);
    cout << "v16.insert(v16.begin(), 3)" << endl;
    cout << "v16.info                      : ";
    printInfo(v16);
    cout << "v16.value                     : ";
    printVal(v16);

    v16.insert(v16.begin(), v15.begin(), v15.end());
    cout << "v16.insert(v16.begin(), v15.begin(), v15.end())" << endl;
    cout << "v15.info                      : ";
    printInfo(v15);
    cout << "v15.value                     : ";
    printVal(v15);

    cout << "v16.info                      : ";
    printInfo(v16);
    cout << "v16.value                     : ";
    printVal(v16);
}
void my_vector_test08()
{ // erase 测试
    mystl::vector<int> v17 = {1, 2, 3, 4, 5};
    print(v17);
    v17.erase(v17.end() - 1);
    cout << "v17.erase(v17.begin())" << endl;
    cout << "v17.info                      : ";
    printInfo(v17);
    cout << "v17.value                     : ";
    printVal(v17);

    v17.erase(v17.begin(), v17.begin() + 2);
    cout << "v17.erase(v17.begin(), v17.begin() + 2)" << endl;
    cout << "v17.info                      : ";
    printInfo(v17);
    cout << "v17.value                     : ";
    printVal(v17);

    //  clear 测试
    // v17.clear();
    // cout << "v17.clear()" << endl;
    // cout << "v17.info                      : ";
    // printInfo(v17);
    // cout << "v17.value                     : ";
    // printVal(v17);

    // resize() 测试
    print(v17);
    v17.resize(20);
    cout << "v17.resize(20)" << endl;
    cout << "v17.info                      : ";
    printInfo(v17);
    cout << "v17.value                     : ";
    printVal(v17);

    v17.push_back(1);
    printInfo(v17);
    printVal(v17);

    v17.resize(1);
    cout << "v17.resize(1)" << endl;
    cout << "v17.info                      : ";
    printInfo(v17);
    cout << "v17.value                     : ";
    printVal(v17);

    // reverse() 测试
    print(v17);
    cout << "v17.assign({1, 2, 3, 4, 5})" << endl;
    v17.assign({1, 2, 3, 4, 5});
    cout << "v17.info                      : ";
    printInfo(v17);
    cout << "v17.value                     : ";
    printVal(v17);

    v17.reverse();
    cout << "v17.reverse()" << endl;
    cout << "v17.info                      : ";
    printInfo(v17);
    cout << "v17.value                     : ";
    printVal(v17);

    // swap() 测试
    print(v17);
    mystl::vector<int> v18 = {1, 2, 3, 4, 5};
    cout << "v18.info                      : ";
    printInfo(v18);
    cout << "v18.value                     : ";
    printVal(v18);

    v17.swap(v18);
    cout << "v17.swap(v18)" << endl;
    cout << "v17.info                      : ";
    printInfo(v17);
    cout << "v17.value                     : ";
    printVal(v17);
    cout << "v18.info                      : ";
    printInfo(v18);
    cout << "v18.value                     : ";
    printVal(v18);

    //  allocator_type 测试
    // cout << typeid(v18.get_allocator_type()).name() << endl;
    // cout << typeid(int()).name() << endl;
    // cout << typeid(double()).name() << endl;

    v17.assign(10, 10);
    mystl::swap_range(v18.begin(), v18.end(), v17.begin());

    cout << "v17.info                      : ";
    printInfo(v17);
    cout << "v17.value                     : ";
    printVal(v17);
    cout << "v18.info                      : ";
    printInfo(v18);
    cout << "v18.value                     : ";
    printVal(v18);
}
void my_vector_test09(){
    mystl::vector<int> v = {1, 2, 3, 4, 5};
    mystl::vector<int>::iterator it = v.begin();
    while(it != v.end()){
        cout << *it << endl;
        ++it;
    }
}
void test01(){
    std::vector<int> v = {1, 2, 3};
    std::vector<int>::iterator it = v.begin();
    for (; it != v.end(); ++it)
    {
        cout << *it << endl;
    }
    v.emplace();
    v.emplace_back();
}
int main()
{
    //test01();
    //test02();
    //test03();
    //test04();
    // my_vector_test01();
    // my_vector_test02();
    // my_vector_test03();
    // my_vector_test04();
    // my_vector_test05();
    // my_vector_test06();
    // my_vector_test07();
    // my_vector_test08();
    // my_vector_test09();
    test01();
}
