# ============================================================
# CIVILIZATION PHASE2 CANDIDATE BOUNDARY NARROWED PROPOSAL
# ============================================================

status: exact-design
layer: implementation
domain: 018.meta
subdomain: 580.phase1-close-recommendation-and-phase2-narrowing
document_id: 1201849803
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the narrowed proposal for the first explicit phase2 candidate.

## 2. Primary Proposed Phase2 Candidate

Proposed candidate name:

- phase2_action_scope_and_error_code_db_apply_ready_package

## 3. Primary Objective

Convert the already-designed action scope and error code family
into the first bounded DB-apply-ready package.

## 4. Inclusion Boundary

Include only:

- action_scope_master exact DB package
- error_code exact DB package
- required verification hooks for that package
- required report fields for that package

## 5. Exclusion Boundary

Explicitly exclude:

- outbox apply
- inbox apply
- audit apply
- verify-view apply
- wider runtime execution
- marketplace / government / law / education / career expansion

## 6. Entry Criteria

This narrowed phase2 candidate may start only when:

- phase1 close recommendation is explicit
- transition readiness is explicitly judged
- entry criteria for the package are fixed
- blocker posture is acceptable

## 7. Stop Criteria

Stop when:

- action_scope/error_code exact package boundary is exceeded
- additional DB families try to enter the same phase2 package
- unresolved blocker count rises above acceptable level

## 8. Acceptance Checklist

- primary phase2 candidate fixed
- inclusion boundary fixed
- exclusion boundary fixed
- entry/stop criteria fixed
