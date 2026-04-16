# ============================================================
# STREAMWATCH HOME TO PLAY FLOW
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

This document defines the main viewer journey from home discovery to playback entry.

## 2. Entry Conditions

The flow begins when:

- the app is already inside an active viewer_profile
- home is available
- feed sections have been loaded or partially loaded

## 3. Primary Home Order

The home surface should prioritize blocks in this order:

1. featured or promoted block
2. continue watching block
3. live now block
4. personalized recommendation block
5. ranking highlight block
6. category shortcut block

## 4. Flow Steps

### Step 1
Viewer opens home.

### Step 2
Home resolves profile-specific context:
- viewer_profile
- restriction context
- entitlement-aware rendering
- last-used continuity state

### Step 3
Viewer chooses one of the major entry blocks:
- continue watching
- live now
- promoted content
- recommendation
- category shortcut

### Step 4
System resolves CTA state for the chosen target:
- play_now
- resume
- watch_live
- watch_archive
- buy_now
- rent_now
- join_membership
- preorder
- unavailable

### Step 5
Viewer enters one of the next surfaces:
- direct player
- waiting room
- series detail
- playlist detail
- purchase / rental / membership flow
- restriction gate

## 5. Decision Rules

### Continue watching target
If valid progress exists and completion is below completed threshold, the home flow prefers resume.

### Live target
If live is active and watchable, enter live watch.
If scheduled but not yet active, enter waiting room.

### Locked target
If not watchable now, show entitlement-aware CTA rather than a broken play action.

## 6. Exit States

The flow may exit into:
- active playback
- waiting room
- locked-content CTA surface
- restriction gate
- detail surface before playback
