# AICompanyManager preview existing assignment resolver scope

## In scope
- President / Manager / Leader / Worker preview fallback resolver.
- Existing visible assignment -> robot_pool_id.
- robot_pool_id -> BusinessOS DB robot row.
- Prevent false robot_not_selected block when existing assignment is visible.

## Out of scope
- DB write.
- API write.
- persistent save.
- RLS change.
- main UI JS edit.
