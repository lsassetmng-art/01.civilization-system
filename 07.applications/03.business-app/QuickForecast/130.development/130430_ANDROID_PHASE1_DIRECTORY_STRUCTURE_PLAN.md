# ============================================================
# ANDROID PHASE 1 DIRECTORY STRUCTURE PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the Android directory structure for Phase 1 generation.

root_package:
com.lsam.QuickForecast

directory_structure:
- app/src/main/java/com/lsam/QuickForecast/domain/model
- app/src/main/java/com/lsam/QuickForecast/data/local/entity
- app/src/main/java/com/lsam/QuickForecast/data/local/dao
- app/src/main/java/com/lsam/QuickForecast/data/local/db
- app/src/main/java/com/lsam/QuickForecast/data/repository
- app/src/main/java/com/lsam/QuickForecast/ui/navigation
- app/src/main/java/com/lsam/QuickForecast/ui/common
- app/src/main/java/com/lsam/QuickForecast/ui/formatter
- app/src/main/java/com/lsam/QuickForecast/ui/screen/dashboard
- app/src/main/java/com/lsam/QuickForecast/ui/screen/forecastlist
- app/src/main/java/com/lsam/QuickForecast/ui/screen/forecasteditor
- app/src/main/java/com/lsam/QuickForecast/ui/screen/actionboard
- app/src/main/java/com/lsam/QuickForecast/ui/screen/proposalbuilder
- app/src/main/java/com/lsam/QuickForecast/ui/screen/profitpreview
- app/src/main/java/com/lsam/QuickForecast/ui/screen/forecastdetail
- app/src/main/java/com/lsam/QuickForecast/ui/screen/settings
- app/src/main/java/com/lsam/QuickForecast/ui/state
- app/src/main/java/com/lsam/QuickForecast/ui/reducer
- app/src/main/java/com/lsam/QuickForecast/ui/viewmodel
- app/src/main/assets/i18n

rule:
Phase 1 must keep language and currency support foundational,
not patched into individual screen files later.
