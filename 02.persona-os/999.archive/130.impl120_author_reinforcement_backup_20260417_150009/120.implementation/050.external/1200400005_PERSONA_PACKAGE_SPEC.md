# ============================================================
# PERSONA PACKAGE SPEC
# IMPLEMENTATION-READY REFLECTED VERSION
# ============================================================

status: implementation-ready-reflected
canonical: true
scope: PersonaOS / package assembly
prepared_by: Zero
prepared_for: Boss
date: 2026-04-16

## Package purpose

A package is a frozen assembly of released persona artifacts for distribution or runtime delivery.

## Canonical package contents

- release manifest
- truth profile export
- behavior rules export
- guardrail binding export
- capability binding export
- visual manifest export
- asset references
- integrity hash manifest

## Package rules

- package references one published release
- package is immutable after creation
- package version increments on rebuild, never edits in place
- package hash must be computed over canonical item ordering

## Package create API

### POST /persona/v1/packages

Request:
```json
{
  "release_id": "01REL...",
  "requested_by_actor_id": "01ACTOR..."
}
```

Response `201`:
```json
{
  "ok": true,
  "data": {
    "package_id": "01PKG...",
    "status": "built",
    "package_hash": "sha256:..."
  }
}
```
