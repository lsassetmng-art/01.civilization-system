# ============================================================
# ANDROID PHASE 1 FILE GENERATION BATCH PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines batch groupings for Phase 1 file generation.

batch_1_foundation:
- domain models
- locale and currency models
- shared ui state contracts
- formatter and text resolver
- navigation route definitions

batch_2_persistence:
- entities
- dao
- database
- repository interfaces / implementations

batch_3_settings_and_configuration:
- settings screen
- settings viewmodel
- locale preference wiring
- currency preference wiring
- i18n asset files

batch_4_core_chain_screens:
- forecast editor
- action board
- proposal builder
- profit preview
- forecast detail

batch_5_shell_and_entry:
- dashboard
- forecast list
- nav graph
- app entry linkage

rule:
Generate from lower volatility foundation
toward higher volatility feature screens.
