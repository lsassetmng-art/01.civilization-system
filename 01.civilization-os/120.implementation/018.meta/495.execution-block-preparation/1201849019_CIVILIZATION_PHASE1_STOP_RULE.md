# ============================================================
# CIVILIZATION PHASE1 STOP RULE
# ============================================================

status: execution-phase-roadmap
layer: implementation
domain: 018.meta
subdomain: 495.execution-block-preparation
document_id: 1201849019
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines where phase 1 authoring or execution must stop.

## 2. Phase 1 Stop Conditions

Phase 1 must stop immediately when any of the following occurs:

- scope widens beyond common implementation foundation
- DB subset widens beyond the declared phase 1 subset
- block class separation is violated
- environment declaration becomes ambiguous
- Persona direct-update prohibition becomes unclear
- blocker count becomes non-zero
- verify or report posture becomes implicit

## 3. Stop And Preserve Rule

When a stop condition is reached:
- stop further authoring or execution
- preserve already valid artifacts
- emit report or note of exact stop reason
- do not silently continue

## 4. No-Convenience Rule

Do not continue phase 1 merely because the next step looks easy or nearby.
Phase 1 remains bound to its declared stop rules.

## 5. Acceptance Checklist

- stop conditions fixed
- stop-and-preserve rule fixed
- no-convenience rule fixed
