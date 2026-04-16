# ============================================================
# STREAMWATCH TV CONNECT SHEET EXACTNESS
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

This document fixes the exact structure of the TV connect and route-selection sheet.

## 2. Required Elements

The sheet must expose:

- current playback context
- available routes
- route capability hints
- play here vs move playback distinction where applicable
- resume position summary
- subtitle and audio inheritance note where applicable
- connection status

## 3. Important Rule

The sheet must distinguish real route handoff from same-device large-screen mode.
