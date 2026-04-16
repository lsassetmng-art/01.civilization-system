# ============================================================
# APP DEVELOPMENT STUDIO WS-DB VERIFICATION GUIDE
# ============================================================

status: canonical-draft
layer: development
system: applications
application: App Development Studio
workstream: WS-DB
owner: Boss
prepared_by: Zero

purpose:
Provides the DB verification guide before repository implementation.

verification_targets:
- expected tables exist
- expected columns exist
- expected indexes exist
- mode/state/device fields are explicit
- json payload fields exist where defined
- governed linkage can be queried
- audit and notification tables are append-oriented by design

verification_notes:
- DB execution phase must use reviewed SQL
- DB execution phase must follow Method A
- DB execution phase must include Sato DB review participation
