#include "printInfo.hpp"
#include "list.h"

using namespace std;

template<class T> struct list_node_base;
template<class T> struct list_node;

template<class T>
struct traits
{
    typedef list_node_base<T> *base_ptr;
    typedef list_node<T> *node_ptr;
};
template<class T>
struct list_node_base
{
    typedef typename traits<T>::base_ptr base_ptr;
    typedef typename traits<T>::node_ptr node_ptr;
    list_node_base() { cout << "base" << endl; }
    list_node_base(const T& val) : value(val) { cout << "base : const" << endl; }
    list_node_base(T&& val) : value(mystl::move(val)) { cout << "base : &&" << endl; }
    base_ptr self(){
        return static_cast<base_ptr>(&*this);
    }
    node_ptr shift(){
        return static_cast<node_ptr>(self());
    }
    T value;
    base_ptr pre;
    base_ptr next;
};
template<class T>
struct list_node : public list_node_base<T>
{
    typedef typename list_node_base<T>::base_ptr base_ptr;
    typedef typename list_node_base<T>::node_ptr node_ptr;
    list_node() : value(0) { cout << "node" << endl; }
    list_node(const T& val) : value(val) { cout << "node : const" << endl; }
    list_node(T&& val) : value(mystl::move(val)) { cout << "node : &&" << endl; }
    node_ptr self(){
        return static_cast<node_ptr>(&*this);
    }
    base_ptr shift(){
        return static_cast<base_ptr>(self());
    }
    void setvalue(const T &val) { 
        value = val;
        cout << value << endl;
    }
    T value;
};

void test01() {
    mystl::list<int> l1 = {1, 2, 3};
    print(l1);
    list_node<int> n1 = l1.front();
    list_node_base<int> n2 = l1.front();
    cout << n1.value << endl;
    cout << n2.value << endl;
}
int main()
{
    test01();
    return 0;
}
