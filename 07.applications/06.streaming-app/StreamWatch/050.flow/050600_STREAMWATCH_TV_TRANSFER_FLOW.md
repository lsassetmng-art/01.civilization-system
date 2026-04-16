# ============================================================
# STREAMWATCH TV TRANSFER FLOW
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

This document defines the viewer flow for moving playback to TV or large-screen contexts.

## 2. Flow Variants

### Variant A Real route handoff
- viewer opens TV connect sheet
- route list is shown
- viewer selects route
- handoff session starts
- target claims playback
- progress writes back after end or interruption

### Variant B Same-device large-screen mode
- viewer enables large-screen mode
- playback remains on same device
- no handoff session is created
- device mode changes to tv_large_screen

## 3. Important Rules

- route handoff and HDMI mode are not the same operation
- handoff must preserve viewer_profile context
- resume position must be retained where possible
