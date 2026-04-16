# ============================================================
# STREAMWATCH LIBRARY AND SAVED LIST MODEL
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

This document defines the model interpretation of favorites, watch later, playlists, queue, and history inside the StreamWatch library domain.

## 2. Semantic Separation

### Favorites
Strong preference or strong keep intent.

### Watch Later
Deferred viewing intent.

### Playlists
Named list with explicit user ordering intent.

### Queue
Immediate next-up execution context.

### History
Watched fact context.

## 3. Phase-1 Modeling Rule

Favorites and Watch Later are modeled as protected playlist interpretations rather than separate canonical tables.

## 4. Consequence

This preserves semantic separation while avoiding premature table fragmentation in phase 1.
