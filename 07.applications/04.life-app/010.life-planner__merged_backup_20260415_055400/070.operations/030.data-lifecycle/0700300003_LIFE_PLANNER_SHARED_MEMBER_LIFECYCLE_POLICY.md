# ============================================================
# LIFE PLANNER SHARED MEMBER LIFECYCLE POLICY
# ============================================================

status: draft
system: LifePlanner
layer: 070.operations
subfolder: 030.data-lifecycle
owner: Boss
prepared_by: Zero
schema: life

shared_member_lifecycle:
  - invited
  - accepted
  - declined
  - revoked_conceptual

meanings:
  invited:
    - owner has sent invitation
  accepted:
    - member can access within scope
  declined:
    - member chose not to participate
  revoked_conceptual:
    - owner ended the access later

rules:
  - accepted member still follows share scope
  - revoke access does not erase owner history
  - invitation status and access scope are separate concerns
  - role_type change is not the same as invite_status change

owner_actions:
  - invite
  - update_scope
  - change_role
  - revoke_access

shared_member_exit_cases:
  - family planning no longer shared
  - change from editor to viewer
  - invite resent later
