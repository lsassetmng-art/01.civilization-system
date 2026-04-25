# AIWorkerOS Integration Append: Series Public Directory Reference Surface

status: active
phase: series public directory
scope: AIWorkerOS only

## DB objects

Tables:

- aiworker.series_public_registry
- aiworker.series_tendency_axis_catalog
- aiworker.series_tendency_value_catalog
- aiworker.series_tendency_profile

Views:

- aiworker.vw_series_public_tendency_detail_v1
- aiworker.vw_series_public_directory_v1
- aiworker.vw_app_aiworker_series_selection_directory_v1

## App usage

Applications should read AI worker series directory from:

- aiworker.vw_app_aiworker_series_selection_directory_v1

## Boundary

This surface is read-only for applications.

Applications should not mutate AIWorkerOS series catalog truth.
