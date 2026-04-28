# AICompanyManager Worker exact model correction R2 scope

## In scope
- Read current Worker placement.
- Resolve exact Worker model from business.robot_pool using aiworker_model_code.
- Exclude LoVerS/LVS series.
- Update only the existing Worker placement row.
- Preserve company / target / role.
- Set model_code and aiworker_model_code to exact model.
- Set robot_display_name and internal_nickname to exact display name.

## Out of scope
- API write.
- RLS change.
- DELETE.
- INSERT.
- Quantity consumption.
