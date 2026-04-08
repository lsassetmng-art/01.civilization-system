# ============================================================
# APP DEVELOPMENT STUDIO GIT CONSTITUTION
# ============================================================

status: canonical-draft
layer: constitution
system: applications
application: App Development Studio

purpose:
Defines Git as a constitutional part of the product.

principle:
Git integration is first-class.

constitutional_scope:
The application may support:
- repository clone
- repository attach
- branch creation
- worktree patch application
- diff review
- commit draft
- commit execution
- push execution
- tag creation
- release-support metadata generation

git_authority_principle:
Git actions are governed by the same configurable control system
as design apply and SQL execution.

protected_git_concepts:
- protected branch
- direct main restriction
- review-before-push
- approval-before-push
- tag gating
- release gating

constitutional_constraint:
Git integration must not be treated as an afterthought.
It is part of the development execution model of the application.

summary:
App Development Studio is constitutionally allowed
to participate in repository-level change management.
