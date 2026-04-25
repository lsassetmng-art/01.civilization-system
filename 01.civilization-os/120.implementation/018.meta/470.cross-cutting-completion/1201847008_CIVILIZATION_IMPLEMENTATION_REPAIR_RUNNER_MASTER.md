# ============================================================
# CIVILIZATION IMPLEMENTATION REPAIR RUNNER MASTER
# ============================================================

status: implementation-prep-repair-runner
layer: implementation
domain: 018.meta
subdomain: 470.cross-cutting-completion
document_id: 1201847008
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the repair runner used when apply or verify detects missing or broken targets.

## 2. Scope

This document governs:

- missing file repair
- duplicate collision repair
- path mismatch repair
- marker repair
- rerun-safe recovery

## 3. Repair Principles

Repair must prioritize:

1. additive repair
2. rerun-safe repair
3. trace preservation
4. non-destructive correction
5. exact failure reporting

## 4. Allowed Repair Classes

- create missing file
- reapply missing patch
- repair path mismatch
- quarantine duplicate collision
- regenerate report
- rerun verify

## 5. Forbidden Repair Classes

- silent overwrite of canonical file
- silent deletion of duplicate without review
- destructive rollback of successful apply without report
- silent content replacement without marker trace

## 6. Repair Exit Conditions

A repair attempt is complete only when:

- target defect is resolved, or
- defect is escalated as unresolved blocking issue

## 7. Acceptance Checklist

- repair principles fixed
- allowed repair classes fixed
- forbidden repair classes fixed
- repair exit conditions fixed
