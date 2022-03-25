#include <cstdio>
#include <cstdlib>
#include <ctime>
#include <iostream>
#include <string>
#include "lib/mrrand.h"

using namespace std;
using tp = int;

tp temp[20];

template <typename Typex>
void Core(Typex& out) {
  tp n = 10 + rand() % 6;
  out << n << '\n';
  for (tp i = 1; i <= n; ++i) {
    temp[i] = i;
  }
  for (tp i = 1; i <= n; ++i) {
    swap(temp[rd() % n + 1], temp[rd() % n + 1]);
  }
  for (tp i = 1; i <= n; ++i) {
    out << temp[i] << ' ';
  }
  out << '\n';
}

void Sc(tp i) {
  // string F = to_string(i) + ".in";
  // ofstream out(F.c_str());
  tp n = 15;
  cout << n << '\n';
  for (tp j = 0; j < n; ++j) {
    Core(cout);
  }
}

void Run(tp i) {
  // string C = "std.exe < " + to_string(i) + ".in > " + to_string(i) + ".out";
  // system(C.c_str());
}

signed main() {
  for (tp i = 1; i <= 1; ++i) {
    // printf("%d\n", i);
    Sc(i);
    Run(i);
  }
  return 0;
}
