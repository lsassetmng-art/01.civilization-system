# ============================================================
# STREAMING OS AUTH TO CIVILIZATION IDENTITY BRIDGE FREEZE
# ============================================================

status: canonical-freeze-draft
system: streaming-os
domain: final-rls-and-auth-freeze
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document freezes the StreamingOS authentication
identity bridge between:

- Supabase authenticated user identity
- Civilization canonical subject identity
- StreamingOS actor authorization
- StreamingOS row-level access evaluation

This bridge exists because:

- auth.uid() identifies the authenticated Supabase user
- Civilization ID identifies the canonical Civilization subject
- those identifiers must not be assumed to be identical
- actor identity must be resolved before row policy evaluation

# ============================================================
# 2. CANONICAL IDENTITY BOUNDARY
# ============================================================

canonical_rules:

- auth.uid() is authentication identity
- civilization_id is canonical Civilization subject identity
- principal_civilization_id is the Civilization identity
  attached to a StreamingOS principal
- channel_owner_civilization_id is the Civilization identity
  owning a channel

The following equality MUST NOT be assumed:

auth.uid() = civilization_id

The following client-provided values MUST NOT establish identity:

- actor_civilization_id
- role
- actor_class
- ownership claims
- company authority claims

Client values may be compared against server-resolved identity,
but may not become the identity source.

# ============================================================
# 3. IDENTITY BRIDGE TABLE
# ============================================================

canonical_table:
- streaming.auth_civilization_identity_bindings

required_columns:

- auth_user_id
  type: uuid
  meaning:
  Supabase authenticated user identifier

- civilization_id
  type: uuid
  meaning:
  canonical Civilization subject identifier

- binding_status
  type: text
  allowed:
  - active
  - revoked

- created_at
  type: timestamptz

- updated_at
  type: timestamptz

required_constraints:

- primary key(auth_user_id)
- civilization_id must not be null
- binding_status must not be null
- binding_status allowlist:
  active / revoked

civilization_id uniqueness:
- not frozen by this bridge
- account multiplicity belongs to the canonical identity domain
- StreamingOS only requires one unambiguous active result
  for the current auth_user_id

# ============================================================
# 4. AUTH USER REFERENCE
# ============================================================

auth_user_id logically references:

- auth.users.id

preferred executable binding:
- foreign key auth_user_id -> auth.users(id)

delete behavior:
- cascade is preferred for authentication-account deletion

This reference does not make auth.users
the owner of Civilization identity semantics.

# ============================================================
# 5. CURRENT CIVILIZATION RESOLVER
# ============================================================

canonical_function:
- streaming.current_civilization_id()

input:
- none

authentication_source:
- auth.uid()

return:
- uuid
- nullable

resolution:

1. read auth.uid()
2. if auth.uid() is null:
   return null
3. resolve active row from
   streaming.auth_civilization_identity_bindings
4. return civilization_id
5. if no active binding exists:
   return null

fail_closed_rule:

- no auth user
  -> null

- no active identity binding
  -> null

- revoked binding
  -> null

- ambiguous resolution
  -> must not grant access

RLS predicates shall treat null resolution as denied.

# ============================================================
# 6. FUNCTION SECURITY
# ============================================================

streaming.current_civilization_id():

- may require SECURITY DEFINER
  so RLS callers do not need direct read access
  to the identity binding table

- must use a fixed safe search_path

- must not accept civilization_id as a parameter

- must not trust JWT user metadata
  as the canonical Civilization ID source

- must not derive Civilization ID
  from arbitrary client headers

The exact executable SQL
shall be reviewed before DB mutation.

# ============================================================
# 7. BRIDGE TABLE ACCESS
# ============================================================

direct_authenticated_client_access:
- denied

authenticated users must not directly:

- insert identity bindings
- update identity bindings
- revoke identity bindings
- replace civilization_id

binding mutation authority:
- trusted identity provisioning path only
- platform-controlled administrative path only

R11 Channel Management
must never auto-create an identity binding
from actor_civilization_id supplied by the client.

# ============================================================
# 8. JWT AND AUTH ROLE RULE
# ============================================================

auth.jwt():
- may carry authentication/runtime information
- is not the canonical source of civilization_id
  unless a separate future canonical identity contract
  explicitly freezes that behavior

auth.role():
- may distinguish authenticated/runtime database role
- does not establish Civilization subject identity
- does not establish channel ownership
- does not establish company authority

# ============================================================
# 9. STREAMING PRINCIPAL RELATION
# ============================================================

streaming.auth_civilization_identity_bindings
and streaming.streaming_principals
serve different responsibilities.

identity binding:
- authentication user -> Civilization subject

streaming principal:
- Civilization subject -> StreamingOS principal representation

The identity bridge must not duplicate
StreamingOS principal profile or ownership state.

