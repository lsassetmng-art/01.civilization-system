# ============================================================
# CIVILIZATION BLOCKED BY DEPENDENCY HANDLING RULE
# ============================================================

status: blocked-dependency-rule
layer: implementation
domain: 018.meta
subdomain: 770.request-dependency-and-overlap-pack
document_id: 1201851705
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines how blocked_by request dependencies are handled.

## 2. Blocked-By Objective

Blocked-by handling must preserve:

- visible reason for waiting
- no accidental active progression
- no silent dependency disappearance
- explicit next allowed path

## 3. Blocked-By Handling Rule

When a request is blocked_by another case:

1. mark the dependency explicitly
2. assign a non-active queue state
3. preserve the blocker case reference
4. preserve the next allowed path after blocker clearance

## 4. Required Outputs

Required outputs:

- dependency_handling_id
- blocked_case_id
- blocker_case_id
- blocker_relation_type
- queue_state_assigned
- next_allowed_path
- dependency_summary_text

## 5. Hard Rule

Blocked requests must not be represented as active-safe-handling items.

## 6. Acceptance Checklist

- blocked-by objective fixed
- blocked-by handling rule fixed
- required outputs fixed
- no-blocked-as-active rule fixed
