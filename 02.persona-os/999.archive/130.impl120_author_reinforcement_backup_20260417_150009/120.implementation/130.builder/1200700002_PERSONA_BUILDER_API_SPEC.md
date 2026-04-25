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
