# agent_cp_code

AI 辅助的算法竞赛编码工作区：人提供题面和解法思路，Claude Code 作为 C++20 编码助手忠实转成代码，不替代人做算法决策。

## 快速上手

```bash
./scripts/run.sh            # 编译 solution.cpp（C++20 -O2）并运行；带文件参数则以该文件为 stdin
./scripts/test.sh           # 严格编译（-Wall -Wextra -Wshadow -Werror）并自动运行 tmp/ 下全部样例
```

## 目录结构

```
solution.cpp    当前题目的唯一源文件
tmp/            样例输入输出与中间产物（不入库）
scripts/        run.sh 编译运行 / test.sh 样例测试
skills/         code_style 为 C++ 风格规范；workflows 为验证检查清单
CLAUDE.md       AI 协作规则（算法边界 + 工作流），AGENTS.md 内容相同
```

## 协作规则

- 只实现用户明确指定的算法，不发明、不替换、不优化
- 动手前先复述思路，有缺口就问，不自行补全
- 任何样例失败立即停止并报告，不擅自改算法修错

完整规则见 [CLAUDE.md](CLAUDE.md)。
