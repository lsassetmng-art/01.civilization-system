# ============================================================
# PORTAL AND SCENARIO APPLY READY V1 NOTE
# ============================================================

status: draft-additive
layer: meta
system: civilization-portal-site
owner: Boss
prepared_by: Zero

generated:
- ../140.apply-ready-v1-portal-scenario/000_APPLY_READY_V1_PORTAL_SCENARIO_README.md
- ../140.apply-ready-v1-portal-scenario/001_PORTAL_APPLY_READY_V1.sql
- ../140.apply-ready-v1-portal-scenario/002_SCENARIO_APPLY_READY_V1.sql
- ../140.apply-ready-v1-portal-scenario/003_PORTAL_SEED_READY_V1.sql
- ../140.apply-ready-v1-portal-scenario/004_SCENARIO_SEED_READY_V1.sql
- ../140.apply-ready-v1-portal-scenario/010_APPLY_READY_V1_PORTAL_SCENARIO_EXECUTION_BLOCK.sh

scope:
- portal only
- scenario only
- PERSONA_DATABASE_URL 前提
- execution is not performed in this step
