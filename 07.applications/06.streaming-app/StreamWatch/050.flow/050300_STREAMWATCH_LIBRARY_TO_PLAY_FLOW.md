# ============================================================
# STREAMWATCH LIBRARY TO PLAY FLOW
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

This document defines how the viewer moves from library surfaces into playback.

## 2. Library Sections

The library domain includes:

- continue watching preview
- favorites
- watch later
- history
- playlists
- purchased / entitled section

## 3. Flow Steps

### Step 1
Viewer enters library.

### Step 2
Library resolves the active tab or section.

### Step 3
Viewer chooses an item.

### Step 4
System interprets source semantics:
- favorites -> preference re-entry
- watch later -> deferred-intent re-entry
- history -> prior-watch re-entry
- playlist -> ordered sequence re-entry
- purchased / entitled -> access-confirmed visibility
- continue watching -> resume-first entry

### Step 5
System resolves CTA and playback entry.

## 4. Important Rules

- completed items remain in history but not in continue watching
- watch later is not auto-removed merely because something was watched
- favorites are not equivalent to history
- queue is not the same as library
