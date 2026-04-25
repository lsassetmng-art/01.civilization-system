# APP_COMMON FINAL STATUS SUMMARY CANONICAL

status: canonical
system: CommonOS
layer: development
schema: app_common

## Purpose
This document summarizes the current state of app_common design work at the end of the common-only track.

## Current status
- schema role fixed as shared mutable metadata candidate
- Tier1 reviewed canonical DDL designed
- RLS draft designed
- published-read view draft designed
- execution-ready migration bundle draft designed
- rollout batch and apply-gate canon designed

## What app_common is allowed to hold
- tokens
- theme metadata
- component catalog metadata
- locale and copy metadata
- screen / form / list / queue presentation metadata
- attachment / verify / template metadata
- status / origin evidence metadata

## What app_common is not allowed to hold
- business canon
- pricing decision core
- entitlement decision core
- access decision core
- secrets
- ERP voucher truth
- domain outbox truth
- domain transaction truth

## Operational interpretation
app_common is now in a strong design-ready state for future execution-track work, but execution target choice and real rollout approval still belong to later stages.
