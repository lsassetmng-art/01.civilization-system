# ============================================================
# CIVILIZATION DB SENDOUT AND SYNC PREPARATION RULE
# ============================================================

status: db-registration-preparation
layer: implementation
domain: 018.meta
subdomain: 480.db-registration-preparation
document_id: 1201848008
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines preparation rules for sendout and sync between Civilization-side data
and ERP-side data.

## 2. Scope

This document governs preparation for:

- sendout candidates
- sync-reference-only data
- payload boundary
- idempotency preparation
- retry preparation
- outbox preparation

## 3. Canonical Environment Rule

ERP sendout preparation belongs to DATABASE_URL-side planning.
Persona-side canonical data preparation belongs to PERSONA_DATABASE_URL-side planning.

## 4. Exact Sendout Preparation Classes

Required preparation classes:

- sendout event identity
- payload boundary
- idempotency key plan
- retry and dead-letter posture
- outbox usage plan
- sync-reference-only rule

## 5. Rule

ERP direct-write crossing must not be assumed by default.
Prefer explicit sendout or sync preparation with clear boundary classification.

## 6. Acceptance Checklist

- sendout classes fixed
- idempotency preparation fixed
- outbox-first preparation fixed
- no-ambiguous-direct-write rule fixed
