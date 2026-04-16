# ============================================================
# STREAMWATCH PLAYER SCREEN EXACTNESS
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

This document fixes exact player-surface behavior across video, live, archive, and clip modes.

## 2. Core Player Regions

The player surface may contain:

- playback surface
- metadata region
- primary actions
- comments or side overlay
- related or next-up overlay
- route handoff entry
- subtitle and audio controls

## 3. Mode Differences

### Live
Must preserve live-specific context and not appear identical to archive.

### Archive
May expose resume and series / playlist continuity more strongly.

### Clip
May use lighter metadata emphasis.

## 4. Important Rule

Playback mode must remain explicit rather than being collapsed into one ambiguous player state.
