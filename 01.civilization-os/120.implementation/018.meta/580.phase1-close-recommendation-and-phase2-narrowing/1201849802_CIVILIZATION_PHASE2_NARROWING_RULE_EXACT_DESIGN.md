# ============================================================
# CIVILIZATION PHASE2 NARROWING RULE EXACT DESIGN
# ============================================================

status: exact-design
layer: implementation
domain: 018.meta
subdomain: 580.phase1-close-recommendation-and-phase2-narrowing
document_id: 1201849802
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the exact narrowing rule for phase2 candidacy.

## 2. Narrowing Objective

Phase2 must be narrowed to one explicit bounded candidate.

It must not remain:
- broad continuation
- vague implementation next step
- multi-domain expansion bucket

## 3. Narrowing Rule

A valid narrowed phase2 candidate must specify:

- one primary objective
- one bounded inclusion family
- explicit exclusions
- exact entry criteria
- exact stop criteria

## 4. Preferred Narrowing Bias

Prefer the smallest candidate that converts current design into safe next execution value.

## 5. Hard Rule

Do not include both:
- action_scope/error_code DB apply
and
- outbox/inbox/audit/verify-view DB apply
inside one first narrowed phase2 candidate.

## 6. Acceptance Checklist

- narrowing objective fixed
- narrowing rule fixed
- smallest-safe-candidate bias fixed
- no-combined-first-phase2 rule fixed
