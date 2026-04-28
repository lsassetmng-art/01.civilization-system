# AICompanyManager legacy local robot selection guard scope

## In scope
- President / Manager / Leader / Worker select guard.
- Legacy local robot option auto-repair.
- First valid BusinessOS DB option selection per role.
- Manual payload final check support.

## Out of scope
- DB write.
- API write.
- Persistent save.
- RLS change.
- Main UI JS edit.
- Quantity consumption.

## Rule
Do not overwrite valid BusinessOS DB selections.
Only replace invalid local/legacy selections.
