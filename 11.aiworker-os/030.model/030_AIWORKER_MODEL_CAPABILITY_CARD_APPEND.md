# AIWorkerOS Model Append: Model Capability Card

status: active
phase: model capability card
scope: AIWorkerOS only

## Purpose

Connect Robot Capability Profile to app-facing model selection.

Applications should be able to display:

- model identity
- manufacturer
- series
- role
- public summary
- series capability
- model-specific capability overrides
- safety note
- recommended usage

from one card view.

## Main views

- aiworker.vw_app_aiworker_model_capability_overlay_v1
- aiworker.vw_app_aiworker_model_selection_capability_card_v1
- aiworker.vw_app_aiworker_robot_selection_card_v1

## Card concept

The robot selection card combines:

1. model selection information
2. series-level capability profile
3. model-level capability override profile
4. public safety note
5. app display badge

## Beyond handling

Beyond has:

- high_function_business_specialized_flag = true

Public display badge:

- 高機能・実務特化・高精度レビュー・複雑作業対応

This does not expose direct other-company comparison.
