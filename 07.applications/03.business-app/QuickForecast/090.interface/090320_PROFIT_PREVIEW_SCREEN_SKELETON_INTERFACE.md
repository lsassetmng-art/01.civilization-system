# ============================================================
# PROFIT PREVIEW SCREEN SKELETON INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android screen skeleton for profit preview.

screen_role:
The profit preview screen explains the revenue/profit image of a chosen action.

main_sections:
- top app bar
- source summary area
- assumption input cards
- result cards
- risk / inventory note area
- bottom action area

assumption_groups:
- quantity
- price
- cost
- execution cost

result_groups:
- sales amount
- gross profit
- operating profit
- margin rate

actions:
- recalculate
- save snapshot
- back to proposal
- back to action
- proceed to Pro handoff/approval

state_groups:
- missing assumptions
- calculated
- warning present
- Pro submission readiness hint visible

basic_pro_difference:
Basic:
- local preview result

Pro:
- may continue to approval / handoff readiness
