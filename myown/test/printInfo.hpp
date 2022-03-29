/**
 * @file printInfo.hpp
 * @c printInfo---打印容器基本信息
 * @c printVal---打印容器元素
 * @c find---查找元素是否存在
 * @author your name (you@domain.com)
 * @brief 
 * @version 0.1
 * @date 2021-08-19
 * 
 * @copyright Copyright (c) 2021
 * 
 */
#ifndef D69FE7E4_7CD3_4008_A5E6_F84CBDD38C4A
#define D69FE7E4_7CD3_4008_A5E6_F84CBDD38C4A
#include <iostream>
#include <array>
#include <vector>
#include <list>
#include <forward_list>
#include <deque>
#include <set>
#include <map>
#include <unordered_set>
#include <unordered_map>
// #include "m_vector.hpp"
using namespace std;

//m_vector
//template<class T> 
// void printVal(mystl::vector<int> &v){
//     for (mystl::vector<int>::iterator it = v.begin(); it != v.end(); ++it)
//     {
//         cout << *it << " ";
//     }
//     cout << endl;
// }
// //template <class T>
// void printInfo(mystl::vector<int> &v)
// {
//     cout << "size = " << v.size();
//     cout << ", capacity = " << v.capacity();
//     cout << ", front = " << v.front();
//     cout << ", back = " << v.back();
//     cout << ", data = " << v.data() << endl;
// }

