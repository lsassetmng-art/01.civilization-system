# AICompanyManager Production Role Button Save Route R2 Scope

## In scope
- Replace payload-dependent browser save client.
- Read selected BusinessOS DB candidate directly from each role select.
- Display existing persisted assignment in the select as a non-save placeholder.
- Block save when the select is still placeholder or existing-display-only.
- Restart UI and write API.

## Out of scope
- DB write during this script.
- API save during this script.
- RLS changes.
- Company common rule save.
- President business policy save.
- Department task ledger save.
