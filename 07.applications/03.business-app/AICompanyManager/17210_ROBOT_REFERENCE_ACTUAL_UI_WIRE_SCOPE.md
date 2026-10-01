# AICompanyManager robot reference actual UI wire scope

## In scope
- Build read-only reference cache.
- Add actual UI cards showing reference availability.
- Keep allocation rule unchanged: unlimited system-use.
- Keep display rule unchanged: 社内通称@役割.

## Out of scope
- DB write.
- RLS change.
- API write.
- Persistent assignment write.
- Quantity consumption.
- FORCE RLS.
- DELETE policy.

## Reference categories
- role_catalog: business.robot_placement_role_catalog
- model_pool: business.robot_pool
- personality: aiworker.robot_model_personality_profile
- public_profile: aiworker.robot_model_public_profile
- cx_full_reference: cx22073jw.vw_robot_model_full_reference_v3
