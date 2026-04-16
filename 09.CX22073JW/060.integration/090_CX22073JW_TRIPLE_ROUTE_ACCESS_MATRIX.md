# CX22073JW Triple Route Access Matrix
- project: CX22073JW
- document_type: triple-route-access-matrix
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document fixes the first access matrix interpretation for the triple route.

## 2. Matrix

| access_route | privilege_tier | selector required | target required | policy profile required | audit required | interpretation |
|---|---|---|---|---|---|---|
| normal | none | no | no | normal route_policy side | optional normal logic | ordinary route |
| triple | triple_viewer | yes | resolved target required | yes | yes | privileged read lane |
| triple | triple_operator | yes | resolved target required | yes | yes | privileged operational lane |
| triple | triple_root | yes | resolved target required | yes | yes | highest privileged lane |

## 3. Rules
- triple route always requires selector semantics
- triple route never assumes broad unspecified secret visibility
- triple route always remains policy-bound
- triple route is always auditability-ready by design

## 4. Non-Rule
This matrix is not yet a permission engine.
It is a canonical design interpretation for exact implementation work.

## 5. Conclusion
The triple route is strict by default and explicitly structured by tier, selector, target, and policy.
