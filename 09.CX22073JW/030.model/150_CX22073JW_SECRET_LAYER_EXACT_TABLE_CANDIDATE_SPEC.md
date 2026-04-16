# CX22073JW Secret Layer Exact Table Candidate Spec
- project: CX22073JW
- document_type: secret-layer-exact-table-candidate-spec
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
本書は、固定済み first slice をもとに
secret layer の exact DDL 起票前提となる table/column candidate spec を定義する。

## 2. Exact Candidate Scope
対象:
- `access_route_master`
- `privilege_tier_master`
- `secret_asset_category_master`
- `secret_asset`
- `secret_target_selector_master`
- `secret_target_master`
- `secret_route_binding`
- `privileged_policy_profile`
- `privileged_route_policy_binding`
- `privileged_access_audit_log`

---

## 3. Candidate Spec

### 3-1. access_route_master
purpose:
- access lane の正本

candidate columns:
- access_route_id uuid not null
- access_route_code text not null
- display_name text not null
- description text null
- sort_order integer not null default 0
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

fixed codes:
- normal
- triple

unique:
- access_route_code

### 3-2. privilege_tier_master
purpose:
- privileged tier の正本

candidate columns:
- privilege_tier_id uuid not null
- privilege_tier_code text not null
- display_name text not null
- description text null
- sort_order integer not null default 0
- tier_level integer not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

fixed codes:
- triple_viewer
- triple_operator
- triple_root

unique:
- privilege_tier_code

### 3-3. secret_asset_category_master
purpose:
- protected asset category の正本

candidate columns:
- secret_asset_category_id uuid not null
- secret_asset_category_code text not null
- display_name text not null
- description text null
- sort_order integer not null default 0
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

fixed codes:
- protected_knowledge
- protected_reference
- protected_template
- protected_index_support

unique:
- secret_asset_category_code

### 3-4. secret_asset
purpose:
- secret layer の主 protected object

candidate columns:
- secret_asset_id uuid not null
- secret_asset_code text not null
- secret_asset_category_id uuid not null
- internal_title text not null
- protected_summary text null
- lifecycle_status text not null
- isolation_status text not null
- storage_optimization_status text null
- indexing_status text null
- summarization_status text null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

fk:
- secret_asset_category_id -> secret_asset_category_master.secret_asset_category_id

unique:
- secret_asset_code

### 3-5. secret_target_selector_master
purpose:
- secret target selector vocabulary の正本

candidate columns:
- secret_target_selector_id uuid not null
- secret_target_selector_code text not null
- display_name text not null
- description text null
- selector_scope text null
- sort_order integer not null default 0
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

unique:
- secret_target_selector_code

### 3-6. secret_target_master
purpose:
- privileged route が解決する target の正本

candidate columns:
- secret_target_id uuid not null
- secret_target_code text not null
- secret_target_selector_id uuid not null
- secret_asset_category_id uuid null
- target_type text not null
- display_name text not null
- description text null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

fk:
- secret_target_selector_id -> secret_target_selector_master.secret_target_selector_id
- secret_asset_category_id -> secret_asset_category_master.secret_asset_category_id

unique:
- secret_target_code

### 3-7. secret_route_binding
purpose:
- triple route 条件と secret target の binding

candidate columns:
- secret_route_binding_id uuid not null
- secret_route_binding_code text not null
- access_route_id uuid not null
- privilege_tier_id uuid not null
- secret_target_id uuid not null
- binding_status text not null
- description text null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

fk:
- access_route_id -> access_route_master.access_route_id
- privilege_tier_id -> privilege_tier_master.privilege_tier_id
- secret_target_id -> secret_target_master.secret_target_id

unique:
- secret_route_binding_code
- (access_route_id, privilege_tier_id, secret_target_id)

### 3-8. privileged_policy_profile
purpose:
- privileged handling semantics profile

candidate columns:
- privileged_policy_profile_id uuid not null
- privileged_policy_profile_code text not null
- display_name text not null
- description text null
- isolation_required boolean not null default true
- audit_required boolean not null default true
- fallback_allowed boolean not null default false
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

unique:
- privileged_policy_profile_code

### 3-9. privileged_route_policy_binding
purpose:
- route / tier / selector / policy の binding

candidate columns:
- privileged_route_policy_binding_id uuid not null
- privileged_route_policy_binding_code text not null
- access_route_id uuid not null
- privilege_tier_id uuid not null
- secret_target_selector_id uuid not null
- privileged_policy_profile_id uuid not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

fk:
- access_route_id -> access_route_master.access_route_id
- privilege_tier_id -> privilege_tier_master.privilege_tier_id
- secret_target_selector_id -> secret_target_selector_master.secret_target_selector_id
- privileged_policy_profile_id -> privileged_policy_profile.privileged_policy_profile_id

unique:
- privileged_route_policy_binding_code
- (access_route_id, privilege_tier_id, secret_target_selector_id)

### 3-10. privileged_access_audit_log
purpose:
- privileged access decision の最小監査ログ

candidate columns:
- privileged_access_audit_log_id uuid not null
- access_route_id uuid not null
- privilege_tier_id uuid null
- secret_target_selector_id uuid null
- secret_target_id uuid null
- decision_status text not null
- reason_code text not null
- requested_at timestamptz not null
- resolved_at timestamptz null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

fk:
- access_route_id -> access_route_master.access_route_id
- privilege_tier_id -> privilege_tier_master.privilege_tier_id
- secret_target_selector_id -> secret_target_selector_master.secret_target_selector_id
- secret_target_id -> secret_target_master.secret_target_id

decision_status fixed v1:
- allowed
- denied
- unresolved
- error

reason_code fixed v1:
- selector_not_found
- insufficient_tier
- eligibility_failed
- target_not_bound
- isolation_blocked
- policy_blocked
- internal_error

## 4. First Slice Excluded
明示的に first slice から除外:
- `secret_asset_relation`
- `secret_asset_index_support`

## 5. Conclusion
本書は exact DDL candidate 起票の直接下敷きとして使える水準まで固定されている。
