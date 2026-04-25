# ============================================================
# CIVILIZATION REQUEST STATE TRANSITION MATRIX
# ============================================================

status: transition-matrix
layer: implementation
domain: 018.meta
subdomain: 750.request-lifecycle-and-ledger-pack
document_id: 1201851502
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the allowed transition matrix for request lifecycle states.

## 2. Transition Matrix

transition_01:
- from: received
- to: classified

transition_02:
- from: classified
- to: routed

transition_03:
- from: routed
- to: active_handling

transition_04:
- from: routed
- to: stopped_safe

transition_05:
- from: active_handling
- to: unresolved_open

transition_06:
- from: active_handling
- to: resolved_closed

transition_07:
- from: unresolved_open
- to: active_handling

transition_08:
- from: unresolved_open
- to: stopped_safe

transition_09:
- from: resolved_closed
- to: handed_off_for_future_reference

transition_10:
- from: stopped_safe
- to: handed_off_for_future_reference

## 3. Transition Rule

Only matrix-listed transitions are allowed.

## 4. Hard Rule

Do not skip:
- classified
or
- routed

when reconstructing lifecycle history.

## 5. Acceptance Checklist

- transition matrix fixed
- transition rule fixed
- no-intake-to-close skipping rule fixed
