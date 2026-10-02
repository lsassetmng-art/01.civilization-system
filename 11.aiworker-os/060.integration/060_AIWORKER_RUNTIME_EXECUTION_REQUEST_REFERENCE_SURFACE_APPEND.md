# AIWorkerOS Integration Append: Runtime Execution Request Reference Surface

status: active
phase: runtime execution request
scope: AIWorkerOS only

## App-facing creation function

- aiworker.fn_runtime_execution_create_request(...)

## App-facing boards

- aiworker.vw_app_aiworker_runtime_execution_request_board_v1
- aiworker.vw_app_aiworker_runtime_execution_gate_board_v1
- aiworker.vw_app_aiworker_runtime_handoff_packet_board_v1
- aiworker.vw_app_aiworker_runtime_execution_intake_payload_v1

## Relationship to previous views

Selection:

- aiworker.vw_app_aiworker_robot_selection_card_v1

Runtime control:

- aiworker.vw_app_aiworker_runtime_control_profile_v1

Execution intake:

- aiworker.fn_runtime_execution_create_request(...)
- aiworker.runtime_execution_request
