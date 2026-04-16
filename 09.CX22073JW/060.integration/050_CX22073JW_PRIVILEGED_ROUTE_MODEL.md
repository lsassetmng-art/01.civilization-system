# CX22073JW Privileged Route Model
- project: CX22073JW
- document_type: privileged-route-model
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document defines the integration interpretation of the triple-only privileged route.

## 2. Normal Route vs Privileged Route

### 2-1. Normal Route
Used by:
- portal
- apps
- workers
- support flows
- study/consult flows

Main keys:
- caller_code
- requested_scope
- route_policy

### 2-2. Privileged Triple Route
Used by:
- triple-only privileged access path

Main keys:
- access_route
- privilege_tier
- secret_eligibility
- target_selector

## 3. Core Separation
The privileged route is not merely a stronger normal route.
It is a separated integration lane.

That means:
- it should not be assumed from ordinary caller/scope access
- it should not be resolved by ordinary scope routing alone
- it should not inherit ordinary public/reference visibility assumptions

## 4. Future Integration Concepts
Future deeper integration work may require:
- privileged route resolver
- secret target selector
- access decision layer
- privileged audit hook
- secret access traceability

## 5. App/System Assumption
Ordinary applications should not assume direct access to secret targets.
Any secret-capable interaction must be explicitly modeled as privileged-route aware.

## 6. Conclusion
The privileged triple route is a separate integration model and should be designed as such from the beginning.
