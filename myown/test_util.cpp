#include "printInfo.hpp"

using namespace std;

//  偏特化测试
template<class T>
class A
{
public:
    A(){
        cout << "T" << endl;
    }
};
template<class T>
class A<T*>
{
public:
    A(){
        cout << "T*" << endl;
    }
};
template<>
class A<int>
{
public:
    A(){
        cout << "int" << endl;
    }
};

template<class T, class P>
class B
{
public:
    B(){
        cout << "T, P" << endl;
    }
};
template<class T>
class B<T, int>
{
public:
    B(){
        cout << "T, int" << endl;
    }
};
template<class T, int = 0> 
class C
{
public:
    C(){
        cout << "C" << endl;
    }
};

void test01() {
    A<int> a1;
    A<int *> a2;
    B<int, double> b1;
    B<int, int> b2;
    C<int> c1;
}
class D
{
    int d_;
public:
    int getVal() { return d_; }
    D() { d_ = 0; }
    D(int) { d_ = 1; }
};

void test02(){
    D d;
    mystl::pair<int, int> p1;               //  无参构造
    const int a = 0, b = 0;
    mystl::pair<int, int> p2(a, b);         //  常量构造
    mystl::pair<int, int> p3(p1);           //  pair(const pair &rhs) = default;
    mystl::pair<int, int> p4(1, 2);         //  右值构造
    mystl::pair<int, int> p5(mystl::move(p1));  // pair(pair &&rhs) = default;
}
void test03(){
    pair<int, int> p1;               //  无参构造
    const int a = 0, b = 0;
    pair<int, int> p2(a, b);         //  常量构造
    pair<int, int> p3(p1);           //  pair(const pair &rhs) = default;
    pair<int, int> p4(1, 2);         //  右值构造
}
int main()
{
    //test01();
    //test02();
    //test03();
    mystl::vector<int> v1 = {1, 2};
    mystl::vector<int> v2(10);
    mystl::uninitialized_copy(v1.begin(), v1.end(), v2.begin());
    printInfo(v2);
    printVal(v2);
    return 0;
}
