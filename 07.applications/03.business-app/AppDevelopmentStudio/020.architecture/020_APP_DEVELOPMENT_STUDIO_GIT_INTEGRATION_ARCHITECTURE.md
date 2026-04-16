# ============================================================
# GIT INTEGRATION ARCHITECTURE
# ============================================================

status: canonical-draft
layer: architecture
application: App Development Studio

git_layers:
- repository layer
- branch layer
- worktree layer
- commit layer
- push layer
- tag/release-support layer

git_controls:
- branch policy
- protected branch handling
- review-before-push
- approval-before-push
- direct main restriction
- push permission

summary:
Git is architecture-integrated as a controlled execution surface.
