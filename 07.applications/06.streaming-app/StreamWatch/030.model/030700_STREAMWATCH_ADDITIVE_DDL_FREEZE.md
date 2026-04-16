# ============================================================
# STREAMWATCH ADDITIVE DDL FREEZE
# ============================================================

status: draft-canonical
system: StreamingOS
app: StreamWatch
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document freezes the phase-1 additive database candidates that StreamWatch is allowed to rely on during implementation-ready planning.

## 2. Adopted Phase-1 Additive Candidates

- streaming.viewer_profile_records
- streaming.viewer_progress_states
- streaming.category_tree_nodes
- streaming.cast_handoff_sessions

## 3. Deferred Candidates

- dedicated favorite tables
- dedicated watch_later tables
- offline download tables
- direct DRM download structures

## 4. Interpretation Rule

Deferral does not mean these features do not exist.
It means phase-1 implementation should interpret them through already-approved structures such as playlist-based protected lists rather than inventing new canonical tables too early.
