# ============================================================
# STREAMWATCH PLAYBACK RUNTIME
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

This document defines the primary playback runtime state machine of StreamWatch.

## 2. Core Runtime States

The main states are:

- idle
- loading
- ready
- playing
- paused
- buffering
- ended
- failed

## 3. Overlay States

The runtime may also expose overlays such as:

- comments_open
- related_open
- queue_open
- cast_active
- subtitle_config_open

## 4. Live-Specific States

Live viewing introduces:

- waiting_room
- live_joined
- live_reconnecting
- live_closed
- archive_available

## 5. Runtime Rule

Playback runtime must remain aware of:

- entitlement result
- restriction result
- device mode
- route state
- resume position
