# ============================================================
# PROJECT FLOW SCHEDULE PROPOSAL PREVIEW SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
schedule_proposal_preview

purpose:
Shows template-derived proposed schedule before confirmation.

main_components:
- template summary
- project start date summary
- proposed task timeline or gantt
- dependency overview
- business-day rule summary
- editable date adjustment area
- confirmation action area

actions:
- adjust proposed dates
- discard proposal
- confirm proposal
- export proposal snapshot

rules:
- proposal state must be visually distinct from confirmed state
- edited proposal must remain traceable as adjusted proposal
