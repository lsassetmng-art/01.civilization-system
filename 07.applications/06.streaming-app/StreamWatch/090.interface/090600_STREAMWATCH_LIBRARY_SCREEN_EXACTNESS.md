# ============================================================
# STREAMWATCH LIBRARY SCREEN EXACTNESS
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

This document fixes the exact behavior of the unified library screen.

## 2. Required Sections

The library surface must support:

- continue watching preview
- favorites
- watch later
- history
- playlists
- purchased / entitled visibility

## 3. Important Rules

- continue watching is a preview and resume surface, not just another tab label
- history remains separate from favorites and watch later
- purchased / entitled visibility must not erase normal library semantics
