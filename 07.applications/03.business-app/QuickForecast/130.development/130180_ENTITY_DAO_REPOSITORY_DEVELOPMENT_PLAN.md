# ============================================================
# ENTITY DAO REPOSITORY DEVELOPMENT PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines recommended development order for entity / DAO / repository layer.

recommended_order:
1. forecast_draft_entity and ForecastDraftDao
2. forecast_scenario_entity and ForecastScenarioDao
3. action_idea_entity and ActionIdeaDao
4. proposal_draft_entity and ProposalDraftDao
5. profit_preview_entity and ProfitPreviewDao
6. profit_assumption_entity and ProfitAssumptionDao
7. history_entry_entity and HistoryEntryDao
8. sync / approval / share / handoff cache entities and DAOs
9. repositories for core chain
10. repositories for Pro governance

goal:
Stabilize the Forecast -> Action -> Proposal -> Profit local chain first.
