#ifndef F250A194_CC95_474E_9257_2AE6044639CB
#define F250A194_CC95_474E_9257_2AE6044639CB
#include <iostream>
#include <vector>

using namespace std;

template<class T>
void print(vector<T> &v){
    for(auto i : v){
        cout << i << " ";
    }
    cout << endl;
}
template<class T>
void print(vector<vector<T>> &v){
    for(auto i : v){
        print(i);
    }
    cout << endl;
}

#endif /* F250A194_CC95_474E_9257_2AE6044639CB */
