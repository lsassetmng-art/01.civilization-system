# ============================================================
# NAMECARDMANAGER ROLE PERMISSION MATRIX
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Provides implementation-facing role permission summary.

matrix:
- owner:
  - list yes
  - detail yes
  - create yes
  - update yes
  - delete yes
  - share yes
  - revoke yes
  - publication_preflight yes
  - publication_request yes
  - import yes
- editor:
  - list yes
  - detail yes
  - create yes
  - update yes
  - delete no
  - share no
  - revoke no
  - publication_preflight no
  - publication_request no
  - import yes
- shared_viewer:
  - list yes limited
  - detail yes limited
  - create no
  - update no
  - delete no
  - share no
  - revoke no
  - publication_preflight no
  - publication_request no
  - import no
- publication_operator:
  - list yes limited
  - detail yes limited
  - create no
  - update no
  - delete no
  - share no
  - revoke no
  - publication_preflight yes
  - publication_request yes
  - import no
- approver:
  - list yes company scope
  - detail yes company scope
  - approve yes
  - reject yes
