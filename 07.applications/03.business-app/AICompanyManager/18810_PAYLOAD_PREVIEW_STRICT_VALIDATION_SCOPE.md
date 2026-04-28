# AICompanyManager payload preview strict validation scope

## In scope
- Strict preview validation.
- Robot selection required.
- Company fallback warning.
- Save readiness blocked when required fields are missing.

## Required for preview OK
- company_id is canonical UUID
- company save is not blocked
- target save is not blocked
- robot_pool_id exists
- model_code exists
- robot_display_name exists
- selected option is not placeholder

## Out of scope
- DB write.
- API write.
- Persistent save.
- RLS change.
- Main UI JS edit.
- Quantity consumption.
