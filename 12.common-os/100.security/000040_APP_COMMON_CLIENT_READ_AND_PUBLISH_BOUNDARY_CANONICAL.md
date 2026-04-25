# APP_COMMON CLIENT READ AND PUBLISH BOUNDARY CANONICAL

status: canonical
system: CommonOS
layer: security
schema: app_common

## Purpose
This document defines the boundary between raw app_common metadata storage and client-delivered published metadata.

## Boundary rule
Clients should not be assumed to read raw base tables directly. A controlled publication path is preferred.

## Preferred publication pattern
1. metadata is authored or revised internally
2. review is completed
3. publication safety is confirmed
4. active and effective window is set
5. published subset becomes readable to client-facing surfaces

## Safe publication examples
- theme registry rows already adopted for runtime
- token values already approved
- locale translations for active UI
- queue visual rules for active product surfaces
- reviewed component variants already in supported rollout

## Not for broad client publication
- draft rows
- review_pending rows
- reviewer comments
- internal migration notes
- staging-only variants
- internal-only verify materials unless explicitly intended for tool clients

## Security rule
Service role keys, database secrets, privileged prompts, and authoritative business decision logic remain outside app_common publication scope.
