# ============================================================
# AIWORKER RESULT SUMMARY CODE AND PAYLOAD MAPPING EXACT
# ============================================================

status: exact-infrastructure
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the mapping direction between result codes, summary codes, and result payload content.

result_code_examples:
- OK_APPLIED
- OK_NOOP_REPLAY
- OK_REVIEW_REQUIRED
- NG_GATE_DENIED
- NG_APPROVAL_REQUIRED
- NG_AUDIT_REQUIRED
- NG_ILLEGAL_TRANSITION
- NG_VALIDATION_FAILED
- NG_WORKER_NOT_ELIGIBLE
- NG_INTERNAL_ERROR

summary_code_mapping_principle:
- result_code expresses outcome class
- summary_code expresses user/business-facing summary family
- detail_code expresses narrower display or handling bucket
- summary band controls verbosity

mapping_examples:
- OK_APPLIED:
  default_summary_code:
  - SUM_APPLIED
  default_band:
  - STANDARD

- OK_NOOP_REPLAY:
  default_summary_code:
  - SUM_ALREADY_APPLIED
  default_band:
  - MINIMAL

- OK_REVIEW_REQUIRED:
  default_summary_code:
  - SUM_REVIEW_REQUIRED
  default_band:
  - REVIEW

- NG_GATE_DENIED:
  default_summary_code:
  - SUM_GATE_DENIED
  default_band:
  - MINIMAL

- NG_APPROVAL_REQUIRED:
  default_summary_code:
  - SUM_APPROVAL_REQUIRED
  default_band:
  - REVIEW

- NG_AUDIT_REQUIRED:
  default_summary_code:
  - SUM_AUDIT_REQUIRED
  default_band:
  - REVIEW

- NG_ILLEGAL_TRANSITION:
  default_summary_code:
  - SUM_ILLEGAL_TRANSITION
  default_band:
  - STANDARD

- NG_VALIDATION_FAILED:
  default_summary_code:
  - SUM_VALIDATION_FAILED
  default_band:
  - STANDARD

- NG_WORKER_NOT_ELIGIBLE:
  default_summary_code:
  - SUM_WORKER_NOT_ELIGIBLE
  default_band:
  - STANDARD

- NG_INTERNAL_ERROR:
  default_summary_code:
  - SUM_INTERNAL_ERROR
  default_band:
  - MINIMAL

hard_rules:
- result_code and summary_code are separate axes
- summary band must not widen restricted data exposure
- same result_code may map to different detail_code without changing summary family
