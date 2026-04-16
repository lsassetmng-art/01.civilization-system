# ============================================================
# STREAMWATCH TV HANDOFF ARCHITECTURE
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

This document defines how StreamWatch moves or extends playback toward TV-capable and large-screen targets.

## 2. Core Split

There are two distinct large-screen behaviors:

### 2.1 Route handoff
Playback moves to a cast-capable or TV-capable route.

### 2.2 Same-device large-screen mode
Playback remains on the same device but changes presentation mode, such as HDMI-based viewing.

## 3. Route Handoff Targets

Supported route families include:

- Chromecast
- AirPlay
- Android TV
- Fire TV
- Apple TV

## 4. Architectural Expectations

A real handoff must preserve:

- target identity
- resume position
- subtitle context where possible
- audio-track context where possible
- viewer_profile continuity
- post-session write-back

## 5. Session Rule

Real route handoff relies on handoff-session semantics.
Same-device HDMI mode does not.

## 6. Final Architecture Statement

TV handoff is a continuity architecture, not just a transport toggle, and must stay distinct from same-device large-screen display mode.
