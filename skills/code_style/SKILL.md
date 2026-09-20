# Competitive Programming C++ Style

Use this style for every generated `solution.cpp` unless the user explicitly
requests a different convention. Priority: correctness, simplicity, concision,
then consistency with this file.

## Required Skeleton

Use C++20 and choose the skeleton that matches the statement.

Multiple test cases:

```cpp
#include <bits/stdc++.h>
using namespace std;

#define x first
#define y second

using LL = long long;
using PII = pair<int, int>;
using ULL = unsigned long long;

constexpr int N = 200010;
constexpr int MOD = 1e9 + 7;
constexpr int mod = 998244353;
constexpr int i32_inf = 0x3f3f3f3f;
constexpr LL i64_inf = 0x3f3f3f3f3f3f3f3f;

void solve() {

}

int main() {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);

    int T;
    cin >> T;
    while (T--) solve();

    return 0;
}
```

For a single test case, replace the `T` loop with one call to `solve()`.
Do not change the skeleton without an implementation reason. Template aliases
and constants may remain unused.

## Structure

- Put the main algorithm in `solve()`.
- Prefer local variables and containers.
- Use a lambda for a helper used only inside `solve()`.
- Prefer recursive generic lambdas over `std::function` for DFS.
- Use globals only for large static storage, shared precomputation, or when they
  clearly simplify recursion.
- Do not introduce classes, namespaces, wrappers, getters, design patterns, or
  abstractions that are unnecessary for one contest problem.

## Naming

Use short conventional names:

| Meaning | Name |
| --- | --- |
| sizes and parameters | `n`, `m`, `k`, `q` |
| indices and bounds | `i`, `j`, `l`, `r` |
| vertices and endpoints | `u`, `v` |
| ordinary arrays | `a`, `b`, `c` |
| permutation | `p` |
| prefix and suffix arrays | `pre`, `suf` |
| answer and result | `ans`, `res` |
| count and sum | `cnt`, `sum` |
| maximum and minimum | `mx`, `mn` |
| current and next | `cur`, `nxt` |
| position and index | `pos`, `idx` |
| visited and distance | `vis`, `dis` |
| parent and size | `fa`, `sz` |
| tree and graph | `tr`, `g` |
| map/hash table and set | `mp`, `st` |
| queue/deque/stack/priority queue | `q`, `dq`, `stk`, `pq` |
| dynamic programming | `dp` |

Use short snake_case only when one conventional name would be ambiguous, such
as `pre_sum`, `mp_cnt`, or `max_flow`. Do not use application-style names such
as `numberOfElements`, `currentPosition`, or `generatedAbbreviations`.

Use conventional helper names such as `dfs`, `bfs`, `check`, `calc`, `get`,
`add`, `del`, `query`, and `update`.

## Containers and Types

- Prefer `vector` to ordinary raw arrays.
- Use `tr` for a tree adjacency list and `g` for a general graph.
- Use `PII` for `pair<int, int>` and access fields as `.x` and `.y`.
- Use `int` when signed 32-bit range is safe and `LL` when 64-bit is required.
- Do not use `LL` blindly; explicitly check products, sums, and sentinels for
  overflow.
- Prefer zero-based indexing internally unless one-based indexing makes the
  implementation materially simpler.
- Use STL algorithms and containers directly instead of wrapping or
  reimplementing them.

## Formatting and Expression Style

- Use four spaces for indentation and place opening braces on the same line.
- Use ordinary `for` loops and range-based loops; do not add loop macros.
- Use `for (int i = 0; i < n; i++)` as the default indexed-loop form.
- Use `for (auto &x : a) cin >> x;` for simple vector input.
- Use structured bindings when they shorten graph or pair code.
- Use `auto` only when the type is obvious or substantially clearer.
- Print with `'\n'`, not `endl`, unless flushing is required.
- Prefer a concise STL expression when it is at least as clear as expanded code.
- Never trade correctness, defined behavior, or verifiability for fewer lines.

## Comments

Do not narrate obvious operations. Add a comment only for a non-obvious
invariant, mathematical step, subtle boundary, or correctness-critical detail.
Prefer self-explanatory contest code with no comments when possible.

## Final Style Checklist

Before finishing, verify every item:

- The correct single-case or multi-case skeleton is used.
- The main implementation is inside `solve()` and state is local when practical.
- Names follow the table; no unnecessary long descriptive identifiers remain.
- No unnecessary class, wrapper, helper, macro, or abstraction remains.
- Comments explain only genuinely non-obvious logic.
- Indexing, empty ranges, `n = 1`, integer overflow, and recursion depth were
  checked where applicable.
- Time and memory complexity fit the constraints.
- Output spelling, capitalization, spacing, and line endings match the statement.
- The program compiles without warnings and all provided samples pass.
