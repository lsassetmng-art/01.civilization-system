# ============================================================
# NAMECARD SYNC STATE MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_sync_state
owner: Boss
prepared_by: Zero

purpose:
Tracks synchronization state between local and BusinessOS.

states:
- local_only
- pending_sync
- syncing
- synced
- sync_failed
- conflict
