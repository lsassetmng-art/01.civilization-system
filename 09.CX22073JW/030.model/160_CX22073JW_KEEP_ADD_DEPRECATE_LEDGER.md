# CX22073JW Keep / Add / Deprecate Ledger
- project: CX22073JW
- document_type: keep-add-deprecate-ledger
- status: implementation-ready-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
本書は actual schema と canonical 設計との差分判定を台帳化する。

## 2. Decision Meanings
- keep:
  そのまま維持する
- add:
  新規追加する
- rename-or-wrap:
  rename または wrapper/view で canonical 側へ寄せる
- deprecate:
  即削除せず、非推奨化して整理する
- replace:
  局所的に作り直す

## 3. Current Decision Rule
### 3-1. Normal Layer
原則 keep/add/rename-or-wrap で進める。

### 3-2. Secret Layer
原則 add で進める。

### 3-3. Dangerous Objects
以下だけ replace 候補:
- PK/FK が根本不整合
- 役割衝突が大きい
- canonical に寄せるより再定義が安全

## 4. Ledger Table

| target_object | object_type | actual_exists | canonical_required | decision | reason | next_action |
|---|---|---:|---:|---|---|---|
| access_route_master | table | unknown | yes | add | secret-layer first slice required | create exact ddl |
| privilege_tier_master | table | unknown | yes | add | secret-layer first slice required | create exact ddl |
| secret_asset_category_master | table | unknown | yes | add | secret-layer first slice required | create exact ddl |
| secret_asset | table | unknown | yes | add | secret-layer first slice required | create exact ddl |
| secret_target_selector_master | table | unknown | yes | add | secret-layer first slice required | create exact ddl |
| secret_target_master | table | unknown | yes | add | secret-layer first slice required | create exact ddl |
| secret_route_binding | table | unknown | yes | add | secret-layer first slice required | create exact ddl |
| privileged_policy_profile | table | unknown | yes | add | secret-layer first slice required | create exact ddl |
| privileged_route_policy_binding | table | unknown | yes | add | secret-layer first slice required | create exact ddl |
| privileged_access_audit_log | table | unknown | yes | add | secret-layer first slice required | create exact ddl |

## 5. Actual-Side Review Buckets
監査結果は次の3バケットで整理する。

### 5-1. Stable Keep Bucket
- knowledge core
- entity/relation/classification
- phase1 reference foundations
- stable helper views/functions

### 5-2. Additive Expansion Bucket
- secret-layer first slice
- privileged metadata
- future exercise/lifestyle expansion

### 5-3. Cleanup Bucket
- naming drift
- unused overlap
- deprecated candidates
- wrapper/view absorb candidates

## 6. Final Rule
この台帳は、current schema audit SQL の結果を見て埋める。
