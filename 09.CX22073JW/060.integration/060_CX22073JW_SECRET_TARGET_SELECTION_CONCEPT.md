# CX22073JW Secret Target Selection Concept
- project: CX22073JW
- document_type: secret-target-selection-concept
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document defines the concept of secret target selection for the triple-only privileged route.

## 2. Problem
A privileged route is not useful if the design does not distinguish:
- general privileged existence
from
- the specific secret-bearing target intended by a request

## 3. Secret Target Selection
Secret target selection means:
- the request must identify a privileged target class or target selector
- privileged routing must resolve that target intentionally
- secret access must not default to broad unspecified visibility

## 4. Why It Matters
Without secret target selection:
- route separation becomes blurry
- secret isolation weakens
- auditability becomes vague
- future model expansion becomes unstable

## 5. Candidate Selection Inputs
Future privileged selection may use concepts such as:
- access_route = triple
- privilege_tier
- secret_eligibility
- secret_target_selector
- secret asset category
- requested privileged objective

## 6. Integration Rule
Normal caller/scope integration is not sufficient to express secret target selection.
Privileged selection must be treated as an additional integration layer.

## 7. Output of Selection
Future deeper design should assume that privileged selection resolves:
- selected secret target class
- selected secret-bearing asset or asset group
- policy-isolated handling path

## 8. Conclusion
Secret target selection is a required concept for making the triple route concrete and controlled.
