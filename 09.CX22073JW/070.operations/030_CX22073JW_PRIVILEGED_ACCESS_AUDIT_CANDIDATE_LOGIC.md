# CX22073JW Privileged Access Audit Candidate Logic
- project: CX22073JW
- document_type: privileged-access-audit-candidate-logic
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document records candidate audit logic concepts for future triple-route privileged handling.

## 2. Current Principle
At this stage, exact audit tables are not fixed.
What is fixed is the audit logic direction.

## 3. Candidate Audit Logic Areas

### 3-1. privileged access attempt concept
Meaning:
- a privileged route access attempt exists as a distinct event class

Why:
- to keep normal access and privileged access conceptually separate

### 3-2. route distinction concept
Meaning:
- audit logic must preserve whether the route was normal or triple

Why:
- the core design premise depends on route separation

### 3-3. privilege tier participation concept
Meaning:
- audit logic must preserve which privilege tier context was involved

Why:
- secret eligibility and scope of privilege must remain explainable

### 3-4. secret target selection concept
Meaning:
- audit logic must preserve which target selector or secret target class was involved

Why:
- broad unspecified secret access is not acceptable as a design assumption

### 3-5. isolation-sensitive handling concept
Meaning:
- audit logic must preserve that secret handling was treated as isolated

Why:
- secret isolation is a core policy premise

### 3-6. audit-required decision marker
Meaning:
- some privileged actions/attempts may be marked as audit-required by policy

Why:
- privileged route handling should be policy-visible

## 4. Candidate Future Audit Objects
Possible future audit-oriented objects:
- privileged access attempt log
- privileged decision marker
- secret target selection trace
- privileged route handling summary
- isolated handling marker log

## 5. Non-Confusion Rule
Privileged audit logic is not the same as:
- ordinary analytics
- ordinary session logs
- ordinary question patterns
- ordinary helper usage logging

## 6. Current Use
This document is for readiness and design control.
It does not imply immediate audit-table implementation.

## 7. Conclusion
The triple route should remain auditability-ready by design, even before exact audit storage is created.
