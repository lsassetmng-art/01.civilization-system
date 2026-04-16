# ============================================================
# STREAMWATCH LIBRARY AND SAVED LIST ARCHITECTURE
# ============================================================

status: canonical-draft
layer: architecture
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines the structural relationship between library, saved lists, history, and continuity surfaces in StreamWatch.

## 2. Core Rule

On mobile, the library is a unified entry domain rather than a large set of bottom-navigation destinations.

## 3. Library Sections

The library domain includes:

- favorites
- watch later
- history
- playlists
- continue watching preview
- purchased / entitled visibility

## 4. Semantics

### Favorites
Strong save intent.

### Watch Later
Deferred viewing intent.

### History
Actual viewing record.

### Playlists
Named user-curated sequence.

### Queue
Immediate next-up sequence, not the same as library.

## 5. Phase-1 Implementation Rule

Favorites and Watch Later are implemented through protected playlist interpretation rather than dedicated tables.

## 6. Profile Rule

All library interpretations must be viewer_profile-aware.

## 7. Final Architecture Statement

The library domain is a structured continuity-and-save architecture, not a generic dump of everything the viewer has touched.
