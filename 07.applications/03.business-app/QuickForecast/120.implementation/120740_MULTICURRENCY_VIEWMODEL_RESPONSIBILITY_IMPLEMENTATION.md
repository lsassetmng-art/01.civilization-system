# ============================================================
# MULTICURRENCY VIEWMODEL RESPONSIBILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines multicurrency responsibility by ViewModel.

responsibility:

SettingsViewModel:
- display currency preference
- base currency preference
- fallback currency preference

ProposalBuilderViewModel:
- proposal monetary basis display state
- source / base / display currency section control

ProfitPreviewViewModel:
- multicurrency profit rendering state
- base-currency comparison state
- exchange-rate snapshot visibility state

ForecastDetailViewModel:
- multicurrency detail rendering
- canonical money summary visibility
