# ============================================================
# CIVILIZATION REQUEST RESOLUTION RULE
# ============================================================

status: resolution-rule
layer: implementation
domain: 018.meta
subdomain: 740.request-resolution-and-closure-pack
document_id: 1201851401
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the rule for resolving a request after intake and routing are complete.

## 2. Resolution Objective

Resolution must preserve:

- the active canonical posture
- the routed path selected at intake
- the semantic vs non-semantic boundary
- the no-shortcut and conformance rules
- explicit end-state clarity

## 3. Resolution Rule

Every routed request should resolve through exactly one of:

- read_only_confirmation_completed
- nonsemantic_alignment_completed
- recovery_completed
- governed_change_preparation_completed
- safely_stopped_without_resolution

## 4. Resolution Preconditions

Before a request is treated as resolved, confirm:

1. routed path was explicit
2. no later shortcut replaced the routed path
3. resulting posture meaning is explicit
4. closure or follow-up need is explicit

## 5. Hard Rule

A request is not resolved merely because work started.
It is resolved only when one explicit resolution state is reached.

## 6. Acceptance Checklist

- resolution objective fixed
- resolution rule fixed
- resolution preconditions fixed
- no-start-equals-resolution rule fixed
