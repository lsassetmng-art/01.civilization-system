# ============================================================
# GAME BUILDER COLLABORATION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official collaboration architecture of Game Builder.

This architecture defines:
- collaborator roles
- lock strategy
- comment/review flows
- conflict visibility
- review/publisher access boundaries

It covers initial non-realtime-first collaboration.


# ============================================================
# 1. COLLABORATION PRINCIPLE
# ============================================================

Initial Builder collaboration is role-aware
and lock-aware, not unrestricted realtime by default.

The system must optimize for:
- safety
- clarity
- reviewability
- release confidence

It must not assume unrestricted simultaneous mutation.


# ============================================================
# 2. PRIMARY ROLES
# ============================================================

Minimum roles:
- owner
- editor
- reviewer
- publisher

owner:
- full project authority

editor:
- structured authoring authority according to policy

reviewer:
- read/comment/validation-oriented visibility

publisher:
- export/submission-oriented visibility and authority


# ============================================================
# 3. LOCK MODEL
# ============================================================

Initial lock concepts:
- project lock
- block lock

Block lock is preferred when feasible.

Locks must expose:
- lock holder
- lock status
- lock start
- expiry where applicable

Lock conflict must be explicit.


# ============================================================
# 4. COMMENT MODEL
# ============================================================

Comments must be attachable to:
- project
- block
- asset
- validation finding
- export/submission context where useful

Comment truth must remain separate from validation truth.

Comments do not change formal validation results.


# ============================================================
# 5. REVIEW FLOW
# ============================================================

A reviewer should be able to:
- inspect project status
- inspect validation results
- inspect preview
- leave comments
- avoid unrestricted authoring mutation

This supports release confidence without authoring escalation.


# ============================================================
# 6. CONFLICT VISIBILITY
# ============================================================

The system must make visible:
- lock conflicts
- stale edit contexts
- autosave vs revision freshness
- potential overwrite risk

Silent overwrite risk is discouraged.


# ============================================================
# 7. FINAL ARCHITECTURAL RULE
# ============================================================

Builder collaboration must remain explicit,
role-aware,
and lock-aware.

Core summary:

- owner/editor/reviewer/publisher roles remain distinct
- project and block locks remain explicit
- comments support review
- comments do not alter validation truth
- collaboration optimizes for safety over hidden concurrency
