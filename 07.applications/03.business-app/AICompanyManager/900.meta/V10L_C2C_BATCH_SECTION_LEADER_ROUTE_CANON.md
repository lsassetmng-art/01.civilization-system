# AICompanyManager V10L-C2C Batch Section / Leader Route Canon

## Status

- DB_WRITE: NO
- API_POST: NO
- CORE_PATCH: YES
- SERVER_PATCH: NO
- Purpose: batch route selection UI and payload preview only

## Canonical routing rule

When sending Manager major items to Leader:

- 課は選択済み大項目に対してまとめて一括選択する
- 大項目ごとの個別課選択はしない
- selected major items share one selected section_id
- selected major items share one selected leader_placement_id / assigned_leader_id when available

## Leader decision rule

- If selected section has exactly one Leader, Leader can be auto-confirmed
- If selected section has multiple Leaders, user must select one Leader
- If selected section has no Leader, execution must stop
- If section is not selected, execution must stop

## Payload preview

Each selected major item receives the same route:

- section_id
- leader_placement_id when available
- assigned_leader_id when available
- assigned_leader_label
- handoff_status_code = handed_off
- decomposition_status_code = assigned_to_leader

## Safety

C2C must not POST.
C2C must not write DB.
Actual execution remains locked until C2D or later with Sato(DB担当) review.
