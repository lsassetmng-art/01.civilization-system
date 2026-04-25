# APP_COMMON MIGRATION APPLY SEQUENCE AND GATE CANONICAL

status: canonical
system: CommonOS
layer: development

## Purpose
This document defines the go / no-go gates for applying the app_common Tier1 migration bundle.

## Gate sequence

### Gate 1: boundary gate
Proceed only if:
- app_common scope is metadata-only
- no business canon is being introduced
- no secrets or privileged logic are being introduced

### Gate 2: environment gate
Proceed only if:
- correct target DB is confirmed
- rollback approach is understood
- required roles are reviewed
- execution permissions are available

### Gate 3: batch 1 verification gate
Proceed to protective posture only if:
- tables exist
- enums exist
- helper functions exist
- triggers are attached as expected

### Gate 4: batch 2 verification gate
Proceed to published views only if:
- raw tables are no longer broadly open
- RLS is enabled
- internal-role policies are attached as intended

### Gate 5: batch 3 verification gate
Proceed to wider usage only if:
- published views resolve
- published rows follow reviewed / active / effective rules
- raw-table access is still appropriately restricted

## No-go examples
- target DB is ambiguous
- role mapping is unresolved
- broad raw-table access remains open
- published views expose non-publishable rows
