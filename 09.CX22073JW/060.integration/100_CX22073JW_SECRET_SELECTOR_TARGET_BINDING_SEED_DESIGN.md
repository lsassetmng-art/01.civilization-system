# CX22073JW Secret Selector / Target / Binding Seed Design
- project: CX22073JW
- document_type: secret-selector-target-binding-seed-design
- status: implementation-ready-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document defines how environment-specific privileged selector/target/binding data should be seeded after the canonical first-slice tables exist.

## 2. Why This Seed Is Environment-Specific
The following are not universal architectural constants:
- secret target selector values
- secret target values
- route-to-target bindings
- route-to-policy bindings

They depend on the actual privileged operating model of the environment.

## 3. Seed Order
Recommended order:
1. `secret_target_selector_master`
2. `secret_target_master`
3. `secret_route_binding`
4. `privileged_route_policy_binding`

## 4. Selector Design Rule
A selector should represent a stable privileged target vocabulary unit.

Good selector examples:
- one bounded privileged target family
- one bounded protected domain selector
- one bounded operational objective selector

Bad selector examples:
- vague catch-all labels
- mixed public/secret meanings
- selectors that imply broad unrestricted access

## 5. Target Design Rule
A target should represent the resolved privileged target unit or target registry object.

A target should be:
- explicit
- bounded
- route-resolvable
- category-aware

## 6. Binding Design Rule
A binding should express:
- which route
- which privilege tier
- which target
- which policy

This must remain explicit, not implicit.

## 7. Minimal Seed Strategy
For initial rollout, seed only the minimum controlled set:
- 1 to 3 selectors
- 1 to 3 targets
- corresponding bindings
- policy bindings for those selectors

Do not start from a broad target universe.

## 8. Category Alignment Rule
Every target should align with one of the fixed v1 categories:
- `protected_knowledge`
- `protected_reference`
- `protected_template`
- `protected_index_support`

## 9. Implementation Rule
Seed data should be:
- idempotent
- code-based
- reviewable
- environment-bounded

## 10. Conclusion
Selector/target/binding seed is the bridge from canonical schema to actual privileged operation.
