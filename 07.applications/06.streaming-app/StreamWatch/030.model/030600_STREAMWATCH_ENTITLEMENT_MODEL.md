# ============================================================
# STREAMWATCH ENTITLEMENT MODEL
# ============================================================

status: canonical-draft
layer: model
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines how StreamWatch interprets entitlement states for watchability.

## 2. Core Rule

Entitlement is a watchability model, not a raw billing model.

## 3. Common Entitlement Interpretations

Typical states include:

- permanent_purchase
- rental_active
- rental_expired
- membership_entitled
- ticket_entitled
- preorder_not_yet_playable
- unavailable

## 4. Model Usage

The entitlement model drives:

- CTA selection
- watch_live vs watch_archive behavior
- locked-content behavior
- post-purchase refresh behavior
- purchased/entitled library visibility

## 5. Boundary Rule

The entitlement model consumes commercial outcomes but does not replace commerce truth.
