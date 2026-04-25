# AIWorkerOS Integration Append: Beyond Series Reference Surface

status: active
phase: beyond series quality canon
scope: AIWorkerOS only
supersedes:
- previous Beyond management-count reference surface wording

## Scope

Beyond Series only.

No other company or other series comparison is part of this reference surface.

## DB objects

Tables:

- aiworker.worker_manufacturer_extension_catalog
- aiworker.worker_series_extension_catalog
- aiworker.worker_model_extension_catalog
- aiworker.worker_model_capability_profile
- aiworker.beyond_quality_level_catalog
- aiworker.beyond_model_quality_profile
- aiworker.series_tendency_profile

Views:

- aiworker.vw_beyond_series_quality_lineup_v1
- aiworker.vw_beyond_series_worker_quality_lineup_v1
- aiworker.vw_beyond_series_leader_quality_lineup_v1
- aiworker.vw_beyond_series_tendency_v1
- aiworker.vw_ai_company_beyond_candidate_quality_lineup_v1

## Public differentiation

Use:

- work quality level
- task complexity
- review depth
- integration design strength
- delivery quality judgment

Do not use management count as the public differentiation.

## Boundary

Beyond workers and leaders may propose strongly, but must stay within governance and app workflow gates.

Beyond does not weaken action restrictions.
