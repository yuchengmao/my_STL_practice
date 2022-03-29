#include "printInfo.hpp"
#include "vector.h"
#include <iostream>

using namespace std;

class A
{
public:  
    A(){
        cout << "A()" << endl;
    }
    A(int a){
        cout << "A(int a)" << endl;
    }
    A(double a){
        cout << "A(double a)" << endl;
    }
};
void test01(){
    vector<int> v(10);
    printInfo(v);
    vector<int> v1(v.begin(), v.begin() + 2);
    printInfo(v1);

}
int main()
{
    test01();
}