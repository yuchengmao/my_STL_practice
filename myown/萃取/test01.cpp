#include <iostream>
#include <vector>
#include <stack>
#include <queue>
#include <unordered_set>
#include <unordered_map>
#include <set>
#include <map>

using namespace std;

class A
{

};

template<class T> 
void fun(){
    cout << "1" << endl;
}
template<> 
void fun<int>(){
    cout << "2" << endl;
}

void test01() {
    fun<char>();
    fun<int>();
}
int main()
{
    test01();
    return 0;
}
