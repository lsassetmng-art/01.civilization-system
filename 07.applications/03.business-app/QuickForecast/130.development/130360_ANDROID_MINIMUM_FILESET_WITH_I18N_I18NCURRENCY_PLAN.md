# ============================================================
# ANDROID MINIMUM FILESET WITH MULTILINGUAL AND MULTICURRENCY PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the minimum Android file set
including multilingual and multicurrency foundations.

principle:
Do not fully implement all multilingual and multicurrency density at once.
Introduce only the minimum foundation required
to keep later expansion clean.

# ============================================================
# 1. PHASE 1 MINIMUM FILESET
# ============================================================

phase_1_minimum_files:

domain_models:
- ForecastDraft
- ActionIdea
- ProposalDraft
- ProfitPreview
- LocalePreference
- CurrencyPreference
- MoneyValue

data_local:
- ForecastDraftEntity
- ActionIdeaEntity
- ProposalDraftEntity
- ProfitPreviewEntity
- LocalePreferenceEntity
- CurrencyPreferenceEntity

dao:
- ForecastDraftDao
- ActionIdeaDao
- ProposalDraftDao
- ProfitPreviewDao
- LocalePreferenceDao
- CurrencyPreferenceDao

repositories:
- ForecastRepository
- ActionRepository
- ProposalRepository
- ProfitRepository
- SettingsRepository

ui_screens:
- DashboardScreen
- ForecastListScreen
- ForecastEditorScreen
- ActionBoardScreen
- ProposalBuilderScreen
- ProfitPreviewScreen
- ForecastDetailScreen
- SettingsScreen

viewmodels:
- DashboardViewModel
- ForecastListViewModel
- ForecastEditorViewModel
- ActionBoardViewModel
- ProposalBuilderViewModel
- ProfitPreviewViewModel
- ForecastDetailViewModel
- SettingsViewModel

formatters:
- CurrencyFormatter
- NumberFormatter
- DateTimeFormatter
- UiTextResolver

state_support:
- UiState
- UiEvent
- UiEffect
- ScreenReducer base

navigation:
- AppNavGraph
- Route definitions

minimum_i18n_assets:
- localization key set
- default language dictionary
- fallback language dictionary

minimum_multicurrency_assets:
- base currency setting
- display currency setting
- money display helpers

# ============================================================
# 2. DEFERRED FILES
# ============================================================

deferred_files:
- TranslationVariant persistence full set
- TerminologyGlossary persistence full set
- ExchangeRateSnapshot persistence full set
- multicurrency proposal comparison dedicated screen
- multilingual draft comparison dedicated screen
- governed approval / share / ERP handoff classes
- notification linkage classes
- advanced recommendation classes

# ============================================================
# 3. WHY THESE ARE MINIMUM
# ============================================================

why_minimum:
- preserves Forecast -> Action -> Proposal -> Profit chain
- preserves locale-aware UI from the start
- preserves currency-safe money handling from the start
- avoids later destructive rewrite
- avoids premature governed workflow expansion
