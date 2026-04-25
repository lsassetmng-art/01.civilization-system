# ============================================================
# STREAMWATCH PROFILE ACCESS CONTROL SECURITY
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

This document defines security assumptions around viewer_profile selection and switching.

## 2. Security Goal

Prevent continuity leakage and wrong-profile operation.

## 3. Protected Outcomes

Security behavior must protect against:

- cross-profile history leakage
- cross-profile resume leakage
- wrong-profile favorites or watch later mutation
- wrong-profile restriction bypass through stale context

## 4. Final Security Rule

Profile selection is part of continuity security, not merely visual personalization.
