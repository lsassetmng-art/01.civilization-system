# COMMON OS TARGET OS APPLY CHECKLIST CANONICAL

status: canonical
system: CommonOS
layer: development

## Purpose
This checklist is used before declaring a target OS / app adoption plan complete.

## Boundary checks
- CommonOS scope is limited to shared foundation
- business canon remains local
- no secrets moved into CommonOS
- no approval or pricing authority moved into CommonOS

## UI checks
- shared shell usage considered
- list / detail / form reuse considered
- queue / retry / conflict UI reuse considered
- token / density / variant plan documented
- app-specific button system not introduced without exception review

## Non-UI checks
- transport exterior discipline considered
- local draft / queue / sync pattern considered
- validation presentation pattern considered
- verify / smoke / release templates considered

## Offline-first checks
- local read clarified
- local draft clarified
- queue coverage clarified
- sync trigger clarified
- conflict presentation clarified

## Target readiness checks
- implementation order documented
- required variants documented
- excluded business surfaces documented
- acceptance criteria documented
