# CX22073JW Secret Layer Fixed Decisions
- project: CX22073JW
- document_type: secret-layer-fixed-decisions
- status: canonical-fixed
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document fixes the previously unresolved design choices for the triple-only secret layer.

## 2. Fixed Decisions

### 2-1. Secret Layer Name
The formal layer name is:
- `triple_secret_layer`

### 2-2. Access Route Code
The formal privileged route code is:
- `triple`

The standard route remains:
- `normal`

### 2-3. Secret Category Codes v1
The formal secret asset category codes are:
- `protected_knowledge`
- `protected_reference`
- `protected_template`
- `protected_index_support`

These four are fixed as v1.

### 2-4. Privilege Tier Codes v1
The formal privilege tier codes are:
- `triple_viewer`
- `triple_operator`
- `triple_root`

Meaning:
- `triple_viewer`
  - privileged read within allowed selector/target scope
- `triple_operator`
  - privileged operational handling and route/binding level work
- `triple_root`
  - highest privileged administration level

### 2-5. First Slice Table Scope
The formal minimum first slice for secret-layer implementation is:
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

### 2-6. Deferred Tables
The following are formally deferred from the first slice:
- `secret_asset_relation`
- `secret_asset_index_support`

They remain valid future additions, but not first-slice requirements.

## 3. Why These Were Fixed This Way
### 3-1. Category Count
Four categories are enough for v1 while keeping the model explicit and extensible.

### 3-2. Tier Count
Three tiers are enough for v1 while avoiding false precision.

### 3-3. First Slice
The first slice must be:
- small
- explicit
- privilege-aware
- route-aware
- auditability-ready

## 4. Final Rule
From this point onward, these items are no longer treated as open questions.
They are fixed design premises.
