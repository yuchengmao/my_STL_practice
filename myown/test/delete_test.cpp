#include <iostream>
#include <vector>
#include "printInfo.hpp"

using namespace std;

void print(vector<int> *v){
    for (auto it = v->begin(); it != v->end(); ++it){
        cout << *it << " ";
    }
    cout << endl;
}
void test01() {
    vector<int> *v;
    for (int i = 0; i < 10; ++i){
        v->push_back(i);
    }
    print(v);

}
int main()
{
    test01();
    return 0;
}
