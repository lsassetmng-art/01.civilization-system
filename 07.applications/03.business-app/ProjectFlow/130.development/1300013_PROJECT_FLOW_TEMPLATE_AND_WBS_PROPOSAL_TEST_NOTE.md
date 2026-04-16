# ============================================================
# PROJECT FLOW TEMPLATE AND WBS PROPOSAL TEST NOTE
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

test_points:
- active template can be selected for proposal generation
- template task expansion respects sequence and dependencies
- relative offset and duration produce expected dates
- business-day rule shifts proposed dates correctly
- adjusted proposal remains editable before confirmation
- unconfirmed proposal does not overwrite confirmed schedule
- confirmed proposal remains traceable to source template
- smartphone and pc keep the same proposal capability
