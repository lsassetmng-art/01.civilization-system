# ============================================================
# CIVILIZATION PHASE1 REOPEN CRITERIA
# ============================================================

status: governance-rule
layer: implementation
domain: 018.meta
subdomain: 620.decision-revision-and-reconsideration-governance
document_id: 1201850202
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the criteria for reopening phase1 posture for renewed design or execution consideration.

## 2. Reopen Objective

Reopen means:
- the current fixed posture is re-evaluated
- a new decision cycle is explicitly started

## 3. Canonical Reopen Criteria

Phase1 reconsideration may reopen only when at least one is true:

1. a material blocker classification changed
2. a high-priority design gap was resolved or discovered
3. a prior no-resume decision must be reconsidered explicitly
4. phase2 candidate boundary changed materially
5. a new explicit owner decision requires reassessment

## 4. Reopen Output Fields

Required reopen output fields:

- reopen_request_id
- reopen_reason_type
- affected_decision_family
- baseline_decision_ref
- reassessment_scope
- reopen_summary_text

## 5. Hard Rule

Simple passage of time does not count as a reopen reason by itself.

## 6. Acceptance Checklist

- reopen criteria fixed
- reopen output fields fixed
- no-time-only-reopen rule fixed
