# ============================================================
# STREAMWATCH ENTITLEMENT CHECK SECURITY
# ============================================================

status: canonical-draft
layer: security
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines security assumptions around watchability and entitlement checks.

## 2. Core Rule

Playback must depend on authoritative entitlement-aware watchability checks rather than stale UI assumption.

## 3. Security Risks

Primary risks include:

- stale playable state
- cached buy-state mistaken for entitlement
- wrong viewer_profile context
- route/device restrictions ignored
- archive availability assumed without recheck

## 4. Final Security Rule

Commercial success and playback authorization are related but not identical security decisions.
