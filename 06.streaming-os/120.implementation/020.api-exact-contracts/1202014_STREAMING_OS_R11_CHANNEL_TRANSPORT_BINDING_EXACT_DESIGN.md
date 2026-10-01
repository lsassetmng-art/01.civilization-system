# ============================================================
# STREAMING OS R11 CHANNEL TRANSPORT BINDING EXACT DESIGN
# ============================================================

status: canonical-draft
system: streaming-os
domain: r11-channel-transport-binding
phase: R11
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document closes the HTTP transport binding
for R11 Creator Channel Management.

It does not redefine semantic API payloads.

Canonical semantic sources:
- 1202008_STREAMING_OS_CORPORATE_CHANNEL_AND_AFFILIATION_API_EXACT_CONTRACT.md
- 1202009_STREAMING_OS_API_COMMON_ERROR_EXACT_RULE.md
- 1202012_STREAMING_OS_API_IDEMPOTENCY_EXACT_RULE.md
- 1202013_STREAMING_OS_API_ACTOR_AUTHORIZATION_ERROR_EXACT_RULE.md
- 1202702_STREAMING_OS_SUCCESS_RESPONSE_ENVELOPE_FREEZE.md
- K5 AUTH / RLS exactness

# ============================================================
# 2. R11 SCOPE
# ============================================================

scope_in:
- creator_channel_management
- get_channel_detail
- upsert_channel_record
- channel identity
- channel profile
- channel visibility
- channel artwork
- official channel interpretation

scope_out:
- creator upload
- archive upload
- creator studio
- program management
- session operation
- corporate oversight mutation
- affiliated streamer mutation
- viewer/public channel transport
- database schema mutation

R14 remains Archive / Upload.

# ============================================================
# 3. BASE TRANSPORT
# ============================================================

base_path:
- /api/stream-studio

content_type:
- application/json

request_id:
- x-request-id
- optional from caller
- generated server-side when absent

# ============================================================
# 4. ACTOR / AUTH CARRIER
# ============================================================

R11 Creator Channel Management is an authenticated
control-plane surface.

authorization_header:
- Authorization: Bearer <access_token>
- required for R11 channel detail and channel upsert

actor_semantic_field:
- actor_civilization_id

binding_rules:
- authenticated token resolves the canonical Civilization actor
- actor_civilization_id must equal the resolved actor
- client-provided role claims are not authoritative
- authorization authority is resolved server-side

failure_rules:
- missing or invalid authenticated actor
  -> unauthorized_actor
- token actor and actor_civilization_id mismatch
  -> unauthorized_actor
- valid actor without target authority
  -> forbidden_action

apikey and x-client-info are infrastructure headers
and do not establish channel mutation authority.

# ============================================================
# 5. GET CHANNEL DETAIL
# ============================================================

canonical_endpoint:
- get_channel_detail

http_method:
- GET

http_path:
- /api/stream-studio/channels/{channel_record_id}

query:
- actor_civilization_id
  required for R11 creator control-plane use

body:
- none

authorization:
- channel_owner
- creator_self where same owner
- company_official_manager where company-owned and authority applies
- platform_operator through explicit support path only

R11 does not use this route
as an anonymous viewer/public endpoint.

success_status:
- 200

success_envelope:
{
  success: true,
  data: {
    channel_record_id,
    channel_owner_civilization_id,
    channel_display_name,
    channel_status,
    official_channel_flag,
    profile_description?,
    artwork_reference?,
    visibility_setting,
    updated_at
  },
  meta?: {
    request_id?
  }
}

# ============================================================
# 6. UPSERT CHANNEL
# ============================================================

canonical_endpoint:
- upsert_channel_record

http_method:
- POST

http_path:
- /api/stream-studio/channels/upsert

body:
{
  actor_civilization_id,
  channel_record_id?,
  channel_display_name,
  channel_status,
  official_channel_flag,
  profile_description?,
  artwork_reference?,
  visibility_setting,
  idempotency_key?
}

channel_record_id_rule:
- absent or null means create
- present means update the identified channel
- actor authority must be checked before mutation

allowed_channel_status:
- active
- restricted
- suspended
- archived

allowed_visibility_setting:
- public
- limited
- restricted

authorization:
- channel_owner
- company_official_manager where company-owned and authority applies
- platform_operator through explicit support path only

forbidden:
- affiliation-only mutation
- public viewer mutation
- trusting client-provided role claims without server-side resolution

success_status:
- 200

success_envelope:
{
  success: true,
  data: {
    channel_record_id,
    channel_profile_state_id,
    channel_status,
    updated_at
  },
  meta?: {
    request_id?,
    idempotency_replayed?
  }
}

# ============================================================
# 7. IDEMPOTENCY
# ============================================================

idempotency_key:
- optional
- strongly recommended for channel upsert

same:
- actor
- endpoint
- idempotency_key
- semantic body

must return the same semantic success result.

Conflicting body with the same key:
- state_conflict

# ============================================================
# 8. HTTP ERROR STATUS BINDING
# ============================================================

400:
- invalid_request
- invalid_field
- missing_required_field
- unsupported_value

401:
- unauthorized_actor

403:
- forbidden_action

404:
- target_not_found

409:
- state_conflict
- governance_blocked
- review_required

429:
- rate_limited

503:
- retry_later

500:
- internal_error

All error bodies use
the canonical StreamingOS common error envelope.

# ============================================================
# 9. IMPLEMENTATION LAYERING
# ============================================================

required_flow:
- HTTP route
- validator
- service
- repository
- approved persistence boundary

future_code_responsibility:
- streaming/channel/routes
- streaming/channel/validators
- streaming/channel/services
- streaming/channel/repositories

rules:
- UI must not access Supabase channel tables directly
- HTTP route must not contain persistence logic
- validator must not make authorization decisions
- service owns semantic authorization orchestration
- repository owns approved persistence interaction
- affiliation remains separate
- corporate oversight remains separate

# ============================================================
# 10. RPC BINDING
# ============================================================

r11_rpc_binding:
- none required by this HTTP contract

Approved persistence may later use:
- direct repository table access
- approved database function
- approved projection

Persistence choice must not change
the R11 HTTP contract.

# ============================================================
# 11. DATABASE BOUNDARY
# ============================================================

This design does not authorize:
- CREATE TABLE
- ALTER TABLE
- RPC creation
- RLS mutation
- seed mutation
- production data mutation

DB implementation requires a separate GO gate.

# ============================================================
# 12. UI BINDING
# ============================================================

creator_my_page_home:
- existing route:
  /creator/channel

creator_channel_management:
- target UI route:
  /creator/channel

read:
- get_channel_detail

save:
- upsert_channel_record

R11 must not expose R14 upload behavior.

# ============================================================
# 13. CANONICAL FIXED STATEMENT
# ============================================================

R11 Creator Channel Management shall use
authenticated StreamingOS control-plane transport.

Channel detail:

GET /api/stream-studio/channels/{channel_record_id}

Channel create/update:

POST /api/stream-studio/channels/upsert

Authorization proof shall use
the Authorization Bearer carrier.

actor_civilization_id remains
the explicit semantic actor.

Channel authority shall be resolved server-side.

R11 remains separate from:
- R14 Archive / Upload
- corporate oversight mutation
- affiliation mutation
