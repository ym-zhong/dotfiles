#include <iostream>
#include <vector>
#include <stack>
using namespace std;

int maximumScore(vector<int>& nums, int k) {
    // 时间复杂度 O(n)
    // 空间复杂度 O(n)
    int n = nums.size();
    vector<int> right_first_less_id(n, n);
    stack<int> st;
    for (int i = n-1; i >= 0; --i) {
        while (!st.empty() && nums[i] <= nums[st.top()])
            st.pop();

        if (!st.empty())
            right_first_less_id[i] = st.top();

        st.push(i);
    }

    int res = 0, left_first_less_id;
    stack<int>().swap(st);
    for (int i = 0; i < n; ++i) {
        while (!st.empty() && nums[i] <= nums[st.top()])
            st.pop();

        left_first_less_id = st.empty()? -1: st.top();

        st.push(i);

        if (left_first_less_id < k && right_first_less_id[i] > k)
            res = max(res, nums[i] * (right_first_less_id[i] - left_first_less_id - 1));
    }
    
    return res;
}

int main() {
}
