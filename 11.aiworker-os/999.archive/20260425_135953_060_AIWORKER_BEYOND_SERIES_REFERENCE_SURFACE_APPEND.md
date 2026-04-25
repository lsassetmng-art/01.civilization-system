# AIWorkerOS Integration Append: Beyond Series Reference Surface

status: active
phase: beyond series registration

## DB objects

Tables:

- aiworker.worker_manufacturer_extension_catalog
- aiworker.worker_series_extension_catalog
- aiworker.worker_model_extension_catalog
- aiworker.worker_model_capability_profile
- aiworker.series_tendency_profile

Views:

- aiworker.vw_beyond_series_lineup_v1
- aiworker.vw_beyond_series_worker_lineup_v1
- aiworker.vw_beyond_series_leader_lineup_v1
- aiworker.vw_beyond_series_tendency_v1
- aiworker.vw_ai_company_beyond_candidate_lineup_v1

## App usage

AICompanyManager should read Beyond candidates from:

- aiworker.vw_ai_company_beyond_candidate_lineup_v1

## Boundary

Beyond series registration does not weaken action restrictions.

Beyond workers and leaders may propose strongly, but must stay within governance and app workflow gates.
