# AICompanyManager BusinessOS DB robot_pool API wire scope

## In scope
- Same-origin local API.
- Read-only BusinessOS DB access.
- role-filtered robot candidates.
- President / Manager / Leader / Worker combo population.
- BusinessOS diagnostic panel removal from normal AICompanyManager UI.

## Out of scope
- Saving placements.
- Persistent company_robot_placement write.
- RLS change.
- DB DDL.
- Direct browser DB access.
- Quantity consumption.

## API
GET /api/aicm/business-robot-pool

## DB source
- business.robot_pool
- business.robot_placement_role_catalog

## DB env
- PERSONA_DATABASE_URL

## UI source rule
Do not modify main UI JS in this phase.
