# ============================================================
# DIFF RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
application: App Development Studio

purpose:
Defines runtime behavior for change comparison.

diff_targets:
- design documents
- source files
- SQL
- package structure
- Git worktree
- version snapshots

runtime_steps:
1. collect baseline
2. collect candidate output
3. compare by artifact type
4. summarize changed targets
5. classify risk
6. persist diff record
