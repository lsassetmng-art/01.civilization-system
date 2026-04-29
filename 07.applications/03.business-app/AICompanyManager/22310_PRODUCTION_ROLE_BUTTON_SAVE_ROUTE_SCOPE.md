# AICompanyManager Production Role Button Save Route Scope

## In scope
- Remove generic DB本保存 injection behavior.
- Clean up stale DB本保存 buttons at runtime.
- Attach save behavior only to role-specific UI buttons.
- Preserve payload preview as developer confirmation.
- Use existing write API endpoint.

## Out of scope
- DB write during this script.
- RLS changes.
- DELETE.
- Company common rules save route.
- Company business policy save route.
- Department task ledger save route.