principal lookup uses:

resolved civilization_id
  ->
streaming.streaming_principals.principal_civilization_id

where the executable principal schema supports that field.

# ============================================================
# 10. PRINCIPAL BOOTSTRAP RULE
# ============================================================

Authentication binding creation
does not automatically authorize creation
of a StreamingOS principal.

Principal initialization must be:

- explicit
- server-controlled
- auditable
- separate from RLS predicate evaluation

RLS functions must not create missing principal rows.

R11 must not create a StreamingOS principal
inside a row-policy evaluation path.

# ============================================================
# 11. ACTOR REQUEST BINDING
# ============================================================

For APIs carrying:

- actor_civilization_id

the server must:

1. authenticate the bearer token
2. resolve auth.uid()
3. resolve streaming.current_civilization_id()
4. compare resolved identity
   with actor_civilization_id
5. reject mismatch before business mutation

actor_civilization_id remains
an explicit semantic request field,
but is not authentication proof.

# ============================================================
# 12. RLS USAGE
# ============================================================

owner-bound row policies shall use:

streaming.current_civilization_id()

rather than:

- request body actor_civilization_id
- arbitrary JWT metadata
- arbitrary request headers
- client role claims

example ownership meaning:

channel_records.channel_owner_civilization_id
=
streaming.current_civilization_id()

This is an authorization predicate,
not the complete executable policy SQL.

# ============================================================
# 13. CHANNEL AUTHORITY BOUNDARY
# ============================================================

For channel_records / channel_profile_states:

owner identity:
- resolved Civilization identity

channel owner:
- channel_owner_civilization_id
  equals resolved Civilization identity

company_official_manager:
- requires a separate trusted company-authority resolution
- must not be inferred from the identity bridge alone

company_overseer:
- requires separate oversight authority
- must not be inferred from identity binding alone

platform_operator:
- explicit support path only

Identity resolution
and authority resolution
remain separate responsibilities.

# ============================================================
# 14. CORPORATE AUTHORITY NON-GOAL
# ============================================================

This bridge does NOT define:

- company membership tables
- company manager assignments
- company overseer assignments
- affiliated streamer authority
- platform operator grants

Those remain separate authorization domains.

The bridge only establishes:

authenticated user
  ->
canonical Civilization identity

# ============================================================
# 15. RUNTIME / SERVICE IDENTITY
# ============================================================

runtime_worker and integration_service:

- are not end-user identities
- must not impersonate a human Civilization identity
  through this bridge

Service-role execution requires
a separate explicit trusted runtime path.

A service role must not gain channel ownership
merely because RLS is bypassed.

Business authorization remains required
at service boundaries.

# ============================================================
# 16. FAILURE SEMANTICS
# ============================================================

missing auth identity:
- unauthorized_actor

missing active identity binding:
- unauthorized_actor

actor_civilization_id mismatch:
- unauthorized_actor

valid identity without target authority:
- forbidden_action

governance/state failures:
- remain separate from identity failure

# ============================================================
# 17. DATABASE IMPLEMENTATION ORDER
# ============================================================

required order:

1. streaming schema foundation
2. auth_civilization_identity_bindings
3. current_civilization_id()
4. streaming_principals
5. channel_records
6. channel_profile_states
7. executable RLS policies
8. R11 repository/service/route
9. R11 Creator Channel Management UI

Existing canonical migration dependency rules
remain authoritative where stricter.

# ============================================================
# 18. DB MUTATION BOUNDARY
# ============================================================

This design does not itself authorize:

- CREATE TABLE
- CREATE FUNCTION
- ALTER TABLE
- ENABLE ROW LEVEL SECURITY
- CREATE POLICY
- INSERT identity binding
- UPDATE identity binding
- production data mutation

All executable DB mutation
requires a separate GO gate.

# ============================================================
# 19. R11 BINDING
# ============================================================

R11 Channel Management shall use:

Authorization Bearer token
  ->
Supabase authenticated user
  ->
auth.uid()
  ->
streaming.current_civilization_id()
  ->
canonical Civilization identity
  ->
channel ownership / authority evaluation

R11 must fail closed
when the identity bridge cannot resolve
an active Civilization identity.

# ============================================================
# 20. CANONICAL FIXED STATEMENT
# ============================================================

StreamingOS shall not equate
Supabase auth.uid()
with Civilization ID.

Authenticated end-user identity
shall be resolved through
a server-controlled StreamingOS identity bridge.

The canonical resolver shall expose
the current Civilization identity
to authorization and RLS evaluation.

Client-provided actor identity,
JWT metadata,
and client role claims
shall not replace server-side resolution.

Identity resolution
shall remain separate from:

- Streaming principal state
- channel ownership
- company management authority
- corporate oversight authority
- runtime/service authority

All unresolved identity states
shall fail closed.
