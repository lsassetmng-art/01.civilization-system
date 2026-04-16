# ============================================================
# MBO REOPEN GOVERNANCE SECURITY
# ============================================================

status: canonical
application: Mbo
layer: security
owner: Boss
prepared_by: Zero

purpose:
Defines roles and permissions for governed reopen handling.

reopen_governance_roles:
- reopen_requester
- reopen_approver
- reopen_executor
- ERP_impact_reviewer
- system_auditor

permission_rules:

  reopen_requester:
    permissions:
      - create_reopen_request
      - read_own_reopen_request

  reopen_approver:
    permissions:
      - read_reopen_request
      - approve_reopen_request
      - reject_reopen_request

  reopen_executor:
    permissions:
      - execute_approved_reopen
      - change_state_under_governed_process

  ERP_impact_reviewer:
    permissions:
      - read_transferred_record_reopen_requests
      - record_ERP_impact_note

  system_auditor:
    permissions:
      - read_all_reopen_history
      - read_approval_history
      - read_execution_history

special_rules:
- requester and approver should not be the same actor in normal governance
- transferred-record reopen requires ERP_impact_reviewer visibility
- reopen execution is prohibited without approved status
- auditors remain read-only

