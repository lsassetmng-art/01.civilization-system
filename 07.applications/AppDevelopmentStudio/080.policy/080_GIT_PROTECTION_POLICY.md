# ============================================================
# GIT PROTECTION POLICY
# ============================================================

status: canonical-draft
layer: policy
application: App Development Studio

git_policy_scope:
- direct main control
- protected branch behavior
- review before push
- approval before push
- tag gating

recommended_controls:
- direct main update: disabled by default
- push to protected branch: guarded
- review before push: enabled for important repos
- approval before push: enabled for protected branches

policy_principles:
- no silent overwrite on tracked files
- push behavior must be explicit
- branch-based change control is preferred
