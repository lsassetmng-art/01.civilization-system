# ============================================================
# ANDROID FILE BATCH PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines recommended file batches for one-block generation.

batch_01:
- database
- 5 to 7 core entities
- related dao interfaces

batch_02:
- 5 core repository implementations
- model mappers if needed

batch_03:
- 3 core ViewModels
- Dashboard / ForecastList / ForecastEditor screens

batch_04:
- 3 core ViewModels
- ActionBoard / ProposalBuilder / ProfitPreview screens

batch_05:
- common ui components

batch_06:
- Pro cache entities and dao
- Pro repositories

batch_07:
- Pro ViewModels and screens

principles:
- each batch should remain buildable
- avoid mixing too many unrelated packages in one generation block
