# CX22073JW Secret Layer ER Draft
- project: CX22073JW
- document_type: secret-layer-er-draft
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document provides a text-level ER draft for the future secret layer.

## 2. Main Candidate Entities
- secret_asset
- secret_asset_category_master
- secret_target_master
- secret_route_binding
- secret_asset_relation
- secret_asset_index_support

## 3. Privileged Metadata Side
- access_route_master
- privilege_tier_master
- secret_eligibility_profile
- secret_target_selector_master
- privileged_policy_profile
- privileged_route_policy_binding

## 4. Draft Relationships

### 4-1. secret_asset_category_master -> secret_asset
One category may classify many secret assets.

Interpretation:
- reusable privileged category vocabulary
- keeps protected objects classifiable without normal-layer reuse assumptions

### 4-2. secret_target_master -> secret_asset_category_master
One secret target may point to one main target class/category.
A category may be reachable by multiple target selectors.

Interpretation:
- target selection is not the same as asset storage

### 4-3. secret_route_binding -> secret_target_master
One route binding resolves toward one target selector/target.
A target may be bound by multiple privileged route conditions.

Interpretation:
- route semantics stay explicit

### 4-4. secret_asset_relation -> secret_asset
One secret asset may relate to another secret asset.

Interpretation:
- protected internal structure remains inside secret layer

### 4-5. secret_asset_index_support -> secret_asset
One secret asset may have zero or more index/summary optimization support rows.

Interpretation:
- AI/storage/index support remains attached to privileged asset side

### 4-6. privilege_tier_master -> secret_eligibility_profile
One privilege tier may back multiple eligibility profiles.

### 4-7. secret_target_selector_master -> secret_target_master
Selector vocabulary resolves into target model objects.

### 4-8. privileged_policy_profile -> privileged_route_policy_binding
Policy profile governs how privileged route binding behaves.

## 5. Text ER Summary
A privileged request conceptually resolves:
- access_route
- privilege_tier
- eligibility
- target selector
- policy profile
then may reach:
- target class
- protected secret asset set
with optional:
- relation graph
- index support graph

## 6. Rule
This ER draft is still conceptual.
It is meant to stabilize structure before exact tables/columns are chosen.

## 7. Conclusion
The secret layer should be designed as a small but explicit protected ER subset,
not as an afterthought appended onto normal-layer tables.
