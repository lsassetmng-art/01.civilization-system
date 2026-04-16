# ============================================================
# STREAMWATCH PROGRESS SYNC RUNTIME
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

This document defines when progress is written and how resume accuracy is protected across sessions and devices.

## 2. Write Timing

Progress should be updated on events such as:

- periodic playback advancement
- pause
- app backgrounding
- route handoff start
- route handoff end
- playback ended

## 3. History Timing

History write timing is related but not identical to progress timing.
The two must not be collapsed into one write rule.

## 4. Conflict Rule

When multiple devices update progress, StreamWatch should favor:

- valid latest state
- completed state over weaker incomplete state
- cast-session truth when applicable

## 5. Runtime Goal

The goal is stable resume behavior, not merely high-frequency write volume.
