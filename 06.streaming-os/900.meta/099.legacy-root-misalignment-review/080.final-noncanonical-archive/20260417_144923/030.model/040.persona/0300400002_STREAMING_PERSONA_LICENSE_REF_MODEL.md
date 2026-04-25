# ============================================================
# STREAMING PERSONA LICENSE REF MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Reference Persona license or usage permission state inside StreamingOS.

fields:
- streaming_user_id
- persona_id
- usage_permission_status
- granted_scope
- revoked_reason
- synced_at
