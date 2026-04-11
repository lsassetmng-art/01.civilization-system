# ============================================================
# NAMECARDMANAGER EVENT TO AUDIT HISTORY UI MATRIX
# ============================================================

status: canonical
layer: meta
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Maps event types to audit/history/UI visibility.

matrix:
- create_namecard:
  - audit yes
  - history yes
  - ui_message yes
  - notification no
- update_namecard:
  - audit yes
  - history yes
  - ui_message yes
  - notification no
- delete_namecard:
  - audit yes
  - history yes
  - ui_message yes
  - notification no
- share_apply:
  - audit yes
  - history yes
  - ui_message yes
  - notification optional
- share_revoke:
  - audit yes
  - history yes
  - ui_message yes
  - notification optional
- publication_preflight_failed:
  - audit yes
  - history no
  - ui_message yes
  - notification no
- publication_requested:
  - audit yes
  - history yes
  - ui_message yes
  - notification optional
- publication_approved:
  - audit yes
  - history yes
  - ui_message yes
  - notification optional
- publication_rejected:
  - audit yes
  - history yes
  - ui_message yes
  - notification optional
- publication_published:
  - audit yes
  - history yes
  - ui_message yes
  - notification optional
- sync_conflict:
  - audit yes
  - history no
  - ui_message yes
  - notification no
