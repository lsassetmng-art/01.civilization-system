# ============================================================
# PERSONA EDGE FUNCTION SPEC
# ============================================================

status: canonical
layer: implementation
component: persona-edge

owner: Boss
prepared_by: Zero

# PURPOSE

Define all Edge Functions used by PersonaOS.

PersonaOS uses Supabase Edge Functions
as execution units for runtime operations.

# EDGE FUNCTIONS

Lifecycle
- persona-create
- persona-event-log-get

Runtime
- persona-state-apply

Visual
- visual-generation-job-create
- visual-compose
- visual-render-result-commit

Security
- sign-event
- snapshot-issue
- snapshot-verify
- snapshot-revoke
- snapshot-revocation-list

Asset
- ai-part-generate
- persona-background-get-signed-urls
- build-character-manifest

Approval
- approval-create
- approval-decision
- approval-effect

# EXECUTION PRINCIPLES

All functions must follow:

fail-closed execution
idempotent behavior
signed events
explicit audit logging

