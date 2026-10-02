# AIWorkerOS Integration Append: Robot Capability Profile Reference Surface

status: active
phase: robot capability profile
scope: AIWorkerOS only

## DB objects

Tables:

- aiworker.robot_capability_axis_catalog
- aiworker.robot_capability_value_catalog
- aiworker.robot_series_capability_default
- aiworker.robot_model_capability_profile
- aiworker.robot_capability_sharing_policy

Views:

- aiworker.vw_robot_series_capability_internal_v1
- aiworker.vw_robot_series_capability_public_v1
- aiworker.vw_robot_series_capability_matrix_public_v1
- aiworker.vw_robot_model_capability_public_v1
- aiworker.vw_robot_capability_sharing_policy_public_v1
- aiworker.vw_app_robot_capability_profile_directory_v1

## Main app-facing view

Applications should read robot capability profiles from:

- aiworker.vw_app_robot_capability_profile_directory_v1

For model-specific overrides:

- aiworker.vw_robot_model_capability_public_v1

## Internal vs public boundary

Internal view may store:

- internal_higher_function_flag
- internal_note_ja

Public/app-facing views must not expose direct other-company superiority claims.

Beyond may be publicized as:

- high-function
- business-specialized
- high-precision review
- complex work capable
- strong complementary proposal

but not as direct public comparison against other companies.
