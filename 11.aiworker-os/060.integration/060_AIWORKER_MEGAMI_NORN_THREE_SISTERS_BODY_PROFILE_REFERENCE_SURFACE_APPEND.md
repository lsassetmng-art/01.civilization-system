# AIWorkerOS Integration Append: MEGAMI NORN Three Sisters Body Profile Reference Surface

status: active
phase: megami norn three sisters body profile
scope: AIWorkerOS only

## DB objects

Table:

- aiworker.model_public_appearance_profile

Views:

- aiworker.vw_megami_norn_three_sisters_appearance_profile_v1
- aiworker.vw_app_megami_norn_three_sisters_lineup_with_body_v1

## App usage

Applications can read the current NORN three sisters body profile from:

- aiworker.vw_megami_norn_three_sisters_appearance_profile_v1

Applications can read NORN three sisters lineup plus body profile from:

- aiworker.vw_app_megami_norn_three_sisters_lineup_with_body_v1

## Scope guard

This reference surface is intentionally named NORN three sisters.

Do not treat it as a MEGAMI-series-wide appearance rule.
