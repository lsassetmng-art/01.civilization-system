# ============================================================
# MBO BACKEND FIRST SLICE EXACT
# ============================================================

status: canonical
application: Mbo
layer: development
owner: Boss
prepared_by: Zero

purpose:
Fixes the exact first backend implementation slice.

first_slice_scope:
- objective list API
- objective detail API
- create objective API
- update objective API
- activate objective API
- action plan list API
- action plan create API
- progress log list API
- progress log create API
- dashboard summary API

read_dependencies:
- 1200007_MBO_API_EXACT_PAYLOAD.md
- 1200023_MBO_SQL_FULL_INTEGRATED.sql
- 1200029_MBO_SQL_EXECUTABLE_QUICKCHECK.sql

required_backend_rules:
- request validation required
- role check required
- company scope check required
- final lock check required
- server-side state transition check required
- response envelope consistency required

backend_acceptance:
- unlocked objective can be created and updated
- objective can move draft -> active
- active objective can receive action plans
- active objective can receive progress logs
- finalized objective rejects normal progress creation
- dashboard summary returns scoped counts

out_of_scope_for_first_slice:
- review flow
- evaluation confirm flow
- ERP transmission
- reopen governance
- export/reminder jobs
