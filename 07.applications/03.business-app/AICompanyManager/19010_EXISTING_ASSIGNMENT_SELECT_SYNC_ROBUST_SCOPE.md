# AICompanyManager existing assignment select sync robust scope

## In scope
- President / Manager / Leader / Worker select sync.
- Existing visible placement to select value.
- Retry after robot_pool wire populates options.
- Preview unselected false positive repair.

## Out of scope
- DB write.
- API write.
- Persistent save.
- RLS change.
- Main UI JS edit.
- Quantity consumption.

## Rule
Only sync when select has no selected robot.
Never overwrite user-selected robot.
