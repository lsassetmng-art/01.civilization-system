# ============================================================
# STREAMWATCH OPERATIONAL RULES
# ============================================================

status: canonical-draft
layer: operations
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines the core operational rules that should remain stable as StreamWatch moves toward implementation and rollout.

## 2. Core Rules

The following rules are operationally mandatory:

- additive change only for phase-1 scope
- no blurring of viewer-side and creator-side responsibility
- no reassignment of commerce truth into StreamWatch
- no reassignment of entitlement truth away from StreamingOS
- no collapsing of history and progress into one operational write path
- no collapsing of route handoff and same-device large-screen mode

## 3. Viewer-Safety Rules

Operations must preserve:

- viewer_profile separation
- restriction-aware playback gating
- entitlement-aware CTA accuracy
- resume correctness after interruption

## 4. Incident Priority Areas

Operational priority should be highest when issues affect:

- incorrect watchability state
- broken resume behavior
- cross-profile leakage
- failed handoff recovery
- post-purchase entitlement refresh mismatch
