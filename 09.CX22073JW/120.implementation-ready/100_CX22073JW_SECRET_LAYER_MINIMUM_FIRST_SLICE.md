# CX22073JW Secret Layer Minimum First Slice
- project: CX22073JW
- document_type: secret-layer-minimum-first-slice
- status: canonical-fixed
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document fixes the exact minimum scope to be used when drafting the first exact DDL candidate for the secret layer.

## 2. First Slice In
The first slice includes:
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

## 3. First Slice Out
The first slice excludes:
- `secret_asset_relation`
- `secret_asset_index_support`
- any broad payload-history table
- any overextended analytics table

## 4. First Slice Objective
The first slice should be sufficient to express:
- route separation
- privilege tier separation
- target selection
- route-to-target binding
- privileged policy binding
- minimum auditability

## 5. Result
After this document, the next natural step is:
- exact DDL candidate for the first slice
