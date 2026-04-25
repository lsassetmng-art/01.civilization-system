# ============================================================
# CIVILIZATION DB VERIFY CHECKLIST
# ============================================================

status: db-registration-preparation
layer: implementation
domain: 018.meta
subdomain: 480.db-registration-preparation
document_id: 1201848005
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the verification checklist to prepare before actual DB execution.

## 2. Scope

This document governs preparation for:

- DDL verify
- enum verify
- seed verify
- binding verify
- lineage verify
- projection verify

## 3. Required Verify Classes

Required verify classes:

- required table existence
- PK and FK existence
- enum/code master presence
- action_scope seed presence
- orphan binding detection
- revision lineage validation
- outbox and inbox readiness
- projection reproducibility check
- duplicate canonical code detection

## 4. Rule

Every future DB execution plan must map each planned write
to at least one verify class.

## 5. Exact Verify Output Minimum

Verify output should capture:

- passed checks
- failed checks
- blocking failures
- warnings
- rerun recommendation

## 6. Acceptance Checklist

- verify classes fixed
- output minimum fixed
- per-write verify mapping rule fixed
