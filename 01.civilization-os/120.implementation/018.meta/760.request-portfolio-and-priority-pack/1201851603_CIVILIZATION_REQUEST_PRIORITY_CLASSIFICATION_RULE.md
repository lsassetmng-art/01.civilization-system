# ============================================================
# CIVILIZATION REQUEST PRIORITY CLASSIFICATION RULE
# ============================================================

status: priority-rule
layer: implementation
domain: 018.meta
subdomain: 760.request-portfolio-and-priority-pack
document_id: 1201851603
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines how request cases receive priority without breaking canonical governance.

## 2. Canonical Priority Classes

Canonical priority classes are:

- priority_p0_recovery_blocking
- priority_p1_governance_blocking
- priority_p2_active_safe_handling
- priority_p3_deferred_safe_handling
- priority_p4_reference_only

## 3. Priority Classification Rule

Priority should be determined by:

1. risk to canonical posture
2. need for recovery before safe progress
3. governance dependency
4. safe handling readiness
5. reference-only nature

## 4. Priority Interpretation

priority_p0_recovery_blocking:
- drift, wrong-start, or confusion blocks safe continuation

priority_p1_governance_blocking:
- semantic change intent exists but governed path is not yet prepared

priority_p2_active_safe_handling:
- safe active handling may proceed now

priority_p3_deferred_safe_handling:
- safe postponement is acceptable

priority_p4_reference_only:
- read-only confirmation or archival reference use only

## 5. Hard Rule

Priority must not be assigned from emotional urgency wording alone.

## 6. Acceptance Checklist

- canonical priority classes fixed
- priority classification rule fixed
- priority interpretation fixed
- no-emotional-urgency-only rule fixed
