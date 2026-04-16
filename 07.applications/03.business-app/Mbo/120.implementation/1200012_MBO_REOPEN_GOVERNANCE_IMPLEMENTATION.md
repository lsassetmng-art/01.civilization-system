# ============================================================
# MBO REOPEN GOVERNANCE IMPLEMENTATION
# ============================================================

status: canonical
application: Mbo
layer: implementation
owner: Boss
prepared_by: Zero

purpose:
Implementation-facing rules for reopen governance.

server_side_rules:
- reopen request creation must be persisted before any state change
- approval must be persisted before execution becomes possible
- reopen execution must verify approved status server-side
- transferred-record reopen must verify ERP impact note requirements server-side
- prior confirmation and transmission history must remain queryable

minimum_data_objects:
- reopen_request
- reopen_approval_log
- reopen_execution_log
- ERP_impact_note

validation_rules:
- reopen_reason_code is required
- reopen_reason_detail is required
- reopen_scope is required
- target_state must be evaluation_drafted
- transferred reopen requires ERP impact review completion
- reopen requester must have requester permission
- reopen approver must have approver permission
- reopen executor must have executor permission

UI_rules:
- reopen must be shown as governed exception flow, not normal edit flow
- approved vs rejected vs executed status must be visually distinct
- prior finalized/transferred history must remain visible during reopen review
- affected ERP transmission history must be visibly linked

