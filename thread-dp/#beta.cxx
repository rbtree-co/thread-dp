
#include <bits/stdc++.h>

using namespace std;

int t, n;
int a[16], ans;

int main() {
  cin >> t;
  while (t--) {
    cin >> n;
    ans = 0;
    for (int i = 1; i <= n; i++) {
      cin >> a[i];
    }
    for (int i = 1; i <= n; i++) {
      while (a[i] != i) {
        swap(a[i], a[a[i]]);
        ans++;
      }
    }
    if (ans <= 8) {
      cout << ans;
    } else {
      cout << "Error";
    }
    cout << '\n';
  }
  return 0;
}