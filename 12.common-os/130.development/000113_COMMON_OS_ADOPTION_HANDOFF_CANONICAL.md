# COMMON OS ADOPTION HANDOFF CANONICAL

status: canonical
system: CommonOS
layer: development

## Purpose
This document serves as the handoff summary when moving from CommonOS foundation design into target OS / app adoption planning.

## Most important fixed facts
- CommonOS is the shared foundation canon
- app_common is shared mutable metadata only
- UI is centralized into CommonOS direction
- business canon remains in each OS / app / ERP
- ERP is a first-class CommonOS adoption target
- offline-first + local queue + online sync is standard
- queue presentation is commonized
- queue meaning remains domain-owned
- variants absorb presentation differences
- business logic must not be pulled into CommonOS

## Natural next work
1. choose one target OS or app
2. define adoption boundary
3. list CommonOS-adopted UI surfaces
4. list non-commonized business surfaces
5. identify required variants
6. decide offline-first coverage
7. produce target adoption plan in one pass
