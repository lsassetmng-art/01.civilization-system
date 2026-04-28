# AICompanyManager Worker change persistent update scope

## In scope
- Find existing Worker placement for the canonical test company.
- Find an alternate BusinessOS DB Worker robot_pool candidate.
- Update the existing Worker placement row.
- Preserve target/company/role.
- Verify before/after row changed.

## Out of scope
- API write.
- RLS change.
- FORCE RLS.
- DELETE.
- Quantity consumption.
- UI redesign.
