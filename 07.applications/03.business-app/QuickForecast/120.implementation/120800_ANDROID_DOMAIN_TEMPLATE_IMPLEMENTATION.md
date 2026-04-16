# ============================================================
# ANDROID DOMAIN TEMPLATE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the minimum domain-template shape.

domain_template_direction:
- Kotlin data class centered
- explicit ids
- explicit core fields
- nullable fields only when meaningfully optional
- no UI-specific rendering logic inside domain model

minimum_domain_templates:
- ForecastDraft
- ActionIdea
- ProposalDraft
- ProfitPreview
- LocalePreference
- CurrencyPreference
- MoneyValue
