# APPLICATION COMMON COMPONENT IMPLEMENTATION SCOPE CANONICAL

status: canonical
system: CommonOS
layer: implementation

## Purpose
This document defines the implementation scope discipline for application common components under CommonOS.

## Canonical rule
CommonOS implements reusable shared UI outputs and shared-base utilities only when they are inside the CommonOS boundary and are suitable for client-safe distribution or server-safe shared usage.

## Phase-one implementation scope
Phase one focuses on the smallest set that unlocks multi-app reuse:
- Button family
- Text input family
- Card family
- Dialog family
- Table or list family
- App Shell
- Offline Queue Status UI
- Sync Retry UI

## Later implementation scope
Current-wave accepted families that are not phase one may still be canonically accepted while implementation waits for stronger need, better wrappers, or cleaner package boundaries.

## Never in CommonOS client package
- domain pricing logic
- domain entitlement logic
- domain access logic
- secrets
- privileged approval logic
- authoritative domain transaction logic
