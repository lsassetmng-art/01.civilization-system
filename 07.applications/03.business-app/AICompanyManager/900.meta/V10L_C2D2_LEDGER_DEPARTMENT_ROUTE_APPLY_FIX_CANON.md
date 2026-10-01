# AICompanyManager V10L-C2D2 Ledger Department Route Apply Fix Canon

## Status

- DB_WRITE: NO
- API_POST: NO
- CORE_PATCH: YES
- SERVER_PATCH: NO

## Canon

For "課長へ送る":

- 課 is selected by combobox.
- 部門 is not manually selected.
- 部門 is derived from selected Manager major ledger rows.
- If selected major rows have multiple departments, execution must stop and ask the user to align selected rows.
- If ledger rows have no department, execution must stop before API unlock.

## Action routing

Use existing manager-major-card action prefix:

- r8z-mgr-major-card-route-apply-section
- r8z-mgr-major-card-route-apply-leader
- r8z-mgr-major-card-route-clear

Reason:

Older r8z-c2d-* action names may not be routed by the existing card action dispatcher.
The card prefix keeps route selection inside the same action family as the existing selection UI.

## Safety

- No DB write.
- No API POST.
- Yes remains UI-only until execution unlock.
- Sato(DB担当) review is required before any write unlock.
