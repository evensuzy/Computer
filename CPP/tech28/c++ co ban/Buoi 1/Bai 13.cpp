// Cho 2 s? nguy�n duong a v� b. T�m s? chia h?t cho b l?n nh?t kh�ng vu?t qua a.
//input 19 5
//output 15
#include<bits/stdc++.h>
using namespace std;

int main() {
    int a, b;
    cin >> a >> b;
    if (a % b == 0) cout << a;
    else cout << a / b * b;
    return 0;
}
