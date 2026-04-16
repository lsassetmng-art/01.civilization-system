# CX22073JW Secret Layer Exact DDL Drafting Order
- project: CX22073JW
- document_type: secret-layer-exact-ddl-drafting-order
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document fixes the order for drafting the first exact DDL candidate.

## 2. Drafting Order

### Step 1. Metadata Base
Draft first:
- `access_route_master`
- `privilege_tier_master`

Reason:
- all privileged structures depend on route/tier vocabulary

### Step 2. Secret Category / Selector Base
Draft second:
- `secret_asset_category_master`
- `secret_target_selector_master`

Reason:
- asset and target side need stable vocabulary first

### Step 3. Secret Core Objects
Draft third:
- `secret_asset`
- `secret_target_master`

Reason:
- core protected objects and target registry come next

### Step 4. Binding Layer
Draft fourth:
- `secret_route_binding`
- `privileged_policy_profile`
- `privileged_route_policy_binding`

Reason:
- route-to-target-to-policy semantics can then be expressed cleanly

### Step 5. Audit Layer
Draft fifth:
- `privileged_access_audit_log`

Reason:
- audit references the already-fixed privileged vocabulary

## 3. Drafting Rule
Do not begin from:
- audit table first
- copied normal-layer tables
- hidden privileged columns in ordinary tables

## 4. Output Goal
After following this order, the result should be:
- one coherent first-slice DDL candidate
- not a fragmented experimental patch set

## 5. Conclusion
Exact DDL should be drafted from vocabulary outward, not from logs backward.
