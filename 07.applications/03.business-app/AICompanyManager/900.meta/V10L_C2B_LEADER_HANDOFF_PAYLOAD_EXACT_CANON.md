# AICompanyManager V10L-C2B Leader Handoff Payload Exact Canon

## Status

- DB_WRITE: NO
- API_POST: NO
- CORE_PATCH: YES
- SERVER_PATCH: NO
- Purpose: payload exact canon and validation UI only

## Endpoint candidate

- /api/aicm/v2/manager-major/update

This endpoint is displayed as preview only in C2B.
C2B must not POST.

## Source of truth for selected rows

C2B reuses the C1F clean selection model.

- aicmR8zMgrMajorCardSelectedRows()
- aicmR8zMgrMajorCardRowId(row, index)
- aicmR8zMgrMajorCardTitle(row)
- aicmR8zMgrMajorCardIsSelectable(row)

Do not create a parallel selection model.

## Payload fields

Required payload preview fields:

- owner_civilization_id
- aicm_manager_major_work_item_id
- assigned_leader_label
- decomposition_status_code = assigned_to_leader
- handoff_status_code = handed_off
- note

Optional route fields when available:

- section_id
- leader_placement_id
- assigned_leader_id

## Validation

Before execution unlock, each selected major item must satisfy:

1. stable manager major id exists
2. row is still selectable/pending
3. target section or section label is available
4. target Leader label, Leader id, or Leader placement id is available

If validation errors exist:

- Yes button is disabled
- confirm-yes action is blocked
- DB/API remains locked

## UI display

The confirmation UI must display:

- endpoint preview
- selected item title
- department
- section
- Leader
- validation errors
- payload preview
- DB/API not executed copy

## Next phase

C2C should review route ambiguity and payload with Sato(DB担当).
C2D may unlock API POST only after explicit approval.
