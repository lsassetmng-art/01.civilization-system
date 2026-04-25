# ============================================================
# CIVILIZATION INSUFFICIENT CONTEXT HANDLING RULE
# ============================================================

status: context-rule
layer: implementation
domain: 018.meta
subdomain: 730.request-intake-and-routing-pack
document_id: 1201851304
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines how to handle future requests that lack enough context
for safe routing.

## 2. Insufficient Context Cases

Treat context as insufficient when:

- request does not indicate whether change is intended
- request does not indicate the relevant posture family
- request starts from drifted assumptions
- request relies on old detailed packs without re-anchoring
- request mixes semantic and non-semantic intent unclearly

## 3. Handling Rule

When context is insufficient:

1. do not deepen action
2. re-anchor to canonical surface
3. classify request at the higher-risk side
4. route to recovery or governed clarification path as needed

## 4. Canonical Result Values

- insufficient_context_reanchor_required
- insufficient_context_recovery_required
- insufficient_context_governed_clarification_required

## 5. Hard Rule

Insufficient context does not justify improvisation.

## 6. Acceptance Checklist

- insufficient context cases fixed
- handling rule fixed
- canonical result values fixed
- no-improvisation-under-ambiguity rule fixed
