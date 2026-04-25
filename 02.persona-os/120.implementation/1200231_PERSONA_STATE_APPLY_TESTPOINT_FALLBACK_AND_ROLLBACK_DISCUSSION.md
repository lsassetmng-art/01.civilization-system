# PERSONA STATE APPLY TESTPOINT FALLBACK AND ROLLBACK DISCUSSION

status: no-code-implementation-entry
system: PersonaOS
layer: implementation
confirmed_at: 20260419_105016

purpose:
Defines the test-point, fallback, and rollback discussion outputs for persona-state-apply.

discussion_testpoints:
- invalid_json path
- missing_required path
- forbidden path
- apply_halted path
- event_not_enabled path
- persona_not_found path
- duplicate_noop path
- engine_error path
- mark_processed_failed path
- success with class_a snapshot policy
- success with class_b snapshot policy
- success with class_c no-snapshot policy

fallback_discussion_rules:
- fallback is discussion-only and must not become runtime mutation logic by accident
- duplicate remains noop, not fallback success
- mark_processed failure remains terminal discussion case, not silent recovery
- snapshot class behavior must remain explicit

rollback_discussion_rules:
- rollback discussion here means release and operational rollback planning only
- it does not authorize DB rollback scripts
- it does not authorize deploy rollback procedures
- it may define which upstream step would be reconsidered if implementation later fails

discussion_outputs_expected:
- canonical test checklist
- canonical terminal expectation table
- canonical fallback notes
- canonical rollback-precondition notes
