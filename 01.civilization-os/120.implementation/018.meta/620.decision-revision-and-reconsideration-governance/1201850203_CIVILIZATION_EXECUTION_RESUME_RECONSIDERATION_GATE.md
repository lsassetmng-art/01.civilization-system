# ============================================================
# CIVILIZATION EXECUTION RESUME RECONSIDERATION GATE
# ============================================================

status: governance-gate
layer: implementation
domain: 018.meta
subdomain: 620.decision-revision-and-reconsideration-governance
document_id: 1201850203
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the explicit gate for reconsidering execution resume.

## 2. Resume Reconsideration Preconditions

Execution resume may be reconsidered only when:

- a reopen request exists
- the affected scope is explicit
- blocker posture was re-evaluated
- design completion delta is explicit
- no silent widening risk is accepted

## 3. Gate Output Fields

Required fields:

- resume_reconsideration_gate_id
- resume_scope
- blocker_recheck_result
- widening_risk_result
- resume_reconsideration_result
- gate_summary_text

## 4. Canonical resume_reconsideration_result Values

- still_do_not_resume
- eligible_for_explicit_resume_decision
- blocked_do_not_resume

## 5. Hard Rule

Passing reconsideration gate is not the same as approval to resume.

## 6. Acceptance Checklist

- resume reconsideration preconditions fixed
- gate output fields fixed
- no-gate-equals-approval rule fixed
