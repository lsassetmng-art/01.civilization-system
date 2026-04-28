# AICompanyManager Phase VX-WA BusinessOS DB robot_pool API wire roadmap

## Phase
- VX-WA

## Current issue
BusinessOS/_aiworker diagnostic panels were appearing in the AICompanyManager normal dashboard.
Also, robot selection must be backed by BusinessOS DB, not static fallback.

## Correct architecture
AICompanyManager browser UI
→ same-origin local Node API
→ PERSONA_DATABASE_URL
→ business.robot_pool / business.robot_placement_role_catalog
→ role-filtered robot candidates

## This phase
- Create local UI/API server.
- Add GET /api/aicm/business-robot-pool.
- API reads BusinessOS DB using PERSONA_DATABASE_URL.
- API returns robot_pool rows and role catalog rows as JSON.
- Add frontend wire JS that:
  - removes BusinessOS/_aiworker diagnostic panels from normal AICompanyManager UI
  - fetches robot pool candidates from /api/aicm/business-robot-pool
  - populates President / Manager / Leader / Worker combo boxes by role
  - preserves unlimited system-use allocation
- Main UI JS remains unchanged.

## Not executed
- DB write
- DB DDL
- API write
- persistent placement save
- RLS apply
- policy change
- main UI JS change
- quantity consumption
