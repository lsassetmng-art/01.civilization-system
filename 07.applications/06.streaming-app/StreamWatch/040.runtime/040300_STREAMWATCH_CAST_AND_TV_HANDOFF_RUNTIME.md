# ============================================================
# STREAMWATCH CAST AND TV HANDOFF RUNTIME
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

This document defines runtime behavior for cast initiation, TV-route handoff, claim, interruption, and write-back.

## 2. Runtime Split

StreamWatch recognizes two different runtime modes:

- real route handoff
- same-device large-screen mode

These must never be merged into one opaque runtime state.

## 3. Real Route Handoff Runtime

A real route handoff runtime should include:

- route discovery
- route selection
- handoff session creation
- target claim
- playback context transfer
- write-back on stop or interruption

## 4. Required Preserved Context

Where supported, the runtime should preserve:

- target content identity
- viewer_profile identity
- last known position
- subtitle state
- audio-track state
- playback mode
- entitlement-aware watchability state

## 5. Failure Handling

The runtime must tolerate:

- route unavailable after selection
- claim timeout
- target playback failure
- incomplete write-back
- source-side recovery after failed handoff

## 6. Same-Device Large-Screen Runtime

Same-device large-screen mode does not create a handoff session.
It changes presentation mode only and should preserve the same local continuity context.

## 7. Final Runtime Rule

Real handoff is a continuity transfer runtime.
HDMI-style mode change is a presentation runtime.
They are related but not the same.
