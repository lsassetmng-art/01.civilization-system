# ============================================================
# CIVILIZATION UNRESOLVED REQUEST HANDLING RULE
# ============================================================

status: unresolved-rule
layer: implementation
domain: 018.meta
subdomain: 740.request-resolution-and-closure-pack
document_id: 1201851403
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines how to handle requests that cannot yet be resolved safely.

## 2. Unresolved Request Cases

Treat a request as unresolved when:

- routing succeeded but completion criteria are not yet met
- recovery is still required
- governed change preparation is not yet completed
- insufficient context remains after first intake
- safe refusal was triggered and no valid re-entry exists yet

## 3. Handling Rule

When unresolved:

1. do not force closure
2. preserve the last safe routed state
3. record what prevents completion
4. state the correct next allowed path

## 4. Canonical unresolved_state Values

- unresolved_waiting_recovery
- unresolved_waiting_governed_preparation
- unresolved_waiting_context_reanchor
- unresolved_stopped_pending_valid_reentry

## 5. Hard Rule

Unresolved status is better than false closure.

## 6. Acceptance Checklist

- unresolved request cases fixed
- handling rule fixed
- unresolved state values fixed
- no-false-closure rule fixed
