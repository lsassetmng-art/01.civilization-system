# ============================================================
# RETRY AND DEAD-LETTER VISIBILITY COMMON PROMOTION DESIGN
# ============================================================

status: promotion-design
layer: meta
system: applications
application_origin: StreamStudio
component_name: Retry and Dead-Letter Visibility Common
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines the promotion design
for Retry and Dead-Letter Visibility Common.

The purpose of this common component is to provide
a reusable visibility contract and operator-facing surface
for retryable failures, dead-letter states, recovery attempts,
and async job failure review across connector-driven
and queue-driven applications.

This component should not remain permanently StreamStudio-local
because retry and dead-letter visibility
is a reusable operational concern across multiple systems.

---

## 2. Canonical Responsibility

Retry and Dead-Letter Visibility Common is responsible for:

- retryable failure visibility
- dead-letter state visibility
- retry eligibility summary exposure
- failure classification summary exposure
- retry attempt history visibility
- dead-letter review entry points
- operator-facing recovery-state normalization

It is not responsible for:

- queue engine implementation
- connector engine implementation
- background worker implementation
- business-specific recovery policy
- permanent audit storage engine
- auto-retry scheduler implementation

---

## 3. Reuse Scope

reuse_scope:
- connector-driven applications
- async job surfaces
- queue-driven applications
- recovery-oriented operational tools
- governance and reliability dashboards

likely_future_consumers:
- StreamStudio
- external publish/push applications
- marketplace connector tools
- async asset-processing systems
- future reliability and ops surfaces

---

## 4. Core Responsibilities

- expose retryable vs non-retryable failure state
- expose dead-letter summary and count
- expose retry attempt history
- expose latest failure reason summary
- expose recovery entry points where allowed
- support operator-facing failure filtering
- normalize retry and dead-letter state for consumer apps
- support additive recovery-state extensions without rewriting the base contract

---

## 5. Required Input Contract

required_inputs:
- operation_context_id
- operation_type
- current_failure_state
- retry_attempt_count
- retry_limit_or_null
- dead_letter_flag
- retry_eligibility_result
- failure_reason_summary
- failure_timestamp
- permission_context

input_notes:
- operation_context_id should remain stable across retries
- current_failure_state must remain explicit and normalized
- retry_limit_or_null may be profile-specific
- retry_eligibility_result should remain structured, not only inferred from attempt count

---

## 6. Output / Event Contract

emitted_events:
- retry_visibility_opened
- retry_requested
- retry_started
- retry_succeeded
- retry_failed
- dead_letter_open_requested
- dead_letter_marked
- dead_letter_cleared
- recovery_action_denied
- retry_history_view_requested
- retry_visibility_closed

output_notes:
- retry_requested and retry_started must remain separate
- retry_succeeded and retry_failed must remain explicit
- dead-letter entry and clearance actions should remain structured
- denied recovery actions must remain visible

---

## 7. State Model

normalized_state_model:
- operation_ok
- operation_retryable_failed
- operation_retry_in_progress
- operation_retry_succeeded
- operation_retry_failed
- operation_dead_lettered
- operation_recovery_blocked
- operation_recovery_closed

state_model_notes:
- operation_dead_lettered is distinct from operation_retry_failed
- operation_recovery_blocked is distinct from retry_ineligible
- retry_succeeded should not erase prior history visibility
- dead-letter clearance should remain explicit and auditable

---

## 8. Permission Assumptions

permission_assumptions:
- caller must already be allowed to view retry/dead-letter state
- caller must already be allowed to trigger retry or recovery where applicable
- recovery permission is not equivalent to connector configuration permission
- recovery permission is not equivalent to business approval permission

permission_boundary_note:
This component assumes a validated operational permission context,
but it should not become the canonical global permission engine.

---

## 9. Retry / Dead-Letter Boundary

minimum_operational_concepts:
- operation_context_id
- operation_type
- failure_state
- retry_attempt_count
- retry_limit_or_null
- retry_eligibility_result
- dead_letter_flag
- latest_failure_reason
- latest_failure_timestamp

optional_operational_concepts_by_profile:
- next_retry_eta
- manual_retry_only_marker
- auto_retry_disabled_marker
- dead_letter_bucket_label
- operator_note_summary

boundary_note:
Optional recovery concepts may vary by app profile,
but the common contract should remain retry/dead-letter visibility oriented
instead of app-screen oriented.

---

## 10. UI / Behavior Boundary

allowed_common_surface_behavior:
- retry status summary strip
- latest failure reason summary
- retry action area
- retry history summary
- dead-letter indicator
- recovery blocker summary
- operator-facing filter controls

must_not_be_baked_in:
- StreamStudio-specific wording
- StreamStudio-specific connector names
- queue-engine implementation detail
- worker-runtime implementation detail
- app-specific operational copy
- auto-retry scheduler logic detail

---

## 11. Failure / Recovery Design Notes

failure_and_recovery_notes:
- retry failure must remain distinguishable from dead-letter transition
- retry history must remain visible after later success
- dead-letter state must remain explicit and not inferred from retry exhaustion only
- manual recovery denial must remain explicit
- failure summaries should degrade safely when low-level error detail is unavailable

---

## 12. Relationship to Other Common Candidates

related_common_candidates:
- External Push Connector Common
- Upload Intake Common
- Audit Reconstruction Bundle Common

relationship_notes:
- External Push Connector Common handles outbound connector boundary and push behavior
- Upload Intake Common may surface retryable upload failures, but should not own broader dead-letter visibility
- Audit Reconstruction Bundle Common may preserve deeper traceability beyond the visibility layer handled here

---

## 13. Promotion Caution

promotion_caution:
- do not merge visibility with queue-engine ownership
- do not merge dead-letter visibility with business recovery policy logic
- do not hard-code StreamStudio-specific connector semantics
- do not assume one retry scheduler implementation
- do not collapse retryable failure and dead-letter state into one state

---

## 14. Initial Promotion Judgment

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
- recommended_next_relation_review:
  - External Push Connector Common
  - Audit Reconstruction Bundle Common
  - Upload Intake Common

---

## 15. Final Note

This design defines Retry and Dead-Letter Visibility Common
as a reusable contract-first common component candidate.

It is ready to be treated
as an official promotion-design unit
for later shared-component adoption review.
