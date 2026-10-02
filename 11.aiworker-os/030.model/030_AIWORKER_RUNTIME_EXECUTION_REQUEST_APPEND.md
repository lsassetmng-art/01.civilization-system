# AIWorkerOS Model Append: Runtime Execution Request

status: active
phase: runtime execution request
scope: AIWorkerOS only

## Purpose

Runtime Execution Request connects Runtime Control Profile to actual execution intake.

Runtime Control Profile:

- aiworker.vw_app_aiworker_runtime_control_profile_v1

Runtime Execution Request:

- aiworker.runtime_execution_request

## Main objects

Tables:

- aiworker.runtime_execution_request
- aiworker.runtime_execution_event_log
- aiworker.runtime_review_gate_log
- aiworker.runtime_handoff_packet

Function:

- aiworker.fn_runtime_execution_create_request(...)

Views:

- aiworker.vw_app_aiworker_runtime_execution_request_board_v1
- aiworker.vw_app_aiworker_runtime_execution_gate_board_v1
- aiworker.vw_app_aiworker_runtime_handoff_packet_board_v1
- aiworker.vw_app_aiworker_runtime_execution_intake_payload_v1

## Behavior

When a request is created:

1. Read runtime control profile.
2. Snapshot runtime control.
3. Store allowed actions.
4. Store forbidden actions.
5. Store prompt fragment codes.
6. Create review gate when required.
7. Create human GO gate when required.
8. Create handoff packet when required.

## Safety

The request does not execute external actions.

It only creates an internal request, gate records, and handoff packet.
