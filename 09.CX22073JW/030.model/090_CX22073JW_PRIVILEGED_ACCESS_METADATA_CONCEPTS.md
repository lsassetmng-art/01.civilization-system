# CX22073JW Privileged Access Metadata Concepts
- project: CX22073JW
- document_type: privileged-access-metadata-concepts
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document defines candidate metadata concepts needed for privileged access handling in CX22073JW.

## 2. Why Metadata Matters
The triple-only route cannot rely only on:
- caller_code
- requested_scope
- route_policy

It needs privileged-route-specific metadata.

## 3. Candidate Metadata Concepts

### 3-1. access_route
Meaning:
- which access lane is being used

Expected values:
- normal
- triple

### 3-2. privilege_tier
Meaning:
- privileged level associated with the request context

Purpose:
- distinguish stronger and weaker privileged eligibility states

### 3-3. secret_eligibility
Meaning:
- whether the request context is eligible for secret-layer access

Purpose:
- explicit privileged gating concept

### 3-4. secret_target_selector
Meaning:
- a selector that identifies the intended privileged target class or area

Purpose:
- avoid vague privileged retrieval assumptions

### 3-5. route_isolation_flag
Meaning:
- indicates that the route belongs to isolated privileged handling

Purpose:
- prevent blending with ordinary routing semantics

### 3-6. privileged_audit_required
Meaning:
- whether access handling must preserve audit-oriented trace readiness

Purpose:
- make privileged handling visible in design terms

## 4. Metadata Role Split

### Normal Metadata
- caller_code
- requested_scope
- route_policy
- disclaimer / style / retrieval metadata

### Privileged Metadata
- access_route
- privilege_tier
- secret_eligibility
- secret_target_selector
- route_isolation_flag
- privileged_audit_required

## 5. Design Rule
Privileged metadata must not be implicit.
It must be first-class and explicit in future deeper design.

## 6. Non-Substitution Rule
Privileged metadata does not replace normal routing metadata.
It exists in addition to it, for the privileged lane.

## 7. Conclusion
Future secret-layer design must include explicit privileged access metadata concepts before exact implementation begins.
