# ============================================================
# PHASE 1 GENERATION TARGET FILE LIST PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the concrete file-generation target list for Android Phase 1.

phase_1_generation_targets:

domain_models:
- ForecastDraft.kt
- ActionIdea.kt
- ProposalDraft.kt
- ProfitPreview.kt
- LocalePreference.kt
- CurrencyPreference.kt
- MoneyValue.kt

entities:
- ForecastDraftEntity.kt
- ActionIdeaEntity.kt
- ProposalDraftEntity.kt
- ProfitPreviewEntity.kt
- LocalePreferenceEntity.kt
- CurrencyPreferenceEntity.kt

dao:
- ForecastDraftDao.kt
- ActionIdeaDao.kt
- ProposalDraftDao.kt
- ProfitPreviewDao.kt
- LocalePreferenceDao.kt
- CurrencyPreferenceDao.kt

repositories:
- ForecastRepository.kt
- ActionRepository.kt
- ProposalRepository.kt
- ProfitRepository.kt
- SettingsRepository.kt

viewmodels:
- DashboardViewModel.kt
- ForecastListViewModel.kt
- ForecastEditorViewModel.kt
- ActionBoardViewModel.kt
- ProposalBuilderViewModel.kt
- ProfitPreviewViewModel.kt
- ForecastDetailViewModel.kt
- SettingsViewModel.kt

reducers:
- DashboardReducer.kt
- ForecastListReducer.kt
- ForecastEditorReducer.kt
- ActionBoardReducer.kt
- ProposalBuilderReducer.kt
- ProfitPreviewReducer.kt
- ForecastDetailReducer.kt
- SettingsReducer.kt

screens:
- DashboardScreen.kt
- ForecastListScreen.kt
- ForecastEditorScreen.kt
- ActionBoardScreen.kt
- ProposalBuilderScreen.kt
- ProfitPreviewScreen.kt
- ForecastDetailScreen.kt
- SettingsScreen.kt

navigation:
- AppNavGraph.kt
- AppRoutes.kt

formatting_and_i18n:
- CurrencyFormatter.kt
- NumberFormatter.kt
- DateTimeFormatter.kt
- UiTextResolver.kt
- LocalizationKeys.kt

config_assets:
- strings_default.json
- strings_fallback.json

room_support:
- QuickForecastDatabase.kt

rule:
Phase 1 generation target list must remain focused on:
- local-first chain
- locale foundation
- currency-safe foundation
and must exclude governed workflow classes.
