# ============================================================
# PERSONA BUILDER IMPLEMENTATION
# IMPLEMENTATION-READY REFLECTED VERSION
# ============================================================

status: implementation-ready-reflected
canonical: true
scope: PersonaOS / builder orchestration
prepared_by: Zero
prepared_for: Boss
date: 2026-04-16

## Builder bounded contexts

- `builder_draft`
- `builder_section_state`
- `builder_change_set`
- `builder_validation_run`
- `builder_validation_issue`
- `builder_approval_request`
- `builder_approval_decision`
- `builder_publish_candidate`
- `builder_publish_execution`
- `builder_audit_record`

## Orchestration states

```text
drafting
  -> validation-running
  -> validation-failed
  -> validation-passed
  -> approval-requested
  -> approved or rejected
  -> publish-preparing
  -> published
```

## Publish preconditions

All must be true:
- latest validation status is `passed`
- approval status is `approved`
- no unresolved blocking validation issue
- visual manifest exists
- release notes exist
- persona root is not soft-deleted
- no other publish execution is running for same persona root

## Builder authority boundary

Builder may:
- create and edit drafts
- compute validation
- request approval
- prepare publish handoff

Builder may not:
- mutate truth pointers directly
- bypass policy-denied errors
- publish without approval
- expose draft ids to external rights records
