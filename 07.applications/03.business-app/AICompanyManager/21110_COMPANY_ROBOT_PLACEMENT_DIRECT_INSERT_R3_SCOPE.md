# AICompanyManager company robot placement direct insert R3 scope

## In scope
- Resolve robot_pool rows from business.robot_pool.
- Insert add-only placement rows into business.company_robot_placement.
- Map required columns:
  - aiworker_model_code
  - target_level_code
- Verify inserted rows.

## Out of scope
- API write.
- RLS change.
- FORCE RLS.
- DELETE.
- UPDATE existing rows.
- Quantity consumption.
