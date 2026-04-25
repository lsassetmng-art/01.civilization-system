# AIWorkerOS Integration Append: Beyond Series Quality Reference Surface

status: active
phase: beyond series quality update

## Scope

Beyond Series only.

## DB objects

Tables:

- aiworker.beyond_quality_level_catalog
- aiworker.beyond_model_quality_profile
- aiworker.worker_model_extension_catalog
- aiworker.series_tendency_profile

Views:

- aiworker.vw_beyond_series_quality_lineup_v1
- aiworker.vw_beyond_series_worker_quality_lineup_v1
- aiworker.vw_beyond_series_leader_quality_lineup_v1
- aiworker.vw_beyond_series_tendency_v1
- aiworker.vw_ai_company_beyond_candidate_quality_lineup_v1

## App usage

AICompanyManager should read Beyond candidates from:

- aiworker.vw_ai_company_beyond_candidate_quality_lineup_v1

## Boundary

Do not expose comparison against other companies or other series.

Public differentiation should use:

- work quality level
- task complexity
- review depth
- integration design strength
- delivery quality judgment

Do not use management count as the public differentiation.
