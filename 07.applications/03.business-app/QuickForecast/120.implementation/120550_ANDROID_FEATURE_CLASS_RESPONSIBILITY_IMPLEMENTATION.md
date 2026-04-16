# ============================================================
# ANDROID FEATURE CLASS RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines feature-layer class responsibilities.

feature.forecast:
- DashboardActivity or DashboardFragment
- ForecastListActivity or ForecastListFragment
- ForecastDetailActivity or ForecastDetailFragment
- ForecastEditorActivity or ForecastEditorFragment
- DashboardViewModel
- ForecastListViewModel
- ForecastDetailViewModel
- ForecastEditorViewModel

feature.action:
- ActionBoardActivity or ActionBoardFragment
- ActionBoardViewModel

feature.proposal:
- ProposalBuilderActivity or ProposalBuilderFragment
- ProposalBuilderViewModel

feature.profit:
- ProfitPreviewActivity or ProfitPreviewFragment
- ProfitPreviewViewModel

feature.pro:
- ProApprovalSubmissionActivity or Fragment
- ShareTargetActivity or Fragment
- HistoryActivity or Fragment
- SettingsActivity or Fragment
- ProApprovalSubmissionViewModel
- ShareTargetViewModel
- HistoryViewModel
- SettingsViewModel

principles:
- one primary screen class per screen
- one primary ViewModel per screen
- screen owns rendering, ViewModel owns state orchestration
