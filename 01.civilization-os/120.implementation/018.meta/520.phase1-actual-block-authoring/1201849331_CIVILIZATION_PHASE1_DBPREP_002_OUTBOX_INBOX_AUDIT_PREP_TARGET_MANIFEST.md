# ============================================================
# CIVILIZATION PHASE1 DBPREP 002 OUTBOX INBOX AUDIT PREP TARGET MANIFEST
# ============================================================

status: actual-block-target-manifest
layer: implementation
domain: 018.meta
subdomain: 520.phase1-actual-block-authoring
document_id: 1201849331
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the target family for the fifth actual phase 1 DBPREP block.

## 2. Target Categories

The block may target only:

- preparation-only helper docs
- environment declaration notes
- narrow candidate ledgers
- preparation-only reports

## 3. Forbidden Target Categories

Do not target:

- SQL files
- schema migration files
- seed files
- runtime code files
- DB connection payloads

## 4. Expected Target Roots

Expected roots:

- 018.meta/495.execution-block-preparation
- 018.meta/520.phase1-actual-block-authoring
- 018.meta/470.cross-cutting-completion

## 5. Acceptance Checklist

- target categories fixed
- forbidden targets fixed
- expected roots fixed
