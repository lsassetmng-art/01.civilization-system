# AICompanyManager Company Edit Action Stable Fix Scope

## In scope
- Browser-side UI fix.
- Remove bogus selector options:
  - company / 会社
  - company
  - 会社
- Prevent native form submit blanking.
- Company change uses current company context and explicit API save when user clicks OK.
- Delete button is blocked with message.

## Out of scope
- Real DB write during this script.
- Delete implementation.
- RLS changes.
- Robot placement save.
