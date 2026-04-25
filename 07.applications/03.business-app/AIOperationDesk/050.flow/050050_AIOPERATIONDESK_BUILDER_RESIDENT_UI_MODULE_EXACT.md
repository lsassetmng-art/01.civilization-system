# ============================================================
# AI OPERATION DESK BUILDER RESIDENT UI MODULE EXACT
# ============================================================

status: exact-fixed
app: AIOperationDesk
layer: flow
owner: Boss
prepared_by: Zero

surface_mode:
- lightweight resident surface inside Builder families

collapsed_module:
- help button
- voice button
- review badge

quick_panel_modules:
- explain builder screen
- explain field
- builder operation QA
- draft assist
- execution request creation
- open main console

screen_explanation_module:
- current screen purpose
- selected asset meaning
- common next steps

field_explanation_module:
- field meaning
- effect of values
- related constraints

builder_operation_qa_module:
- step-by-step builder action help
- prerequisite checks
- common mistakes
- supported scope reminder

draft_assist_module:
- draft task type
- current builder asset binding
- draft notes
- submit draft assist request

execution_request_module:
- work type selection
- target binding summary
- review expectation
- submit governed request

resident_rules:
- builder support is supported-family-only
- no unrestricted cross-builder control
- no heavy audit surface inside resident module
- execution uses supported write surfaces only
