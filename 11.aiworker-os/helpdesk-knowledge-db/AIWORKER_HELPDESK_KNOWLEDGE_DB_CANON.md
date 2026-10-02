# AIWorkerOS Helpdesk Knowledge DB Canon

## 1. Canonical decision

AIWorkerOS owns Helpdesk Knowledge DB, answer generation, troubleshooting, escalation judgment, support runbooks, and support response logging.

Portal site is the user-facing entry/router.
Each app provides support knowledge data.
CommonOS provides shared UI.
CX22073JW provides reference/background knowledge only.

## 2. Scope

AIWorkerOS Helpdesk Knowledge DB covers:

- supported app profiles
- app support context
- QA entries
- screen knowledge
- operation flows
- error patterns
- troubleshooting runbooks
- escalation rules
- answer templates
- support tickets
- evidence links
- feedback
- response logs
- app support knowledge import contract

## 3. Recommended table candidates

Initial table candidates:

- aiworker.helpdesk_supported_app
- aiworker.helpdesk_app_support_profile
- aiworker.helpdesk_app_context_route
- aiworker.helpdesk_qa_entry
- aiworker.helpdesk_screen_knowledge
- aiworker.helpdesk_operation_flow
- aiworker.helpdesk_error_pattern
- aiworker.helpdesk_troubleshooting_runbook
- aiworker.helpdesk_escalation_rule
- aiworker.helpdesk_answer_template
- aiworker.helpdesk_support_ticket
- aiworker.helpdesk_support_evidence_link
- aiworker.helpdesk_answer_feedback
- aiworker.helpdesk_response_log
- aiworker.helpdesk_knowledge_import_batch

## 4. Minimum first implementation set

Recommended first set:

- aiworker.helpdesk_supported_app
- aiworker.helpdesk_app_support_profile
- aiworker.helpdesk_qa_entry
- aiworker.helpdesk_screen_knowledge
- aiworker.helpdesk_operation_flow
- aiworker.helpdesk_error_pattern
- aiworker.helpdesk_troubleshooting_runbook
- aiworker.helpdesk_escalation_rule
- aiworker.helpdesk_answer_template

Tickets and evidence can follow after read-only knowledge lookup is stable.

## 5. Core table summaries

helpdesk_supported_app:

- supported_app_id
- app_code
- app_display_name
- app_category
- support_enabled
- public_faq_enabled
- login_required_for_private_support
- ticket_enabled
- evidence_attachment_enabled
- default_locale
- support_status
- sort_order
- created_at
- updated_at

helpdesk_app_support_profile:

- support_profile_id
- app_code
- support_summary
- available_support_modes
- default_escalation_policy_code
- allowed_attachment_policy_code
- answer_style_code
- return_route_enabled
- screen_help_enabled
- operation_flow_enabled
- error_troubleshooting_enabled
- qa_enabled
- ticket_enabled
- created_at
- updated_at

helpdesk_qa_entry:

- qa_entry_id
- app_code
- screen_code
- flow_code
- question
- answer
- keywords
- locale
- visibility
- source_type
- source_ref
- confidence_level
- effective_from
- effective_to
- created_at
- updated_at

helpdesk_error_pattern:

- error_pattern_id
- app_code
- error_code
- error_pattern
- detected_from
- probable_cause
- user_facing_explanation
- developer_action
- safe_next_action
- escalation_required
- related_runbook_code
- created_at
- updated_at

## 6. Relationship with Guardrail Knowledge DB

Helpdesk Knowledge DB and Guardrail Knowledge DB are separate but connected.

helpdesk_* responsibility:

- user support
- QA
- operation guidance
- error explanation
- ticket/evidence
- escalation display

guardrail_* responsibility:

- dangerous operation control
- mistake pattern
- prohibited action
- preflight checks
- recurrence prevention
- runtime blocking conditions

Helpdesk may consult guardrail runtime results.
Helpdesk must not duplicate guardrail decision logic.

## 7. Relationship with CX22073JW

CX22073JW provides reference/background knowledge.

AIWorkerOS may read CX22073JW through approved reference paths when it improves answer quality.

CX22073JW must not:

- independently decide support outcomes
- own Helpdesk ticket state
- own escalation judgment
- own user session
- execute app operations

## 8. API candidates

Recommended API candidates:

- GET /api/v1/helpdesk/apps
- GET /api/v1/helpdesk/apps/:app_code/profile
- GET /api/v1/helpdesk/apps/:app_code/qa
- GET /api/v1/helpdesk/apps/:app_code/screens
- GET /api/v1/helpdesk/apps/:app_code/flows
- GET /api/v1/helpdesk/apps/:app_code/errors
- POST /api/v1/helpdesk/ask
- POST /api/v1/helpdesk/troubleshoot
- POST /api/v1/helpdesk/tickets
- GET /api/v1/helpdesk/tickets
- GET /api/v1/helpdesk/tickets/:ticket_id
- POST /api/v1/helpdesk/feedback

## 9. Development order

Recommended order:

1. read-only inventory of existing aiworker schema
2. table overlap check with guardrail structures
3. HLD finalize
4. DDL draft only
5. AI review
6. DDL apply only after explicit user GO
7. seed minimal supported app data
8. read-only API
9. Portal UI integration
10. ticket/evidence support
