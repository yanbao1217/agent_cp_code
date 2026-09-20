#include <bits/stdc++.h>
using namespace std;

#define x first
#define y second

using LL = long long;
using PII = pair<int, int>;
using ULL = unsigned long long;

constexpr int N = 200010;
constexpr int MOD = 1e9 + 7;
constexpr LL i64_inf = 0x3f3f3f3f3f3f3f3f;
constexpr int i32_inf = 0x3f3f3f3f;
constexpr int mod = 998244353;

void solve() {
    int n;
    cin >> n;

    vector<int> a(n);
    for (int i = 0; i < n; i++) {
        cin >> a[i];
    }

    int ans;
    if (n == 1) {
        ans = a[0];
    } else {
        // ans = gcd(a_start, a_end) which means gcd of first and last elements
        ans = gcd(a[0], a[n-1]);
    }

    cout << ans << '\n';
}

int main() {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);

    int T;
    cin >> T;
    while (T--) solve();

    return 0;
}