# ============================================================
# STREAMWATCH CX22073 CANDIDATE DATA AREAS
# ============================================================

status: candidate-ledger
layer: integration
system: StreamingOS
app: StreamWatch
schema: streaming
storage_reference_system: CX22073
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines the candidate CX22073 data areas exposed by the implementation-ready design of StreamWatch.

## 2. Strong Candidate Areas

- streaming_view_history_area
- streaming_category_tree_area
- streaming_continue_watching_area
- streaming_progress_resume_area
- streaming_entitlement_reference_area

## 3. Additional High-Value Areas

- streaming_favorite_area
- streaming_watch_later_area
- streaming_follow_area
- streaming_tv_handoff_area
- streaming_viewer_profile_area

## 4. Medium-High Expansion Areas

- streaming_playlist_reference_area
- streaming_restriction_profile_area
- streaming_search_context_area

## 5. Boundary Rule

StreamingOS remains canonical for operational playback, entitlement, progress, history, follow, playlist, queue, and category identity.
Commerce remains canonical for purchase, rental, membership, billing, refund, and renewal truth.
CX22073 may hold summaries, retrieval-oriented mirrors, semantic indexes, and optimization metadata.
