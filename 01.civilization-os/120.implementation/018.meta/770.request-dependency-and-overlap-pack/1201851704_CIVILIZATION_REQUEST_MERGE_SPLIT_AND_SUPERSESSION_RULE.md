# ============================================================
# CIVILIZATION REQUEST MERGE SPLIT AND SUPERSESSION RULE
# ============================================================

status: merge-split-supersession-rule
layer: implementation
domain: 018.meta
subdomain: 770.request-dependency-and-overlap-pack
document_id: 1201851704
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines when requests may be merged, split, or superseded safely.

## 2. Merge Rule

Requests may be merged only when:

- routed path family is materially the same
- resulting lifecycle control stays clearer, not more ambiguous
- no semantic boundary is lost

## 3. Split Rule

A request should be split when:

- one request mixes non-semantic and semantic handling
- one request contains multiple dependency families
- one request would otherwise hide a blocked_by or conflicts_with relation

## 4. Supersession Rule

A request may be marked superseded_by only when:

- a later request clearly replaces it
- the later request preserves the necessary historical trace
- the earlier request is not silently erased

## 5. Hard Rule

Merge, split, or supersession must preserve traceability and queue clarity.

## 6. Acceptance Checklist

- merge rule fixed
- split rule fixed
- supersession rule fixed
- no-trace-loss rule fixed
