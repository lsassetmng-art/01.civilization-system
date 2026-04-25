# ============================================================
# STREAMWATCH TEST FOCUS POINTS
# ============================================================

status: canonical-draft
layer: development
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines the most important testing targets for early StreamWatch implementation.

## 2. Highest Priority Tests

Priority testing should cover:

- profile separation correctness
- history versus progress correctness
- continue-watching correctness
- entitlement and CTA correctness
- purchase-to-entitlement refresh correctness
- route handoff correctness
- live-to-archive correctness
- category-tree traversal correctness

## 3. Test Rule

Tests should focus first on correctness of viewer state, not only screen rendering.
