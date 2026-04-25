# AIWorkerOS Integration Append: Series Tendency Reference Surface

status: active
phase: series tendency update

## Purpose

Expose generic series tendency profiles for applications and services.

## DB objects

Tables:

- aiworker.series_tendency_axis_catalog
- aiworker.series_tendency_value_catalog
- aiworker.series_tendency_profile

Views:

- aiworker.vw_series_tendency_profile_v1
- aiworker.vw_series_tendency_summary_v1
- aiworker.vw_hd_lovers_series_tendency_compare_v1

## Usage

Applications should read series-level tendency from:

- aiworker.vw_series_tendency_summary_v1

Detailed display or design inspection should read:

- aiworker.vw_series_tendency_profile_v1

HD / LoVerS comparison can read:

- aiworker.vw_hd_lovers_series_tendency_compare_v1

## Boundary

Series tendency does not replace interaction style or model personality assignment.

Layer order:

1. series tendency
2. interaction style
3. model style assignment
4. service profile
5. safety overlay
6. app contract context
