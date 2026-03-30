# ============================================================
# PERSONA BUILDER API SPEC
# ============================================================

status: canonical
scope: persona.builder.api.spec
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Define the implementation-facing API surfaces
for Persona Builder.


# API DOMAINS

- create draft
- load draft
- save change set
- run validation
- request approval
- prepare publish candidate
- archive draft
- fetch audit trail


# EXAMPLE ENDPOINT FAMILIES

- /persona-builder/drafts
- /persona-builder/drafts/{draft_id}
- /persona-builder/drafts/{draft_id}/changes
- /persona-builder/drafts/{draft_id}/validate
- /persona-builder/drafts/{draft_id}/approval-request
- /persona-builder/drafts/{draft_id}/publish-candidate
- /persona-builder/drafts/{draft_id}/audit


# RULE

All Builder APIs must be:

- actor-attributed
- audit-safe
- fail-closed
- boundary-aware
