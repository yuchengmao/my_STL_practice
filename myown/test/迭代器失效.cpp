#include <iostream>
#include <vector>
#include <stack>
#include <queue>
#include "print.hpp"

using namespace std;

void test01() {
    vector<int> v = {1, 2, 3};
    auto it = v.begin();
    auto it1 = it + 1;
    auto it2 = it1 + 1;
    cout << *it << endl;
    cout << *it1 << endl;
    cout << *it2 << endl;
    /**
     * @brief 
     * @c it->1,it1->2,it3->3
     */
    v.insert(it2, 4);
    /**
     * @brief Construct a new print object
     * @c 在it1处插入后it1所指向的内存以及后面的内存都后移一位，
     * @c 导致it1不在指向插入点地址，后面所有迭代器都往后偏移了一位，全都失效
     */
    print(v);
    cout << *it << endl;
    cout << *it1 << endl;
    cout << *it2 << endl;
}
int main()
{
    test01();
    return 0;
}
