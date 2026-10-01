# AICompanyManager UI to DB Save Route Scope

## In scope
- Add local write API server on port 8795.
- Add browser save client script.
- Add DB本保存 button to payload preview cards.
- Validate robot_pool_id, company_id, target_id, role, and exact robot model.
- Upsert into business.company_robot_placement.
- Run rollback smoke.

## Out of scope
- RLS changes.
- DELETE.
- Quantity consumption.
- External API deployment.
- Production auth.
