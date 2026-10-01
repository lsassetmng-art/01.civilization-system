# AICompanyManager Worker exact model correction scope

## In scope
- Read current Worker placement.
- Resolve exact Worker model from business.robot_pool.
- Update only the existing Worker placement row.
- Preserve company / target / role.
- Set model_code and aiworker_model_code to exact model.
- Set robot_display_name and internal_nickname to exact robot display name.

## Out of scope
- API write.
- RLS change.
- DELETE.
- INSERT.
- Quantity consumption.
