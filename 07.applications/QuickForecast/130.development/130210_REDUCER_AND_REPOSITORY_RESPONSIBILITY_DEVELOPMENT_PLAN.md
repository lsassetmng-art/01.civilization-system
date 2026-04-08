# ============================================================
# REDUCER AND REPOSITORY RESPONSIBILITY DEVELOPMENT PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines development order for reducer transition and repository responsibility design.

recommended_order:
1. ForecastEditor reducer transitions
2. ProposalBuilder reducer transitions
3. ProfitPreview reducer transitions
4. Dashboard and ForecastList reducer transitions
5. ActionBoard reducer transitions
6. repository responsibility cross-check

goal:
Clarify mutable state boundaries before actual ViewModel coding begins.
