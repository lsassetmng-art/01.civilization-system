# ============================================================
# AI OPERATION DESK REVIEW APPROVAL DECISION RULES EXACT
# ============================================================

status: exact-fixed
app: AIOperationDesk
layer: operations
owner: Boss
prepared_by: Zero

purpose:
Define exact decision rules for review / approval in v1.

review_required_when:
- supported task type default says review_required_default = true
- lane_type = draft and output can materially affect business next step
- resident surface request includes retry or correction proposal for failed flow
- request touches ERP configuration context
- request uses controlled write surface other than explanation-only
- request creates provisional voucher, proposal draft, estimate draft, or execution request
- risk_class = medium
- risk_class = high
- risk_class = privileged

approval_required_when:
- supported task type default says approval_required_default = true
- risk_class = high and finalization or external impact is possible
- risk_class = privileged
- request is execution lane and target is sensitive operational context
- request can influence ERP critical configuration finalization
- request can initiate production-wide irreversible action
- request can cause authority change
- request can cause final external send

review_not_sufficient_by_itself_when:
- destructive change
- final posting
- final external send
- authority change
- ERP critical configuration finalization
- production-wide irreversible action

return_path_rules:
- returned review sends work_order_status back to draft
- returned approval sends work_order_status back to draft
- rejected review cancels work order unless explicitly reopened
- rejected approval cancels work order unless explicitly reopened

lane_defaults:
  consult:
    default_review: false
    default_approval: false
  draft:
    default_review: true
    default_approval: false
  execution:
    default_review: true
    default_approval: conditional_on_risk

resident_surface_rules:
- ERP resident provisional voucher always review_required = true
- ERP resident execution request creation always review_required = true
- Builder resident draft assist may skip approval unless risk escalates
- resident surfaces never perform ungated final posting
