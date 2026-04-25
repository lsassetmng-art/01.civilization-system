# ============================================================
# CIVILIZATION INCOMING REQUEST INTAKE RULE
# ============================================================

status: intake-rule
layer: implementation
domain: 018.meta
subdomain: 730.request-intake-and-routing-pack
document_id: 1201851301
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the rule for receiving future requests against
the current canonical CivilizationOS surface.

## 2. Intake Objective

Incoming requests must be received in a way that preserves:

- the active canonical entry order
- the frozen baseline
- the no-change default
- the governed change path when needed
- the anti-shortcut and conformance layers

## 3. Intake Rule

Every incoming request should first be interpreted as one of:

- read_only_confirmation
- nonsemantic_alignment_request
- recovery_request
- governed_semantic_change_request
- invalid_or_shortcut_request

## 4. Intake Preconditions

Before routing a request, confirm:

1. current canonical surface is the reference base
2. request intent is classified
3. baseline relevance is known
4. shortcut risk is checked

## 5. Hard Rule

No request should skip intake classification and jump directly
to action or conclusion.

## 6. Acceptance Checklist

- intake objective fixed
- intake rule fixed
- intake preconditions fixed
- no-skip-to-action rule fixed
