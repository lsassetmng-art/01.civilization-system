# AIWorkerOS Integration Append: Model Capability Card Reference Surface

status: active
phase: model capability card
scope: AIWorkerOS only

## DB views

- aiworker.vw_app_aiworker_model_capability_overlay_v1
- aiworker.vw_app_aiworker_model_selection_capability_card_v1
- aiworker.vw_app_aiworker_robot_selection_card_v1

## Main app-facing view

Applications should use:

- aiworker.vw_app_aiworker_robot_selection_card_v1

## Usage

This view is for:

- robot selection screen
- model comparison inside a series
- capability badges
- role/model display
- safety note display
- recommended usage display

## Boundary

This view is read-only.

It must not be used to:

- modify robot catalog
- assign robot contracts
- bypass entitlement
- bypass workflow approval
- perform DB writes
- perform external execution
