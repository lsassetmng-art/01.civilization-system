# CX22073JW Architecture Principles
- project: CX22073JW
- document_type: architecture-principles
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Core Principle
CX22073JW is a knowledge/reference foundation, not a runtime transaction store.

It stores reusable knowledge, references, and templates,
while also including an embedded AI layer for storage and structure optimization.

## 2. Boundary Principle
- fixed knowledge -> CX22073JW
- reference / benchmark / classification -> CX22073JW
- reusable template -> CX22073JW
- storage/index/summary optimization intelligence -> CX22073JW
- triple-only secret layer -> CX22073JW privileged route
- user runtime data -> app-side schema
- workflow runtime status -> app-side / business-side schema

## 3. Access Principle
Every normal consumer should resolve access through:
- caller_code
- requested_scope
- route_policy

Privileged routes must additionally consider:
- access_route
- privilege_tier
- secret eligibility

## 4. Expansion Principle
Expansion must be additive.
Do not break existing consumers when adding:
- new profiles
- new reference domains
- new templates
- new routing metadata
- new optimization helpers
- new summary/index support assets
- new privileged secret layers

## 5. Documentation Principle
At root and at each major folder:
- overview required
- index required

This keeps long-term design readability.

## 6. Embedded AI Principle
The embedded AI of CX22073JW should be treated as a foundation intelligence layer.

It is allowed to help with:
- structure optimization
- storage arrangement optimization
- indexing assistance
- summarization assistance
- retrieval readiness improvement

It is not primarily responsible for:
- direct end-user conversation as a front full agent
- workflow execution control
- per-user runtime judgment storage

## 7. Privileged Route Principle
The triple-only route is not a variant of ordinary consumer access.
It is a separated privileged path.

It should be treated as:
- route-separated
- policy-bound
- secret-eligible
- narrowly scoped

## 8. Secret Isolation Principle
Future secret information accessible via triple route must remain isolated from:
- standard caller/scope routing
- ordinary application-facing read paths
- public/reference-style access assumptions

## 9. Non-Confusion Principle
The presence of AI inside CX22073JW must not blur the boundary between:
- foundation intelligence
and
- application runtime intelligence

Likewise, the presence of a privileged triple route must not blur the boundary between:
- normal reusable knowledge/reference access
and
- restricted secret access

## 10. Long-Term Principle
CX22073JW should evolve as:
- a stronger canonical storage foundation
- a smarter organization/indexing substrate
- a reusable reference intelligence base
- a controlled privileged secret-bearing foundation
without turning into a general runtime operations database.
