# ============================================================
# PROJECT FLOW MULTILINGUAL CUSTOMER MATERIAL LAYOUT NOTE
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines multilingual layout behavior for customer-facing materials.

layout_targets:
- customer-facing schedule
- progress report
- issue list
- risk list
- decision note
- follow-up action list

layout_rules:
- localized title appears in header
- localized section headings appear consistently
- review state wording appears in selected locale
- wording editor remains available after localized generation
- locale selection should be visible where output locale differs from UI locale

pc_note:
May show preview and wording editor side by side.

smartphone_note:
Uses stacked preview and wording editor blocks.
