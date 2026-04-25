# ============================================================
# CIVILIZATION REQUEST ESCALATION TRIGGER RULE
# ============================================================

status: escalation-trigger-rule
layer: implementation
domain: 018.meta
subdomain: 780.request-aging-and-escalation-pack
document_id: 1201851803
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines when aging or staleness should trigger escalation.

## 2. Escalation Trigger Families

trigger_01:
- name: stale_review_required_detected
- action: escalate for explicit case review

trigger_02:
- name: blocker_visibility_lost
- action: escalate for dependency re-anchoring

trigger_03:
- name: governance_wait_ambiguous
- action: escalate for governed-path clarification

trigger_04:
- name: deferred_case_priority_shift
- action: escalate for portfolio rebalance review

## 3. Trigger Rule

Escalation should occur when waiting status is no longer safely self-explanatory.

## 4. Hard Rule

Escalation does not bypass governance.
It only raises the need for controlled review.

## 5. Acceptance Checklist

- escalation trigger families fixed
- trigger rule fixed
- no-escalation-bypass rule fixed
