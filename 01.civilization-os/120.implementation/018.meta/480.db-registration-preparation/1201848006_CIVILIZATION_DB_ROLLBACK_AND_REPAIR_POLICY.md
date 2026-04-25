# ============================================================
# CIVILIZATION DB ROLLBACK AND REPAIR POLICY
# ============================================================

status: db-registration-preparation
layer: implementation
domain: 018.meta
subdomain: 480.db-registration-preparation
document_id: 1201848006
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines rollback and repair preparation policy for future DB work.

## 2. Scope

This document governs preparation for:

- rollback posture
- repair posture
- invalidation posture
- supersede posture
- rerun-safe correction posture

## 3. Canonical Policy

Prefer:

1. repair first
2. invalidate or supersede where possible
3. preserve audit and lineage
4. destructive rollback only when explicitly justified

## 4. Forbidden Pattern

Do not prepare DB execution assuming:

- silent delete of canonical data
- destructive rewrite without lineage
- silent enum replacement
- silent projection overwrite without source trace

## 5. Exact Repair Classes

Allowed future repair classes:

- supersede wrong row with preserved lineage
- invalidate broken binding
- regenerate projection from canonical source
- re-seed missing dictionary entries
- re-run safe patch for missed nullable or reference-only data

## 6. Acceptance Checklist

- repair-first rule fixed
- lineage-preserving correction fixed
- forbidden destructive patterns fixed
