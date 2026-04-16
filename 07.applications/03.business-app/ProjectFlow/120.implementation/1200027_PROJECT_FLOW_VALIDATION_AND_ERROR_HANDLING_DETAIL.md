# ============================================================
# PROJECT FLOW VALIDATION AND ERROR HANDLING DETAIL
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines validation and error-handling responsibility split.

validation_layers:
- ui validation
- use case validation
- domain rule validation
- persistence constraint validation
- boundary response validation

ui_validation_examples:
- required field missing
- invalid date range input
- missing export format selection

use_case_validation_examples:
- blocked action in unpaid_read_only
- invalid material generation request
- template not active for proposal generation

domain_rule_validation_examples:
- progress outside 0 to 100
- invalid schedule proposal confirmation state
- invalid dependency relation

error_handling_rules:
- user-facing error should be concise
- technical detail should remain inspectable
- retryability should be explicit for boundary and sync failures
- same error policy should apply on smartphone and pc
