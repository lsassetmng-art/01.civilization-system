# ============================================================
# CIVILIZATION QUEUE ADMISSION AND DEFERRAL RULE
# ============================================================

status: admission-deferral-rule
layer: implementation
domain: 018.meta
subdomain: 760.request-portfolio-and-priority-pack
document_id: 1201851604
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines when a request enters active queue handling
and when it should be deferred safely.

## 2. Admission Rule

A request may be admitted to active handling only when:

- intake classification is explicit
- routing is explicit
- baseline relevance is understood
- no prohibited shortcut is unresolved
- required recovery or governed preparation does not remain pending

## 3. Deferral Rule

A request should be deferred when:

- safe progress is possible later without semantic risk
- recovery is pending but not yet complete
- governed preparation is needed before action
- current request is read-only and non-urgent

## 4. Canonical Deferral Outputs

Required outputs:

- queue_decision_id
- admission_result
- deferral_reason_type
- queue_state_assigned
- next_allowed_path
- queue_decision_summary_text

admission_result values:
- admitted_active
- deferred_safe
- not_admitted_pending_recovery
- not_admitted_pending_governance
- not_admitted_safe_stop

## 5. Hard Rule

Deferral is not neglect.
It is a governed queue-state decision.

## 6. Acceptance Checklist

- admission rule fixed
- deferral rule fixed
- canonical deferral outputs fixed
- deferral-is-not-neglect rule fixed
