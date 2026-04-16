# ============================================================
# STREAMWATCH DOMAIN MODEL OVERVIEW
# ============================================================

status: canonical-draft
layer: model
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document summarizes the major domain entities that define StreamWatch behavior.

## 2. Primary Domain Entities

The key entities are:

- viewer_profile
- content_unit
- category_node
- follow_state
- saved_list
- playlist
- watch_queue
- watch_history
- progress_state
- entitlement_state
- cast_handoff_session
- restriction_context
- notification_context

## 3. Entity Relationships

### viewer_profile
Owns or interprets continuity behavior.

### content_unit
Represents watchable targets such as live, archive, clip, or video.

### category_node
Provides structured discovery location and traversal context.

### saved_list and playlist
Represent preserved viewer-curated or system-protected list intent.

### watch_queue
Represents immediate next-up ordering.

### watch_history
Represents watched fact.

### progress_state
Represents resume truth.

### entitlement_state
Represents access interpretation relevant to playback readiness.

### cast_handoff_session
Represents real route-transfer continuity.

## 4. Modeling Principle

The StreamWatch model deliberately keeps history, progress, queue, favorites, watch later, and entitlement separate because they answer different viewer questions.
