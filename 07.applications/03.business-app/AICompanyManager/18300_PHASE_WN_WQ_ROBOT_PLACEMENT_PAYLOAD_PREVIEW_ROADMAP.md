# AICompanyManager Phase WN-WQ robot placement payload preview roadmap

## Phase
- WN-WQ

## Current position
- BusinessOS DB-backed robot_pool connection: done
- role-specific exact filter: done
- candidate label cleanup: done

## This phase
Create a preview-only payload card for robot placements:
- President
- Manager
- Leader
- Worker

## Payload preview purpose
Before persistent save, verify:
- company_id
- target_scope
- target_id
- placement_role_code
- robot_pool_id
- model_code
- internal_nickname
- assignment_policy
- quantity_consumption

## Safety
- DB write: not executed
- API write: not executed
- RLS apply: not executed
- main UI JS change: not executed
- persistent save: not executed
- quantity consumption: not executed