// vector
template <class T>
void printInfo(vector<T> &v)
{
    cout << "size = " << v.size();
    cout << ", capacity = " << v.capacity();
    cout << ", front = " << v.front();
    cout << ", back = " << v.back();
    cout << ", data = " << v.data() << endl;
}
template<class T>
void printVal(vector<T> &v){
    for(auto i : v){
        cout << i << " ";
    }
    cout << endl;
}
template<class T>
void find(vector<T> &v, T target){
    auto it = find(v.begin(), v.end(), target);
    if(it != v.end())
        cout << "find it!" << endl;
    else
        cout << "cannot find it!" << endl;
}
// list
template<class T>
void printInfo(list<T> &l){
    cout << "size = " << l.size();
    cout << ", max_size = " << l.max_size();
    cout << ", front = " << l.front();
    cout << ", back = " << l.back() << endl;
}
template<class T>
void printVal(list<T> &l){
    for(auto i : l){
        cout << i << endl;
    }
}
template<class T>
void find(list<T> &l, T target){
    auto it = find(l.begin(), l.end(), target);
    if(it != l.end())
        cout << "find it!" << endl;
    else
        cout << "cannot find it!" << endl;
}
// deque
template<class T>
void printInfo(deque<T> &dq){
    cout << "size = " << dq.size();
    cout << ", max_size = " << dq.max_size();
    cout << ", capacity = " << dq.__capacity();
    cout << ", front = " << dq.front();
    cout << ", back = " << dq.back() << endl;
}
template<class T>
void printVal(deque<T> &l){
    for(auto i : l){
        cout << i << endl;
    }
}
template<class T>
void find(deque<T> &dq, T target){
    auto it = find(dq.begin(), dq.end(), target);
    if(it != dq.end())
        cout << "find it!" << endl;
    else
        cout << "cannot find it!" << endl;
}
// set
template<class T>
void printInfo(set<T> &s){
    cout << "size = " << s.size();
    cout << ", max_size = " << s.max_size() << endl;
}
template<class T>
void printVal(set<T> &l){
    for(auto i : l){
        cout << i << endl;
    }
}
template<class T>
void find(set<T> &s, T target){
    auto it = s.find(target);
    if(it != s.end())
        cout << "find it!" << endl;
    else
        cout << "cannot find it!" << endl;
}
// multiset
template<class T>
void printInfo(multiset<T> &s){
    cout << "size = " << s.size();
    cout << ", max_size = " << s.max_size() << endl;
}
template<class T>
void printVal(multiset<T> &l){
    for(auto i : l){
        cout << i << endl;
    }
}
template<class T>
void find(multiset<T> &s, T target){
    auto it = s.find(target);
    if(it != s.end())
        cout << "find it!" << endl;
    else
        cout << "cannot find it!" << endl;
}
// map
template<class T1, class T2>
void printInfo(map<T1, T2> &m){
    cout << "size = " << m.size();
    cout << ", max_size = " << m.max_size() << endl;
}
template<class T1, class T2>
void printVal(map<T1, T2> &m){
    for (auto it = m.begin(); it != m.end(); ++it)
    {
        cout << "first = " << it->first;
        cout << ", second = " << it->second << endl;
    }
}
template<class T1, class T2>
void find(map<T1, T2> &m, T1 target){
    auto it = m.find(target);
    if(it != m.end())
        cout << "find it!" << endl;
    else
        cout << "cannot find it!" << endl;
}
// multimap
template<class T1, class T2>
void printInfo(multimap<T1, T2> &m){
    cout << "size = " << m.size();
    cout << ", max_size = " << m.max_size() << endl;
}
template<class T1, class T2>
void printVal(multimap<T1, T2> &m){
    for (auto it = m.begin(); it != m.end(); ++it)
    {
        cout << "first = " << it->first;
        cout << ", second = " << it->second << endl;
    }
}
template<class T1, class T2>
void find(multimap<T1, T2> &m, T1 target){
    auto it = m.find(target);
    if(it != m.end())
        cout << "find it!" << endl;
    else
        cout << "cannot find it!" << endl;
}
// unordered_set
template<class T1>
void printInfo(unordered_set<T1> &us){
    cout << "size = " << us.size();
    cout << ", max_size = " << us.max_size() << endl;
}
template<class T1>
void printVal(unordered_set<T1> &us){
    for (auto it = us.begin(); it != us.end(); ++it)
    {
        cout << *it << endl;
    }
}
template<class T1>
void find(unordered_set<T1> &us, T1 target){
    auto it = us.find(target);
    if(it != us.end())
        cout << "find it!" << endl;
    else
        cout << "cannot find it!" << endl;
}
// unordered_multiset
template<class T1>
void printInfo(unordered_multiset<T1> &m){
    cout << "size = " << m.size();
    cout << ", max_size = " << m.max_size() << endl;
}
template<class T1>
void printVal(unordered_multiset<T1> &m){
    for (auto it = m.begin(); it != m.end(); ++it)
    {
        cout << *it << endl;
    }
}
template<class T1>
void find(unordered_multiset<T1> &ums, T1 target){
    auto it = ums.find(target);
    if(it != ums.end())
        cout << "find it!" << endl;
    else
        cout << "cannot find it!" << endl;
}
// unordered_map
template<class T1, class T2>
void printInfo(unordered_map<T1, T2> &m){
    cout << "size = " << m.size();
    cout << ", max_size = " << m.max_size() << endl;
}
template<class T1, class T2>
void printVal(unordered_map<T1, T2> &m){
    for (auto it = m.begin(); it != m.end(); ++it)
    {
        cout << "first = " << it->first;
        cout << ", second = " << it->second << endl;
    }
}
template<class T1, class T2>
void find(unordered_map<T1, T2> &m, T1 target){
    auto it = m.find(target);
    if(it != m.end())
        cout << "find it!" << endl;
    else
        cout << "cannot find it!" << endl;
}
// unordered_multimap
template<class T1, class T2>
void printInfo(unordered_multimap<T1, T2> &m){
    cout << "size = " << m.size();
    cout << ", max_size = " << m.max_size() << endl;
}
template<class T1, class T2>
void printVal(unordered_multimap<T1, T2> &m){
    for (auto it = m.begin(); it != m.end(); ++it)
    {
        cout << "first = " << it->first;
        cout << ", second = " << it->second << endl;
    }
}
template<class T1, class T2>
void find(unordered_multimap<T1, T2> &m, T1 target){
    auto it = m.find(target);
    if(it != m.end())
        cout << "find it!" << endl;
    else
        cout << "cannot find it!" << endl;
}
#endif /* D69FE7E4_7CD3_4008_A5E6_F84CBDD38C4A */
