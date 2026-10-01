# AICompanyManager V10L-C2D Route Selection Consolidation Canon

## Status

- DB_WRITE: NO
- API_POST: NO
- CORE_PATCH: YES
- SERVER_PATCH: NO

## Reason

C2C/C2C2/C2C3/C2C4 created multiple route selection action families.
C2C5 judged further add-on repair as not maintainable.

## Canonical UI

- 課 selection uses one combobox only.
- Leader selection uses one combobox only when multiple leaders exist.
- Selected section/Leader applies to all selected Manager major items.
- No per-item section selection.

## Canonical state

Route state is stored in the same C1F selection state object:

- state.r8zMgrMajorCardSelection.handoffBatchRoute

## Canonical actions

Only these route actions remain:

- r8z-c2d-apply-section-select
- r8z-c2d-apply-leader-select
- r8z-c2d-clear-route

Old C2C/C2C2/C2C3/C2C4 section apply actions must not remain in handleAction.

## Safety

- No DB write.
- No API POST.
- Yes remains UI-only until execution unlock phase.
- Sato(DB担当) review is required before any DB/API write unlock.
