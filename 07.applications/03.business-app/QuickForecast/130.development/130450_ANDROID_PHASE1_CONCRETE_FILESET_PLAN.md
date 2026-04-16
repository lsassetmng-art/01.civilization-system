# ============================================================
# ANDROID PHASE 1 CONCRETE FILESET PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the concrete Phase 1 file set to generate.

files:

domain_model:
- domain/model/ForecastDraft.kt
- domain/model/ActionIdea.kt
- domain/model/ProposalDraft.kt
- domain/model/ProfitPreview.kt
- domain/model/LocalePreference.kt
- domain/model/CurrencyPreference.kt
- domain/model/MoneyValue.kt

data_entity:
- data/local/entity/ForecastDraftEntity.kt
- data/local/entity/ActionIdeaEntity.kt
- data/local/entity/ProposalDraftEntity.kt
- data/local/entity/ProfitPreviewEntity.kt
- data/local/entity/LocalePreferenceEntity.kt
- data/local/entity/CurrencyPreferenceEntity.kt

data_dao:
- data/local/dao/ForecastDraftDao.kt
- data/local/dao/ActionIdeaDao.kt
- data/local/dao/ProposalDraftDao.kt
- data/local/dao/ProfitPreviewDao.kt
- data/local/dao/LocalePreferenceDao.kt
- data/local/dao/CurrencyPreferenceDao.kt

data_db:
- data/local/db/QuickForecastDatabase.kt

data_repository:
- data/repository/ForecastRepository.kt
- data/repository/ActionRepository.kt
- data/repository/ProposalRepository.kt
- data/repository/ProfitRepository.kt
- data/repository/SettingsRepository.kt

ui_common:
- ui/common/LocalizationKeys.kt
- ui/common/UiTextResolver.kt

ui_formatter:
- ui/formatter/CurrencyFormatter.kt
- ui/formatter/NumberFormatter.kt
- ui/formatter/DateTimeFormatter.kt

ui_state:
- ui/state/UiState.kt
- ui/state/UiEvent.kt
- ui/state/UiEffect.kt

ui_reducer:
- ui/reducer/DashboardReducer.kt
- ui/reducer/ForecastListReducer.kt
- ui/reducer/ForecastEditorReducer.kt
- ui/reducer/ActionBoardReducer.kt
- ui/reducer/ProposalBuilderReducer.kt
- ui/reducer/ProfitPreviewReducer.kt
- ui/reducer/ForecastDetailReducer.kt
- ui/reducer/SettingsReducer.kt

ui_viewmodel:
- ui/viewmodel/DashboardViewModel.kt
- ui/viewmodel/ForecastListViewModel.kt
- ui/viewmodel/ForecastEditorViewModel.kt
- ui/viewmodel/ActionBoardViewModel.kt
- ui/viewmodel/ProposalBuilderViewModel.kt
- ui/viewmodel/ProfitPreviewViewModel.kt
- ui/viewmodel/ForecastDetailViewModel.kt
- ui/viewmodel/SettingsViewModel.kt

ui_screen:
- ui/screen/dashboard/DashboardScreen.kt
- ui/screen/forecastlist/ForecastListScreen.kt
- ui/screen/forecasteditor/ForecastEditorScreen.kt
- ui/screen/actionboard/ActionBoardScreen.kt
- ui/screen/proposalbuilder/ProposalBuilderScreen.kt
- ui/screen/profitpreview/ProfitPreviewScreen.kt
- ui/screen/forecastdetail/ForecastDetailScreen.kt
- ui/screen/settings/SettingsScreen.kt

ui_navigation:
- ui/navigation/AppRoutes.kt
- ui/navigation/AppNavGraph.kt

assets:
- assets/i18n/strings_default.json
- assets/i18n/strings_fallback.json

excluded_from_phase_1:
- translation variant persistence files
- terminology glossary persistence files
- exchange rate snapshot persistence files
- share / approval / ERP handoff files
- advanced recommendation files
