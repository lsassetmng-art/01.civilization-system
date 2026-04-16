# ============================================================
# PROJECT FLOW PROPOSAL ADJUSTMENT AND CONFIRMATION FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

flow:
1. user opens generated proposal preview
2. user checks task order and milestone placement
3. user edits dates or duration where needed
4. system recalculates downstream dependent items when applicable
5. user reviews adjusted result
6. user confirms final proposal
7. confirmed proposal becomes project schedule baseline

important_rules:
- unconfirmed proposal must not overwrite confirmed operational schedule
- confirmed proposal must remain traceable to source template
