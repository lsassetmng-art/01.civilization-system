# ============================================================
# APPLY READY V1 README
# ============================================================

status: draft-additive
system: civilization-portal-site
owner: Boss
prepared_by: Zero

db_env:
- PERSONA_DATABASE_URL

apply_order:
1. 001_PORTAL_APPLY_READY_V1.sql
2. 002_CX22073JW_CORE_APPLY_READY_V1.sql
3. 003_CX22073JW_SINARIO_CORE_APPLY_READY_V1.sql
4. 004_PORTAL_SEED_READY_V1.sql
5. 005_CX22073JW_SEED_READY_V1.sql

principles:
- not auto-applied
- PERSONA_DATABASE_URL を使う
- cross-schema reference is logical in v1
- expansion tables are deferred to v2
