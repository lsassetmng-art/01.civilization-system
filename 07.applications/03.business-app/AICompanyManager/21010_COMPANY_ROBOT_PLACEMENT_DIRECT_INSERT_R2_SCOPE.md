# AICompanyManager company robot placement direct insert R2 scope

## In scope
- Resolve robot_pool rows from business.robot_pool.
- Insert add-only placement rows into business.company_robot_placement.
- Use dynamic column mapping to match current table shape.
- Verify inserted rows.

## Out of scope
- API write.
- RLS change.
- FORCE RLS.
- DELETE.
- UPDATE existing rows.
- Quantity consumption.
