# ============================================================
# STREAMWATCH FOLLOW AND NOTIFICATION RUNTIME
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

This document defines runtime behavior around follow state, follow-driven notification preference, and viewer notification refresh.

## 2. Follow Runtime

A follow change may target:

- channel
- creator
- broadcaster

Follow and notification preference must remain related but separate.

## 3. Runtime Fields of Interest

The runtime needs to distinguish:

- follow_active_flag
- notification_enabled_flag

This allows:
- follow without notification
- follow with notification

## 4. Notification Runtime

Notification runtime should support:

- waiting-room notify toggle
- follow-surface quick changes
- home-surface unread awareness
- notification list refresh
- notification read-state transitions

## 5. Final Runtime Rule

Follow is a relationship state.
Notification is a delivery preference state.
They should not be collapsed into one flag.
