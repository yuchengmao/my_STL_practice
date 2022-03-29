#include <iostream>
#include <vector>
#include <stack>
#include <queue>
#include "print.hpp"

using namespace std;

class A
{
public:
    A()
    {
        cout << "A" << endl;
    }
    A(int)
    {
        cout << "A_int" << endl;
    }
};
class B
{
private:
    A a;
    A a1;

public:
    B (): a1(0)
    {
        cout << "B" << endl;
    }
};

void test01()
{
    B b;
}
int main()
{
    test01();
    return 0;
}
