# ============================================================
# PERSONA BUILDER API SPEC
# IMPLEMENTATION-READY REFLECTED VERSION
# ============================================================

status: implementation-ready-reflected
canonical: true
scope: PersonaOS / builder api
prepared_by: Zero
prepared_for: Boss
date: 2026-04-16

## Endpoints

### POST /persona/v1/builder/drafts

Request:
```json
{
  "persona_root_id": "01PERSROOT...",
  "draft_code": "main",
  "created_by_actor_id": "01ACTOR..."
}
```

Response `201`:
```json
{
  "ok": true,
  "data": {
    "builder_draft_id": "01BDR...",
    "state": "drafting",
    "draft_version": 1
  }
}
```

### PATCH /persona/v1/builder/drafts/{builder_draft_id}/sections/{section_code}

Request:
```json
{
  "expected_draft_version": 3,
  "section_payload": {
    "display_name": "Zero",
    "summary": "assistant persona"
  },
  "updated_by_actor_id": "01ACTOR..."
}
```

Response `200`:
```json
{
  "ok": true,
  "data": {
    "builder_draft_id": "01BDR...",
    "section_code": "profile",
    "section_revision": 4,
    "draft_version": 4
  }
}
```

### POST /persona/v1/builder/drafts/{builder_draft_id}/validation-runs

Request:
```json
{
  "requested_by_actor_id": "01ACTOR..."
}
```

Response `202`:
```json
{
  "ok": true,
  "data": {
    "validation_run_id": "01VAL...",
    "status": "running"
  }
}
```

### POST /persona/v1/builder/drafts/{builder_draft_id}/approval-requests

Request:
```json
{
  "requested_by_actor_id": "01ACTOR...",
  "approval_policy_code": "persona-standard-release"
}
```

Response `201`:
```json
{
  "ok": true,
  "data": {
    "approval_request_id": "01APRQ...",
    "status": "requested"
  }
}
```

### POST /persona/v1/builder/approval-requests/{approval_request_id}/decisions

Request:
```json
{
  "decided_by_actor_id": "01APPROVER...",
  "decision": "approved",
  "comment": "release allowed"
}
```

Response `201`:
```json
{
  "ok": true,
  "data": {
    "approval_decision_id": "01APRD...",
    "approval_request_id": "01APRQ...",
    "status": "approved"
  }
}
```

### POST /persona/v1/builder/drafts/{builder_draft_id}/publish

Request:
```json
{
  "requested_by_actor_id": "01ACTOR...",
  "release_label": "2026.04.16-main"
}
```

Response `202`:
```json
{
  "ok": true,
  "data": {
    "publish_execution_id": "01PUBEXEC...",
    "status": "preparing"
  }
}
```

## Canonical error codes

- `persona_builder_draft_not_found`
- `persona_builder_invalid_section`
- `persona_builder_version_conflict`
- `persona_builder_validation_running`
- `persona_builder_validation_failed`
- `persona_builder_approval_missing`
- `persona_builder_publish_locked`

# EXACT READY REINFORCEMENT

status_extension: author-reviewed-with-exact-ready-reinforcement
reinforced_at: 20260417_150009
reinforcement_scope:
- implementation contract clarification
- persistence touchpoint clarification
- error family clarification
- acceptance target clarification

domain: builder

minimum_exact_contract:
- define authoritative operation names
- define request-side required identifiers
- define response-side success and reject families
- define validation gates
- define state transition or resolution boundaries
- define persistence touchpoints
- define retry and dead-letter behavior where applicable

minimum_error_families:
- invalid_request
- authority_blocked
- lifecycle_blocked
- conflict_or_duplicate where applicable
- internal_retryable where applicable
- internal_terminal

minimum_acceptance_targets:
- success path
- reject or blocked path
- audit persistence proof
- retry-safe path where applicable

implementation_ready_note:
This reinforcement does not replace the authored content above.
It marks the minimum exact-ready items that must be made explicit
before implementation is considered complete for this document.
