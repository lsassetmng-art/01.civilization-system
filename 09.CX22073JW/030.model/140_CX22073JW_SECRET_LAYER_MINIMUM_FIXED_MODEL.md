# CX22073JW Secret Layer Minimum Fixed Model
- project: CX22073JW
- document_type: secret-layer-minimum-fixed-model
- status: canonical-fixed
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document fixes the minimum protected model vocabulary for the secret layer.

## 2. Fixed Table Set

### 2-1. Privileged Metadata Side
- `access_route_master`
- `privilege_tier_master`
- `privileged_policy_profile`
- `privileged_route_policy_binding`

### 2-2. Secret Asset Side
- `secret_asset_category_master`
- `secret_asset`
- `secret_target_selector_master`
- `secret_target_master`
- `secret_route_binding`

### 2-3. Audit Side
- `privileged_access_audit_log`

## 3. Fixed Interpretation

### 3-1. `secret_asset`
The main protected object of the secret layer.

### 3-2. `secret_asset_category_master`
The canonical classifier of protected assets.

Fixed v1 category codes:
- `protected_knowledge`
- `protected_reference`
- `protected_template`
- `protected_index_support`

### 3-3. `secret_target_selector_master`
Reusable selector vocabulary used by the privileged route.

### 3-4. `secret_target_master`
Resolved privileged target object registry.

### 3-5. `secret_route_binding`
Binding between privileged route conditions and secret targets.

### 3-6. `access_route_master`
Canonical route vocabulary.

Fixed route codes:
- `normal`
- `triple`

### 3-7. `privilege_tier_master`
Canonical privileged tier vocabulary.

Fixed tier codes:
- `triple_viewer`
- `triple_operator`
- `triple_root`

### 3-8. `privileged_policy_profile`
Privileged route handling semantics profile.

### 3-9. `privileged_route_policy_binding`
Connects route, tier, selector, and privileged policy profile.

### 3-10. `privileged_access_audit_log`
The minimum auditability-ready log object for privileged access handling.

## 4. Deferred Model Objects
Deferred from first slice:
- `secret_asset_relation`
- `secret_asset_index_support`

## 5. Model Rule
This minimum model is now fixed strongly enough to support exact DDL candidate drafting.
