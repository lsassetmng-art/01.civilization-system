# ============================================================
# STREAMWATCH LIVE TO ARCHIVE RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines runtime behavior from waiting room to live watch and then into archive availability.

## 2. Runtime States

The live-to-archive domain includes:

- waiting_room
- live_ready
- live_playing
- live_interrupted
- live_closed
- archive_pending
- archive_available
- archive_unavailable

## 3. Waiting Room Runtime

The waiting room may render:

- countdown
- notification toggle
- entitlement note
- membership gate note
- creator context
- related content

## 4. Live Runtime

When live becomes active and watchable, StreamWatch enters live playback.
Live runtime must distinguish:

- joined live normally
- joined late
- reconnecting
- ended by broadcaster
- ended by network failure

## 5. Archive Transition Runtime

After live closes, StreamWatch must not assume archive availability.
It must re-evaluate:

- is archive created
- is archive published
- is archive entitled
- is archive still restricted

## 6. Final Runtime Rule

Live closure is not the same as archive readiness.
Archive remains a separately resolved watchability state.
