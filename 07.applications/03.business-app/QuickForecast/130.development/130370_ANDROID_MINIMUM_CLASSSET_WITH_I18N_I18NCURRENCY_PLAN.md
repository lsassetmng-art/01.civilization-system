# ============================================================
# ANDROID MINIMUM CLASSSET WITH MULTILINGUAL AND MULTICURRENCY PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the minimum class groups needed
for clean Phase 1 implementation.

class_groups:

core_domain:
- ForecastDraft
- ActionIdea
- ProposalDraft
- ProfitPreview

locale_currency_domain:
- LocalePreference
- CurrencyPreference
- MoneyValue

core_data:
- entities
- dao
- repository implementations

core_ui:
- screen composables
- screen state classes
- reducers
- viewmodels

formatting_support:
- currency formatter
- number formatter
- datetime formatter
- localized text resolver

config_support:
- language config
- fallback config
- currency config

rule:
Locale and currency support must enter as foundational classes,
not as later patches hidden inside UI files.
