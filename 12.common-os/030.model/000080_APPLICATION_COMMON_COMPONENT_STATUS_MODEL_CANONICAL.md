# APPLICATION COMMON COMPONENT STATUS MODEL CANONICAL

status: canonical
system: CommonOS
layer: model
schema_candidate: app_common

## Purpose
This document defines the canonical lifecycle and promotion model for application common component families.

## Main entities
- component_status_registry
- component_status_history
- component_hold_reason

## Canonical statuses
- origin_discovered
- origin_reviewed
- family_normalized
- common_review_pending
- current_wave_accepted
- hold
- implementation_ready
- implemented
- adopted
- superseded
- rejected

## Required fields for component_status_registry
- id
- component_code
- canonical_status
- status_reason
- status_set_at
- status_set_by
- next_action_note
- is_current
- created_at
- updated_at

## Hold reasons examples
- layer_split_needed
- second_consumer_needed
- naming_unstable
- boundary_uncertain
- origin_specificity_too_high
- family_overlap_unresolved

## Interpretation rule
current_wave_accepted means design-canon accepted but not necessarily implemented.
implementation_ready means implementation may begin under CommonOS implementation rules.
