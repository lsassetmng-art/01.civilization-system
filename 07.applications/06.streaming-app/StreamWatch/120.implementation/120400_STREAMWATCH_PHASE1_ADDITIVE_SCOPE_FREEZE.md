# ============================================================
# STREAMWATCH PHASE1 ADDITIVE SCOPE FREEZE
# ============================================================

status: implementation-freeze
layer: implementation
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document freezes what phase 1 is allowed to add without widening StreamWatch into a different product.

## 2. Approved Phase-1 Additions

Approved additive database and model support:

- streaming.viewer_profile_records
- streaming.viewer_progress_states
- streaming.category_tree_nodes
- streaming.cast_handoff_sessions

Approved viewer additions:

- profile_picker
- viewer_series_detail
- viewer_library_home
- tv_connect_sheet
- restriction_gate

Approved execution additions:

- purchase execute surface
- rental execute surface
- membership join execute surface

## 3. Deferred from Phase 1

Deferred items include:

- dedicated favorites tables
- dedicated watch-later tables
- offline download ownership
- DRM download behavior
- guardian override PIN model
- gifting and party-watch features

## 4. Freeze Rule

Anything outside this boundary must be treated as later-phase scope unless Boss explicitly reopens it.
