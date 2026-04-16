# ============================================================
# STREAMWATCH PURCHASE RENTAL MEMBERSHIP FLOW
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

This document defines the viewer journey from locked content to commercial execution and then to entitlement-backed playback.

## 2. Core Rule

The result of successful commercial execution is entitlement grant, not direct file delivery.

## 3. Flow Steps

### Step 1
Viewer opens locked content.

### Step 2
System resolves CTA:
- buy_now
- rent_now
- join_membership
- preorder
- unavailable

### Step 3
Viewer executes the selected commerce action from:
- StreamWatch surface
- or a Civilization-linked surface

### Step 4
Shared commerce execution confirms the transaction or contract.

### Step 5
Streaming entitlement is refreshed.

### Step 6
StreamWatch re-evaluates watchability.

### Step 7
Viewer may now enter:
- play_now
- watch_live
- watch_archive
- resume

## 4. Important Rules

- payment success alone does not skip entitlement refresh
- membership join may unlock live, archive, or both depending on entitlement logic
- rental may be time-window-limited
