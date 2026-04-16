# ============================================================
# STREAMWATCH RESTRICTION_GATE_EXACTNESS
# ============================================================

status: canonical-draft
layer: interface
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document fixes the exact behavior of the pre-play restriction gate.

## 2. Required Elements

The gate may expose:

- blocked-content summary
- reason label
- profile restriction context
- safe alternative path
- profile switch entry

## 3. Important Rule

Restriction must be visible before playback entry when policy requires it.
