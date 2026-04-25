# APP_COMMON REVIEWED ROLLOUT BATCH CANONICAL

status: canonical
system: CommonOS
layer: development

## Purpose
This document defines the reviewed rollout batches for the app_common Tier1 migration bundle.

## Batch structure

### Batch 0: pre-apply review
- confirm target DB choice
- confirm role posture
- confirm scope is metadata-only
- confirm no domain business truth is entering app_common

### Batch 1: base object apply
- schema
- enums
- helper functions
- Tier1 tables
- updated_at trigger function

### Batch 2: protective posture apply
- revoke-from-public posture
- enable and force RLS
- internal policy creation

### Batch 3: published read path apply
- published read views
- optional grants to approved broad-read roles

### Batch 4: verification
- schema object existence
- RLS existence
- view existence
- basic selectability checks through published views
- deny-by-default behavior checks on raw tables

## Rollout rule
Do not collapse all rollout interpretation into one invisible step. Treat each batch as a reviewable checkpoint.
