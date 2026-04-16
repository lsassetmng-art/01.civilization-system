# ============================================================
# SPEED EXPERIENCE PHYSICAL DDL GUIDE
# ============================================================

status: canonical-draft
layer: development
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Provides development guidance for speed-experience DDL authoring.

development_notes:
- create core run tables before audit/notification tables
- create indexes immediately after table creation
- keep state and mode columns explicit text values
- use jsonb for preview/artifact payload persistence
- do not bury query-critical values only inside jsonb
