# APPLICATION COMMON COMPONENT SHARED PACKAGE BOUNDARY CANONICAL

status: canonical
system: CommonOS
layer: implementation

## Purpose
This document defines what belongs inside the CommonOS shared package boundary.

## Inside shared package boundary
- shared HTML UI components
- design tokens
- layout primitives
- shell primitives
- reusable state panels
- queue and sync presentation components
- locale-aware display helpers
- presentation-safe formatting helpers
- accessibility-safe interaction wrappers

## Conditionally separated shared libraries
These may exist as separate shared libraries rather than the main client package:
- canonical response envelope helper
- canonical error envelope helper
- permission guard base
- validator helper set
- idempotency service base
- lifecycle transition helper base
- error-code base pattern

## Outside shared package boundary
- domain business logic
- domain pricing engine
- domain entitlement engine
- domain access engine
- secrets
- service role keys
- database connection secrets
- authoritative domain transaction logic

## Distribution rule
Client-delivered shared packages must remain safe to distribute across multiple apps, OSs, and ERP surfaces.
