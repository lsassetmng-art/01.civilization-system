# AIWorkerOS Integration Append: MEGAMI Series Reference Surface

status: active
phase: megami series registration
scope: AIWorkerOS only

## DB objects

Tables:

- aiworker.worker_manufacturer_extension_catalog
- aiworker.worker_series_extension_catalog
- aiworker.worker_model_extension_catalog
- aiworker.worker_model_capability_profile
- aiworker.megami_model_profile
- aiworker.series_tendency_profile

Views:

- aiworker.vw_megami_series_tendency_v1
- aiworker.vw_megami_series_lineup_v1
- aiworker.vw_megami_worker_temporal_focus_v1
- aiworker.vw_megami_friend_lover_selection_card_v1
- aiworker.vw_app_megami_candidate_lineup_v1

## App usage

Applications can read MEGAMI candidates from:

- aiworker.vw_app_megami_candidate_lineup_v1

Worker-specific temporal focus can read:

- aiworker.vw_megami_worker_temporal_focus_v1

Friend/Lover selection can read:

- aiworker.vw_megami_friend_lover_selection_card_v1

## Boundary

MEGAMI model truth remains AIWorkerOS / aiworker.

Application-side contracts, sessions, staffing, and delivery workflows remain outside this series registration.
