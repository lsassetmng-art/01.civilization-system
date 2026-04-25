# ============================================================
# SKILL ACQUISITION AND PROFICIENCY
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: skill
document_id: 1204600002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines skill acquisition, proficiency, progression, and decay.

## 2. Scope

This document covers:
- skill definition
- skill acquisition
- proficiency
- progression
- decay or loss

## 3. Canonical Source Of Truth

Skill truth remains distinct from certification and reward truth.

## 4. Exact Table Set

- skill_definition
- skill_acquisition
- skill_proficiency
- skill_progression
- skill_decay_or_loss

## 5. Exact Request / Response

Skill acquisition and proficiency mutation are explicit operations.

## 6. Exact Command / Event

Typical events:
- skill.acquired
- skill.proficiency_changed
- skill.progressed
- skill.decayed

## 7. Authorization Boundary

Reviewed skill override or correction requires appropriate authority.

## 8. State Machine

Skill states:
- UNACQUIRED
- ACQUIRED
- PROFICIENT
- ADVANCED
- DECAYED

## 9. Transaction Boundary

Proficiency update must commit before downstream use or recommendation depends on it.

## 10. Idempotency

Repeated acquisition or proficiency update for same revision must be safe.

## 11. Audit Trace

Reviewed correction and forced decay/restoration must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_SKILL_ACQUISITION_INVALID
- STATE_SKILL_PROGRESSION_FORBIDDEN
- ACCESS_SKILL_OVERRIDE_FORBIDDEN

## 13. Observability

Skill posture and proficiency lineage must remain visible.

## 14. Failure / Recovery

- acquisition and proficiency are separate
- skill is not identical to certification
- progression and decay must preserve trace

## 15. Acceptance Checklist

- acquisition/proficiency split fixed
- certification split fixed
- decay trace fixed
