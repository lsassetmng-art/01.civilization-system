# ============================================================
# BUSINESS AI WORKER AUTHORITY REVIEW APPROVAL FIXED
# ============================================================

status: canonical
layer: policy
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines fixed authority, review, approval,
publication, disclaimer, and execution-boundary rules
for Business AI Worker.

# ============================================================
# 1. OFFICIAL PRINCIPLE
# ============================================================

Business AI Worker may assist, propose, summarize,
draft, analyze, predict, and prepare.

Business AI Worker does not become the final human approver by default.

Where risk exists,
review and approval are governed explicitly.

# ============================================================
# 2. FIXED DECISION CLASSES
# ============================================================

decision_classes:

class_a_safe_assistance:
- routine embedded assistance
- summary generation
- translation or wording support
- advisory response in non-protected domains
- internal draft generation

class_b_review_required:
- output that may affect external communication
- output that may affect customer-facing content
- output that may affect financial interpretation
- patch proposal
- test result intended for formal use
- marketplace listing draft
- advisory output intended for operational adoption

class_c_approval_required:
- external publication
- real-world action execution
- production-affecting technical action
- monetary-impacting finalized action
- contract-like output handoff
- high-risk decision handoff
- customer-visible final send or publish

# ============================================================
# 3. EMBEDDED APP ROUTINE WORK FIXED RULE
# ============================================================

embedded_app_routine_work_allowed_without_review:
- routine in-app assistance
- field suggestion
- form completion assistance
- draft-only help
- non-final internal sorting or tagging
- non-binding advisory hints inside app

embedded_app_routine_work_requires_review:
- customer-facing text preparation
- money-related final text
- final business recommendation for execution
- output intended to leave the app boundary

embedded_app_routine_work_requires_approval:
- any external send
- any external publish
- any irreversible business action
- any action explicitly marked approval_required by app policy

# ============================================================
# 4. ADVISORY CONSULTATION FIXED RULE
# ============================================================

advisory_domains_non_protected_examples:
- ERP usage guidance
- general workflow advice
- product planning discussion
- improvement brainstorming

advisory_domains_protected_examples:
- medical
- legal
- high-risk management advice

fixed_rules:
- protected advisory must require disclaimer
- protected advisory must require consent
- protected advisory may answer, but remains informational
- protected advisory must not auto-execute real-world action
- advisory result may create task proposals, but not final action by default

# ============================================================
# 5. EXECUTION WORK FIXED RULE
# ============================================================

execution_work_examples:
- marketplace listing support
- yahoo auctions listing support
- mercari listing support
- night maintenance operation
- bug fix support
- testing support

execution_work_may_do:
- prepare work output
- generate drafts
- generate reports
- prepare listing text
- prepare patch proposal
- perform governed test execution
- perform governed scheduled work inside authorized scope

execution_work_may_not_do_by_default:
- directly publish externally
- directly approve externally visible output
- directly make unrestricted production changes
- directly impersonate human authorization
- bypass review_required or approval_required flags

# ============================================================
# 6. MARKETPLACE / EXTERNAL PUBLICATION FIXED RULE
# ============================================================

targets:
- marketplace
- yahoo auctions
- mercari
- other external listing or publication surfaces

fixed_rules:
- listing draft creation is allowed
- listing output preparation is allowed
- direct publication is prohibited unless an explicit narrow publish policy exists
- where approval_required=true, human approval is mandatory
- publication audit is mandatory

# ============================================================
# 7. NIGHT OPERATION FIXED RULE
# ============================================================

night_operation_allowed_only_when:
- operation window is pre-authorized
- worker scope is explicitly authorized
- target operation is auditable
- human escalation path exists

night_operation_prohibited_when:
- privileged scope is undefined
- rollback path is undefined where required
- operation is outside approved scope
- policy marks action as human-only

# ============================================================
# 8. BUGFIX / TEST FIXED RULE
# ============================================================

bugfix_support_allowed:
- issue analysis
- patch proposal
- test-case proposal
- governed test execution
- result summarization

bugfix_support_requires_review:
- patch proposal for implementation adoption
- formal test result used for decision
- release-impacting result

bugfix_support_requires_approval:
- direct production deployment
- direct production patch apply
- final release decision
- high-risk environment change

# ============================================================
# 9. REVIEW_REQUIRED FIXED CONDITIONS
# ============================================================

review_required_must_be_true_when:
- output is customer-facing
- output is externally visible
- output has financial implication
- output is a formal recommendation to act
- output is a patch proposal
- output is a marketplace listing draft intended for use
- output is a test result intended for operational decision
- output is a protected-domain advisory summary intended for action

review_required_may_be_false_when:
- output is internal-only and low-risk
- output is exploratory only
- output is not intended for execution or publication
- policy explicitly classifies it as class_a_safe_assistance

# ============================================================
# 10. APPROVAL_REQUIRED FIXED CONDITIONS
# ============================================================

approval_required_must_be_true_when:
- external publication occurs
- real-world execution occurs
- production-affecting technical action occurs
- finalized money-affecting action occurs
- protected-domain output is used for real decision handoff
- policy or app marks action as approval-gated

approval_required_may_be_false_when:
- output stays internal and non-binding
- output is draft-only
- output is exploratory and not executed
- action is explicitly classified as safe assistance with no external effect

# ============================================================
# 11. DISCLAIMER FIXED CONDITIONS
# ============================================================

disclaimer_required_must_be_true_when:
- consultation_type = medical
- consultation_type = legal
- consultation_type = high-risk management advice

disclaimer_required_may_be_false_when:
- consultation remains in non-protected advisory domains
- no protected-domain policy is triggered

consent_required_follows_disclaimer:
- if disclaimer_required=true, consent_required=true

# ============================================================
# 12. FIXED HUMAN-ONLY ACTIONS
# ============================================================

human_only_actions_by_default:
- final approval
- final legal authorization
- final production release authorization
- final external publication authorization
- final contract-like commitment
- final monetary commitment where policy requires human approval

# ============================================================
# 13. FIXED AI-ALLOWED ACTIONS
# ============================================================

ai_allowed_actions_by_default:
- propose
- summarize
- translate
- draft
- compare
- analyze
- forecast
- prepare review material
- prepare approval material
- prepare work output
- perform explicitly governed low-risk execution inside approved scope

# ============================================================
# 14. ERROR / BLOCK RULES
# ============================================================

must_block_when:
- disclaimer is required but missing
- consent is required but missing
- requested action exceeds authorized scope
- review is required but not completed
- approval is required but not granted
- requested world scope is not permitted
- requested specialty is not compatible
- requested publish path is not authorized

# ============================================================
# 15. FIXED STATUS INTERPRETATION
# ============================================================

review_required:
Meaning output cannot proceed to risky use until review is completed.

awaiting_approval:
Meaning output or action cannot finalize until human approval is completed.

handoff_ready:
Meaning output is prepared but still subject to review/approval policy if flagged.

completed:
Meaning governed process completed within allowed scope.
It does not imply automatic external publication or human approval unless explicitly recorded.

# ============================================================
# 16. OFFICIAL SUMMARY
# ============================================================

The fixed rule is:

AI Worker may assist broadly,
but review and approval gates become mandatory
when risk, external effect, publication,
money impact, protected advisory,
or production-affecting action is involved.

Final approval remains human by default.
