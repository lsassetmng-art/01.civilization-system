# AICompanyManager robot placement payload preview scope

## In scope
- Add separate payload preview JS.
- Read BusinessOS DB robot candidates through existing read-only local API.
- Display placement payload preview near:
  - Presidentロボット
  - Managerロボット設定
  - Leaderロボット設定
  - Workerロボット配置
- Keep current select exact filter behavior.

## Out of scope
- DB write.
- API write.
- Persistent placement save.
- RLS change.
- Main UI JS modification.
- Quantity consumption.

## Preview payload fields
- source
- operation
- company_id
- target_scope
- target_id
- placement_role_code
- robot_pool_id
- model_code
- robot_display_name
- internal_nickname
- assignment_policy
- quantity_consumption
- save_status
