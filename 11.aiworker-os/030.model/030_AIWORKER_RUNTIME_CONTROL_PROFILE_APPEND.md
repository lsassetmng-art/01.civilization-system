# AIWorkerOS Model Append: Runtime Control Profile

status: active
phase: runtime control profile
scope: AIWorkerOS only

## Purpose

Runtime Control Profile converts robot metadata into actual behavior control.

Selection view:

- aiworker.vw_app_aiworker_robot_selection_card_v1

Execution control view:

- aiworker.vw_app_aiworker_runtime_control_profile_v1

Prompt fragment view:

- aiworker.vw_app_aiworker_runtime_control_prompt_fragment_v1

## Control layers

Runtime behavior is resolved from four layers:

1. Role runtime default
2. Series runtime default
3. Model runtime override
4. App runtime policy

## Runtime controls

The resolved profile includes:

- operation_mode_code
- self_review_pass_count
- proposal_count_min
- proposal_count_max
- response_style_code
- required_checklist_code
- context_scope_code
- cx_reference_depth_code
- handoff_format_code
- handoff_required_flag
- review_required_flag
- human_go_required_flag
- external_execution_allowed_flag
- pg_apply_allowed_flag
- destructive_action_allowed_flag
- allowed_actions_jsonb
- forbidden_actions_jsonb
- prompt_fragment_codes_jsonb
- runtime_control_jsonb

## Important boundary

Capability metadata does not grant actions.

All external execution, PG apply, and destructive actions remain blocked unless separately approved by an explicit gate.
