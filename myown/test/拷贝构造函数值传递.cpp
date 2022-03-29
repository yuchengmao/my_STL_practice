#include <iostream>
#include <vector>
#include <stack>
#include <queue>
#include "print.hpp"

using namespace std;

class Solution {
private:
    int a;

public:
    Solution(){}
    Solution(Solution &s1) { this->a = s1.a; }
};

void test01() {
    Solution s1;
    
}
int main()
{
    test01();
    return 0;
}
