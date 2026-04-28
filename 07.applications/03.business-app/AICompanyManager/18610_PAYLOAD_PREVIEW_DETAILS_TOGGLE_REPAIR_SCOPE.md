# AICompanyManager payload preview details toggle repair scope

## In scope
- Fix details/summary toggle.
- Preserve open state.
- Prevent preview-internal click from triggering immediate redraw.
- Keep full JSON collapsed unless user opens it.

## Out of scope
- DB write.
- API write.
- Persistent save.
- RLS change.
- Main UI JS edit.
- Quantity consumption.
