# ============================================================
# NAMECARDMANAGER PHASE A BUILD ORDER GUIDE
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Provides implementation-facing build order for Phase A.

build_order:
- project shell
- model / dto shell
- local persistence shell
- list/detail UI shell
- CRUD path
- sync queue shell
- auth entry shell
- authorization checks
- share core
- publication core
- image core
- import minimum
- audit/history core
- test pass and freeze

implementation_notes:
- local-first path should be working before sync replay path
- authorization checks should be added before share/publication actions are exposed
- image handling should be added after basic record save path is stable
- CSV import minimum should target acquisition value, not full enrichment

