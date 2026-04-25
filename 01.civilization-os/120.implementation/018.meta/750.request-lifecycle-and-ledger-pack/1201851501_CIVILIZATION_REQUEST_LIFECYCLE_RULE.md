# ============================================================
# CIVILIZATION REQUEST LIFECYCLE RULE
# ============================================================

status: lifecycle-rule
layer: implementation
domain: 018.meta
subdomain: 750.request-lifecycle-and-ledger-pack
document_id: 1201851501
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the canonical lifecycle rule for future requests
after intake, routing, and resolution logic are fixed.

## 2. Lifecycle Objective

The request lifecycle must preserve:

- explicit state visibility
- no disappearance of active request handling
- explicit separation between active, unresolved, stopped, and closed states
- safe later reference to past handled requests

## 3. Canonical Lifecycle States

Canonical lifecycle states are:

- received
- classified
- routed
- active_handling
- unresolved_open
- resolved_closed
- stopped_safe
- handed_off_for_future_reference

## 4. Lifecycle Rule

Every request must always have one visible lifecycle state.

A request may move forward only through an explicit state transition.
It must not silently jump from intake to closure.

## 5. Lifecycle End Rule

A request lifecycle may end only as one of:

- resolved_closed
- stopped_safe
- handed_off_for_future_reference

unresolved_open is not an end state.

## 6. Hard Rule

No request should become historically invisible after handling.

## 7. Acceptance Checklist

- lifecycle objective fixed
- canonical lifecycle states fixed
- lifecycle rule fixed
- lifecycle end rule fixed
- no-historical-invisibility rule fixed
