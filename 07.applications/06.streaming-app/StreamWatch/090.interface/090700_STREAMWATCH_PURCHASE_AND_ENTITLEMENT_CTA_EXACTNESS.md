# ============================================================
# STREAMWATCH PURCHASE AND ENTITLEMENT CTA EXACTNESS
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

This document fixes the CTA behavior for purchasable, rentable, membership-gated, and entitled content.

## 2. Allowed Primary CTA States

- play_now
- resume
- watch_live
- watch_archive
- buy_now
- rent_now
- join_membership
- preorder
- unavailable

## 3. Decision Inputs

CTA selection must consider:

- entitlement state
- content mode
- availability window
- membership requirement
- restriction result
- presence of progress

## 4. Important Rule

The CTA switcher decides viewer action state.
It does not become the billing engine itself.
