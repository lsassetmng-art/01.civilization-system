# CX22073JW Keep / Add / Deprecate Working Ledger
- project: CX22073JW
- document_type: keep-add-deprecate-working-ledger
- status: working-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This working ledger is generated from the current schema audit result.

## 2. Source Files
- audit result: `161_CX22073JW_CURRENT_SCHEMA_AUDIT_RESULT.txt`
- first-slice existence csv: `162_CX22073JW_SECRET_FIRST_SLICE_EXISTENCE.csv`

## 3. Working Table

| target_object | object_type | actual_exists | canonical_required | suggested_decision | reason | next_action |
|---|---|---|---|---|---|---|
| Output format is csv. |  |  |  |  |  |  |
| access_route_master | table | no | yes | add |  |  |
| privilege_tier_master | table | no | yes | add |  |  |
| privileged_access_audit_log | table | no | yes | add |  |  |
| privileged_policy_profile | table | no | yes | add |  |  |
| privileged_route_policy_binding | table | no | yes | add |  |  |
| secret_asset | table | no | yes | add |  |  |
| secret_asset_category_master | table | no | yes | add |  |  |
| secret_route_binding | table | no | yes | add |  |  |
| secret_target_master | table | no | yes | add |  |  |
| secret_target_selector_master | table | no | yes | add |  |  |

## 4. Decision Rule
- `add`: actualに存在しないので新規追加
- `review_existing`: actualに存在するため keep / rename-or-wrap / replace を次段で判定
