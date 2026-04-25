# ============================================================
# STREAMWATCH OFFLINE METADATA POLICY
# ============================================================

status: canonical-draft
layer: policy
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines the phase-1 offline policy for StreamWatch.

## 2. Allowed Offline Scope

Phase 1 may support offline-friendly handling of:

- history preview cache
- library preview cache
- category tree cache
- recent search cache
- subtitle and audio preference cache
- continue watching shell cache

## 3. Excluded Offline Scope

Phase 1 does not include:

- full downloadable video ownership
- DRM offline package ownership
- offline binary distribution truth

## 4. Final Policy Rule

Offline support in phase 1 is metadata-oriented, not content-binary-oriented.
