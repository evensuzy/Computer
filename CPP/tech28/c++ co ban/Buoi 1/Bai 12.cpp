// Sn = -1 = 2 - 3 + 4 - 5 + 6 = ... + (-1)^n * n
#include <bits/stdc++.h>
using namespace std;

int main() {
    long long n;
    cin >> n;
    if (n % 2 == 0) cout << n / 2;
     else cout << (n - 1) / 2 - n;
    return 0;
}
