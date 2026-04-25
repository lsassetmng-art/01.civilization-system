# ============================================================
# AI OPERATION DESK ERP RESIDENT SURFACE EXACT STATEFLOW
# ============================================================

status: exact-fixed
app: AIOperationDesk
layer: flow
owner: Boss
prepared_by: Zero

surface_goal:
Provide immediate in-context support inside ERP.

entry_state:
- ERP screen is open
- resident surface is available in collapsed mode

states:
1. collapsed_waiting
2. quick_open
3. explanation_mode
4. operation_qa_mode
5. error_help_mode
6. provisional_voucher_mode
7. execution_request_mode
8. review_bridge_mode
9. approval_bridge_mode
10. closed_back_to_collapsed

stateflow:

collapsed_waiting:
- shows:
  - help icon
  - voice icon
  - notification badge
  - urgent failure hint when present
- transitions:
  - tap_help -> quick_open
  - tap_voice -> quick_open
  - urgent_error_detected -> error_help_mode

quick_open:
- shows:
  - explain this screen
  - explain this field
  - how do I do this
  - how do I fix this error
  - create provisional voucher
  - create execution request
- transitions:
  - choose_explain -> explanation_mode
  - choose_qa -> operation_qa_mode
  - choose_error -> error_help_mode
  - choose_voucher -> provisional_voucher_mode
  - choose_execution -> execution_request_mode
  - close -> collapsed_waiting

explanation_mode:
- input:
  - current screen context
  - current field context
- output:
  - explanation answer
  - related operation hints
- transitions:
  - ask_more -> operation_qa_mode
  - create_request -> execution_request_mode
  - close -> collapsed_waiting

operation_qa_mode:
- input:
  - supported app scope
  - context snapshot
- output:
  - step-by-step operation guidance
  - common mistakes
- transitions:
  - unresolved_error -> error_help_mode
  - need_draft -> provisional_voucher_mode
  - need_execution -> execution_request_mode
  - close -> collapsed_waiting

error_help_mode:
- input:
  - latest_error_code
  - context snapshot
- output:
  - likely causes
  - check items
  - retry guidance
  - escalation recommendation
- transitions:
  - create_retry_request -> execution_request_mode
  - back -> quick_open
  - close -> collapsed_waiting

provisional_voucher_mode:
- input:
  - voucher type
  - company
  - line items
- output:
  - provisional voucher draft request
- transitions:
  - review_needed -> review_bridge_mode
  - saved -> collapsed_waiting
  - cancel -> quick_open

execution_request_mode:
- input:
  - work type
  - target bindings
  - scheduled time
- output:
  - compiled execution request
- transitions:
  - review_required -> review_bridge_mode
  - approval_required -> approval_bridge_mode
  - ready -> collapsed_waiting
  - cancel -> quick_open

review_bridge_mode:
- output:
  - review request prepared
- transitions:
  - submitted -> collapsed_waiting
  - back -> quick_open

approval_bridge_mode:
- output:
  - approval request prepared
- transitions:
  - submitted -> collapsed_waiting
  - back -> quick_open

rules:
- resident surface is lightweight
- no ungated final posting from resident surface
- no unrestricted direct internal write from resident surface
