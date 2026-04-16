# ============================================================
# STREAMWATCH LIVE TO ARCHIVE FLOW
# ============================================================

status: canonical-draft
layer: flow
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines the viewer journey from pre-live entry to live watch and then to archive viewing.

## 2. Flow Stages

### Stage 1 Waiting room
Viewer enters scheduled live context.
The waiting room may expose:
- countdown
- notify toggle
- creator summary
- related content
- member-only notice if applicable

### Stage 2 Live watch
When the live starts and the viewer is entitled and not restricted, playback enters live state.

### Stage 3 Live closure
When live ends, the system resolves:
- closed with no archive yet
- archive available immediately
- archive available later
- replay restricted or entitlement-limited

### Stage 4 Archive entry
If archive is available and watchable, the viewer may continue into archive watch.

## 3. Important Rules

- waiting room is a distinct state from live playback
- live playback is a distinct state from archive playback
- archive availability is not assumed merely because live existed
