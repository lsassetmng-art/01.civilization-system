# ============================================================
# NAMECARDMANAGER AUTH AND AUTHORIZATION CONTRACT
# ============================================================

status: canonical
layer: integration
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Fixes exact auth inheritance and authorization separation rules.

auth_inheritance_context:
{
  "auth_context_type": "businessos_inherited",
  "user_id": "uuid",
  "company_id": "uuid or null",
  "session_id": "string",
  "device_id": "string or null",
  "issued_at": "timestamp",
  "expires_at": "timestamp"
}

rules:
- authentication success is separate from authorization success
- inherited auth may grant session entry but not operation permission
- expired inherited auth must not be accepted
- company context is required for publication-capable operations

roles:
- owner
- editor
- shared_viewer
- publication_operator
- approver

role_capability_matrix:
- owner:
  - create yes
  - update yes
  - delete yes
  - share yes
  - publication_request yes
  - import yes
- editor:
  - create yes
  - update yes
  - delete no
  - share no
  - publication_request no
  - import yes
- shared_viewer:
  - create no
  - update no
  - delete no
  - share no
  - publication_request no
  - import no
- publication_operator:
  - create no
  - update no
  - delete no
  - share no
  - publication_request yes
  - import no
- approver:
  - create no
  - update no
  - delete no
  - share no
  - publication_request no
  - import no
  - approve yes

initial_navigation_rules:
- inherited auth success may enter app home
- forbidden target operation must redirect to safe visible screen with permission message
