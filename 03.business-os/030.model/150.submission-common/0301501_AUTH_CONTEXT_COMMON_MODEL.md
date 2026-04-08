# ============================================================
# AUTH CONTEXT COMMON MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

definition:
Represents common external API authentication context.

fields:
- auth_context_id
- user_id
- token_reference
- auth_state
- expires_at
- company_context_id
- created_at
- updated_at

rules:
- valid auth context is required before submission
- auth state and business result remain distinct
