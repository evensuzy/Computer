//T�nh t?ng Sn = 1^2 = 2^2 + ... + n^2
#include <bits/stdc++.h>
using namespace std;

int main() {
    long long n;
    cin >> n;
    cout << n * (n + 1) * (2*n + 1) / 6;
    return 0;
}
