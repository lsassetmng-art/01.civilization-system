# AICompanyManager company_id canonicalization preview scope

## In scope
- Convert local UI company id to DB canonical UUID in preview.
- Show company_id_input separately.
- Block save preview if company_id cannot be canonicalized.

## Out of scope
- DB write.
- API write.
- Persistent save.
- RLS change.
- Main UI JS edit.
- Quantity consumption.
