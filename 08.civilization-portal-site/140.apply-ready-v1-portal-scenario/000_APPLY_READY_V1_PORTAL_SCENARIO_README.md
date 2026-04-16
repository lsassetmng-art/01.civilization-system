# ============================================================
# APPLY READY V1 README
# portal + scenario only
# ============================================================

status: draft-additive
system: civilization-portal-site
owner: Boss
prepared_by: Zero

db_env:
- PERSONA_DATABASE_URL

apply_order:
1. 001_PORTAL_APPLY_READY_V1.sql
2. 002_SCENARIO_APPLY_READY_V1.sql
3. 003_PORTAL_SEED_READY_V1.sql
4. 004_SCENARIO_SEED_READY_V1.sql

principles:
- not auto-applied
- portal and scenario only
- knowledge-side apply is intentionally excluded
- execution is manual after review
