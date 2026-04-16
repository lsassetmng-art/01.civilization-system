# ============================================================
# PHASE 1 ACCEPTANCE CRITERIA PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines acceptance criteria for Android Phase 1.

acceptance_criteria:
- Forecast -> Action -> Proposal -> Profit chain is operable locally
- local persistence works for core chain
- Dashboard / List / Editor / Action / Proposal / Profit / Detail / Settings screens exist
- basic navigation is stable
- locale preference can be changed and reflected in UI text
- fallback language rendering works safely
- money values are handled as amount + currency_code
- display currency preference can be retained
- profit preview does not collapse money meaning into naked numeric rendering
- reducers, viewmodels, and repositories remain responsibility-separated
- no governed approval / share / ERP handoff dependency exists in Phase 1

fail_conditions:
- UI text hardcoded across screens without key structure
- naked numeric amount handling without currency code
- screen logic directly owns persistence
- repository directly owns UI rendering logic
- governed workflow leaks into Phase 1
