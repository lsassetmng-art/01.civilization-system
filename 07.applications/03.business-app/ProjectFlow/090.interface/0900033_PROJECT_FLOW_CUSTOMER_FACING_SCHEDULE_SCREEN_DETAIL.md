# ============================================================
# PROJECT FLOW CUSTOMER FACING SCHEDULE SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
customer_facing_schedule

purpose:
Shows customer-facing schedule derived from WBS or proposal data.

main_components:
- project selector
- source selector
- phase and milestone grouping area
- simplified schedule preview
- wording adjustment area
- export action area

source_selector_candidates:
- confirmed_schedule
- wbs_proposal

actions:
- generate customer-facing schedule
- edit visible phases and wording
- export xlsx
- export csv
- export explanation material

ui_rules:
- internal-only detail should be suppressible
- milestone and phase headings should be visually prominent
- customer explanation use should be obvious from the screen context
