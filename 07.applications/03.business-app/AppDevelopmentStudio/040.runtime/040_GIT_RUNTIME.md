# ============================================================
# GIT RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
application: App Development Studio

purpose:
Defines runtime behavior for Git operations.

runtime_steps:
1. resolve repository
2. resolve branch policy
3. attach or create branch
4. apply worktree changes
5. build commit draft
6. evaluate review / approval gates
7. commit if allowed
8. push if allowed
9. tag if allowed

policy_controls:
- direct main restriction
- protected branch handling
- review before push
- approval before push
