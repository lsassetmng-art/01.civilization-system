# ============================================================
# GAME BUILDER SECURITY PERMISSION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official security and permission architecture of Game Builder.

This architecture defines:
- role-based access
- project-level permission boundaries
- block/asset mutation boundaries
- preview permissions
- export/submission permissions
- lock-aware enforcement
- Persona boundary enforcement


# ============================================================
# 1. SECURITY PRINCIPLE
# ============================================================

Builder must be fail-closed on unauthorized mutation.

No screen visibility alone is sufficient.
Permissions must be enforced at service and API level.

Primary concerns:
- unauthorized project mutation
- unauthorized block mutation
- unauthorized asset mutation
- unauthorized export/submission
- Persona boundary violation
- hidden permission escalation


# ============================================================
# 2. ROLE MODEL
# ============================================================

Minimum roles:
- owner
- editor
- reviewer
- publisher

owner:
- full authority

editor:
- authoring authority within policy

reviewer:
- inspection/comment authority

publisher:
- export/submission authority within policy


# ============================================================
# 3. PERMISSION DOMAINS
# ============================================================

Permissions must be evaluated separately for:

- project metadata mutation
- block mutation
- asset mutation
- preview execution
- validation execution
- export creation
- submission creation
- collaborator management
- lock override where applicable

No implied cross-domain permission should exist by accident.


# ============================================================
# 4. PERSONA BOUNDARY ENFORCEMENT
# ============================================================

Builder must never become a Persona authority surface.

Allowed:
- approved Persona projection reference
- approved cast presentation reference

Prohibited:
- Persona truth overwrite
- unrestricted trust access
- unrestricted memory access
- unrestricted growth mutation

Violation must be blocking.


# ============================================================
# 5. LOCK-AWARE SECURITY
# ============================================================

Where locks are enabled:
- mutation must check lock state
- override must require explicit higher authority
- stale lock handling must remain explicit
- hidden overwrite is prohibited


# ============================================================
# 6. FINAL ARCHITECTURAL RULE
# ============================================================

Builder security must be role-aware, API-enforced, and fail-closed.

Core summary:

- permissions are domain-specific
- screen visibility is not enough
- unauthorized mutation is blocked
- lock conflicts are explicit
- Persona boundary is strictly enforced
