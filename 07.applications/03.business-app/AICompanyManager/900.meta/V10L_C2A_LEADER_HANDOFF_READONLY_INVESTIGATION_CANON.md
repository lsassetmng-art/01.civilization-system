# AICompanyManager V10L-C2A leader handoff read-only investigation canon

## 1. Status

- DB_WRITE: NO
- API_POST: NO
- CORE_PATCH: NO
- SERVER_PATCH: NO
- Purpose: read-only investigation before execution unlock

## 2. Maintainability decision

C2 must not add another parallel bridge/helper/selection model.

Use the C1F clean card-selection model as the UI source of truth:

- aicmR8zMgrMajorCardSelectedRows
- aicmR8zMgrMajorCardRowId
- aicmR8zMgrMajorCardTitle
- aicmR8zMgrMajorCardIsSelectable
- aicmR8zMgrMajorCardOpenConfirm
- aicmR8zMgrMajorCardHandleAction

## 3. Endpoint candidate

Endpoint candidate for C2B/C2D:

- /api/aicm/v2/manager-major/update

This endpoint must not be POSTed in C2A.

## 4. Payload candidate

Payload candidate should be derived from the existing old confirm payload, not invented from scratch.

Candidate fields:

- owner_civilization_id
- aicm_manager_major_work_item_id
- assigned_leader_label
- decomposition_status_code
- handoff_status_code
- note

C2B must confirm whether section_id / leader_placement_id / assigned_leader_id are available and should be added.

## 5. Routing validation

Before actual execution:

1. selected rows must exist
2. each selected row must have a stable id
3. each selected row must be pending/selectable
4. each selected row must have clear Leader routing
5. ambiguous multiple Leader routing must stop before write
6. confirmation UI must show item titles and target Leader/section

## 6. Next phase

Next phase: V10L-C2B payload exact canon and validation UI.

C2B remains:

- DB_WRITE: NO
- API_POST: NO
- CORE_PATCH: possible only for validation UI, if approved
- SERVER_PATCH: NO unless read-only route evidence requires otherwise
