# ============================================================
# CIVILIZATION PHASE2 ENTRY RECONSIDERATION GATE
# ============================================================

status: governance-gate
layer: implementation
domain: 018.meta
subdomain: 620.decision-revision-and-reconsideration-governance
document_id: 1201850204
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the explicit gate for reconsidering phase2 entry posture.

## 2. Entry Reconsideration Preconditions

Phase2 entry may be reconsidered only when:

- a reopen request exists
- the narrowed phase2 candidate still remains bounded
- entry gate assumptions are rechecked
- transition blocker posture is re-evaluated
- no extra family has been silently added

## 3. Gate Output Fields

Required fields:

- phase2_entry_reconsideration_gate_id
- candidate_name
- boundary_recheck_result
- transition_blocker_recheck_result
- entry_reconsideration_result
- gate_summary_text

## 4. Canonical entry_reconsideration_result Values

- still_do_not_prepare_transition
- eligible_for_explicit_entry_decision
- blocked_do_not_prepare_transition

## 5. Hard Rule

A preserved candidate does not automatically become an approvable entry package.

## 6. Acceptance Checklist

- entry reconsideration preconditions fixed
- gate output fields fixed
- no-candidate-equals-entry rule fixed
