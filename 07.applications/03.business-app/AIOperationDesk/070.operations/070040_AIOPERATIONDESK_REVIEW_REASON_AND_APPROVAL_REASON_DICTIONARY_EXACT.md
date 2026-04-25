# ============================================================
# AI OPERATION DESK REVIEW REASON AND APPROVAL REASON DICTIONARY EXACT
# ============================================================

status: exact-fixed
app: AIOperationDesk
layer: operations
owner: Boss
prepared_by: Zero

purpose:
Define exact reason dictionaries for review and approval.

review_reason_dictionary:
- RR001_DRAFT_MATERIAL_IMPACT:
    meaning:
      Draft output may materially affect the next business step.
- RR002_ERP_CONFIGURATION_CONTEXT:
    meaning:
      Request touches ERP configuration context and requires reviewer check.
- RR003_CONTROLLED_WRITE_SURFACE:
    meaning:
      Request uses controlled write surface other than explanation-only mode.
- RR004_EXECUTION_REQUEST_PRECHECK:
    meaning:
      Execution request must be reviewed before moving forward.
- RR005_FAILURE_RETRY_VALIDATION:
    meaning:
      Retry or correction path needs human validation.
- RR006_MEDIUM_OR_HIGH_RISK:
    meaning:
      Risk class escalated beyond explanation-only.
- RR007_PRIVILEGED_CONTEXT_USAGE:
    meaning:
      Request uses privileged or near-privileged context candidate.
- RR008_PROVISIONAL_VOUCHER_CHECK:
    meaning:
      Provisional voucher draft must be checked before broader use.

approval_reason_dictionary:
- AR001_HIGH_RISK_FINALIZATION:
    meaning:
      High-risk finalization path requires approval.
- AR002_PRIVILEGED_RISK:
    meaning:
      Privileged risk path requires strongest approval.
- AR003_AUTHORITY_CHANGE:
    meaning:
      Request can affect authority or permission meaning.
- AR004_FINAL_EXTERNAL_SEND:
    meaning:
      Request can cause final external send.
- AR005_ERP_CRITICAL_CONFIGURATION:
    meaning:
      Request can influence ERP critical configuration finalization.
- AR006_IRREVERSIBLE_PRODUCTION_SCOPE:
    meaning:
      Request can cause production-wide irreversible impact.

minimum_mapping_examples:
- ERP provisional voucher draft:
  - review_reason:
    - RR008_PROVISIONAL_VOUCHER_CHECK
- ERP execution request in sensitive area:
  - review_reason:
    - RR004_EXECUTION_REQUEST_PRECHECK
    - RR006_MEDIUM_OR_HIGH_RISK
  - approval_reason:
    - AR005_ERP_CRITICAL_CONFIGURATION
- Builder execution request with broad effect:
  - review_reason:
    - RR004_EXECUTION_REQUEST_PRECHECK
  - approval_reason:
    - AR006_IRREVERSIBLE_PRODUCTION_SCOPE

rules:
- reason codes must be stable identifiers
- UI wording may vary by locale, but reason code is canonical
- approval reason codes never replace review reasons; they layer on top
