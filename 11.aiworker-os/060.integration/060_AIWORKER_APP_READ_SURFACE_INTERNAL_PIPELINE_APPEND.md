# AIWorkerOS Integration Append: App Read Surface for Internal Pipeline

## Status

active-read-only

## Integration flow

AIWorkerOS internal pipeline:

President HD-R5P
-> Manager HD-R5
-> Worker HD-R3
-> Leader HD-R4
-> Manager HD-R5 Gate
-> DELIVERY_READY_INTERNAL

App read surface:

aiworker.vw_app_aiworker_internal_pipeline_payload_v1

## Boundary

The app consumes read-only pipeline state.

The app does not mutate President, Manager, Worker, Leader, gate, or delivery state through this read surface.

## Safety

The read surface preserves the accepted safety boundary:

- external_execution_allowed_flag = false
- pg_apply_allowed_flag = false
- destructive_action_allowed_flag = false
