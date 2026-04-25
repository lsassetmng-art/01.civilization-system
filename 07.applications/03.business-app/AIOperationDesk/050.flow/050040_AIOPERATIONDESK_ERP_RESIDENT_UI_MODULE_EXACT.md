# ============================================================
# AI OPERATION DESK ERP RESIDENT UI MODULE EXACT
# ============================================================

status: exact-fixed
app: AIOperationDesk
layer: flow
owner: Boss
prepared_by: Zero

surface_mode:
- lightweight resident surface inside ERP

collapsed_module:
- help button
- voice button
- review badge
- approval badge
- urgent failure hint

quick_panel_modules:
- explain current screen
- explain current field
- operation QA
- failure response QA
- provisional voucher draft
- execution request creation
- open main console

explanation_module:
- current screen summary
- current field meaning
- related operations
- common mistakes

operation_qa_module:
- step-by-step guidance
- prerequisite checklist
- supported task hints
- follow-up actions

failure_response_module:
- latest error summary
- likely causes
- check items
- retry hint
- escalation hint

provisional_voucher_module:
- voucher type
- company binding
- line item editor
- draft reason
- submit draft request

execution_request_module:
- work type selection
- target binding summary
- scheduled time
- review / approval expectation
- submit governed request

resident_rules:
- all actions remain in supported app scope
- no free chat mode
- no ungated final posting
- heavy queue / audit / settings stay in main console
