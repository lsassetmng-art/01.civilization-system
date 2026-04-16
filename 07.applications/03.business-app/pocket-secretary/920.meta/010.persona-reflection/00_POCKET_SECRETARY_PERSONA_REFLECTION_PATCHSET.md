# ============================================================
# POCKET SECRETARY PERSONA REFLECTION PATCHSET
# ============================================================

status: canonical-meta
system: pocket-secretary
layer: meta
domain: persona-reflection
owner: Boss
prepared_by: Zero

purpose:
Defines the concrete PocketSecretary-side patch rules that should be
reflected into the actual canonical layers of PocketSecretary
based on PersonaOS normalized boundaries.

# ============================================================
# 0. TARGET TREE
# ============================================================

target_root:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary

canonical_layers_expected:
- 010.constitution
- 020.architecture
- 030.model
- 040.runtime
- 050.flow
- 060.integration
- 070.operations
- 080.policy
- 090.interface
- 100.security
- 110.infrastructure
- 120.implementation
- 130.development

patch_mode:
This document is a reflection patchset for later absorption
into the canonical layer documents.
It is not itself a replacement for those layers.

# ============================================================
# 1. GLOBAL ROLE FIX
# ============================================================

PocketSecretary shall be treated as:
- a runtime-facing host consumer
- a Persona presentation client
- a local/session/UI execution surface
- a bounded integration consumer

PocketSecretary shall not be treated as:
- Persona truth authority
- Persona mutation authority
- Persona governance authority
- Persona security authority
- Persona snapshot authority

global_fixed_statement:
PocketSecretary is a runtime-facing consumer and presenter
of PersonaOS-derived truth, not a truth-owning authority domain.

# ============================================================
# 2. CONSTITUTION PATCH RULE
# ============================================================

apply_to:
- 010.constitution

required_reflection:
PocketSecretary constitution must explicitly state that:
- host-side presentation does not replace Persona truth
- local-first behavior does not imply Persona authority ownership
- human-controlled execution surface does not imply canonical mutation ownership
- local session or device state does not replace Persona canonical state

constitution_patch_statement:
PocketSecretary may present and operationally support Persona-linked
data on-device, but it must not silently replace PersonaOS identity,
state, growth, snapshot, governance, security, or committed mutation truth.

# ============================================================
# 3. ARCHITECTURE PATCH RULE
# ============================================================

apply_to:
- 020.architecture

required_reflection:
Architecture must explicitly separate:
- Persona canonical reference
- host runtime/session state
- UI presentation state
- integration exchange state
- local support/debug state
- visual execution state

architecture_must_not_allow:
- display labels -> authority identity
- host UI state -> Persona lifecycle truth
- local adaptation -> committed growth truth
- local cache/export -> canonical snapshot authority
- local approval badges -> governance authority
- local security markers -> Persona security verdict

architecture_patch_statement:
PocketSecretary architecture must preserve strict separation between
PersonaOS canonical truth references and PocketSecretary-owned
runtime, UI, integration, and support states.

# ============================================================
# 4. MODEL PATCH RULE
# ============================================================

apply_to:
- 030.model

recommended_model_groups:
persona_reference_models:
- persona_reference_view
- persona_display_profile
- persona_public_identity_view

runtime_session_models:
- host_runtime_session
- interaction_session_state
- render_session_state
- current_screen_state

integration_models:
- outbound_persona_request
- inbound_persona_response
- contract_exchange_trace

support_models:
- local_diagnostics_record
- local_delivery_observation
- local_retry_note
- operator_visible_issue

must_not_promote_to_authority:
- local display name cache
- local availability widget flag
- local growth progress widget state
- local snapshot cache
- local governance badge state
- local security marker
- local delivery trace

model_patch_statement:
PocketSecretary models must distinguish canonical Persona references
from local runtime/session/support artifacts and must not serialize
local convenience state as Persona truth.

# ============================================================
# 5. RUNTIME PATCH RULE
# ============================================================

apply_to:
- 040.runtime

required_reflection:
Runtime must explicitly treat:
- session state as disposable
- render execution state as non-authoritative
- local cache as non-authoritative
- runtime availability as host-side status only

runtime_patch_statement:
PocketSecretary runtime may consume Persona-derived truth and
execute host-side sessions, but runtime state must remain disposable
and must not replace PersonaOS canonical state or visual truth.

# ============================================================
# 6. FLOW PATCH RULE
# ============================================================

apply_to:
- 050.flow

required_stage_separation:
- request accepted
- security verified
- governance approved
- canonical mutation committed
- response returned
- delivery observed
- support logged

must_not_collapse:
- accepted -> committed
- returned -> delivered
- delivered -> authoritative truth

flow_patch_statement:
PocketSecretary flows must preserve explicit separation between
request acceptance, protected-path clearance, governance outcomes,
canonical commit confirmation, response return, and support-side
delivery/trace states.

# ============================================================
# 7. INTEGRATION PATCH RULE
# ============================================================

apply_to:
- 060.integration

required_reflection:
Integration must explicitly state:
- PocketSecretary consumes Persona contracts
- accepted request is not commit success
- response receipt is not downstream completion
- contract exchange trace is not canonical Persona record

integration_patch_statement:
PocketSecretary integration is a consumer-side contract boundary
and must not be treated as Persona mutation authority,
governance authority, or security authority.

# ============================================================
# 8. OPERATIONS PATCH RULE
# ============================================================

apply_to:
- 070.operations

required_reflection:
Operations must treat:
- local diagnostics as support data
- local retry and delivery traces as support state
- operator visibility as non-authoritative observability

operations_patch_statement:
PocketSecretary operations records may support observability,
recovery, and local diagnosis, but they must not masquerade
as Persona governance, security, or canonical mutation truth.

# ============================================================
# 9. POLICY PATCH RULE
# ============================================================

apply_to:
- 080.policy

required_reflection:
Policy must explicitly prohibit:
- local display state replacing Persona authority
- host/offline assumptions replacing last confirmed Persona truth
- unresolved status being auto-upgraded to completion
- support/debug traces being consumed as authority truth

policy_patch_statement:
When Persona-linked truth is stale, unresolved, missing,
or not yet confirmed by canonical sources,
PocketSecretary must preserve unresolved state instead of
fabricating authoritative completion.

# ============================================================
# 10. INTERFACE PATCH RULE
# ============================================================

apply_to:
- 090.interface

interface_must_distinguish:
- canonical reference vs derived display
- request accepted vs commit confirmed
- response returned vs delivery observed
- governance-approved vs support-visible
- security-cleared vs UI-valid

interface_patch_statement:
PocketSecretary interface design must keep stage boundaries and
authority boundaries visible to both user-facing and system-facing
interfaces.

# ============================================================
# 11. SECURITY PATCH RULE
# ============================================================

apply_to:
- 100.security

required_reflection:
PocketSecretary security design must explicitly separate:
- app-local/device security
- session/login state
- PersonaOS protection-gate truth

must_not_allow:
- UI validation -> Persona security verdict
- local auth convenience -> protected-path bypass
- device/session pass -> Persona canonical authorization

security_patch_statement:
PocketSecretary may participate in protected flows,
but PersonaOS security gate truth remains outside PocketSecretary.

# ============================================================
# 12. IMPLEMENTATION PATCH RULE
# ============================================================

apply_to:
- 120.implementation

implementation_should_enforce:
- label every local value by authority class
- preserve unresolved state when canonical status is unknown
- keep local caches/read models explicitly non-authoritative
- keep render/session/debug layers separate from canonical truth

implementation_patch_statement:
PocketSecretary implementation must encode authority separation
directly into models, status vocabularies, flow handling,
and local persistence rules.

# ============================================================
# 13. DEVELOPMENT PATCH RULE
# ============================================================

apply_to:
- 130.development

development_checklist_items:
- authority owner explicit
- local model class explicit
- stage separation explicit
- unresolved state preserved
- support data non-authoritative
- UI wording does not overclaim completion
- local state does not overwrite Persona truth

development_patch_statement:
PocketSecretary development review must reject implementations
that silently promote local runtime, UI, support, or integration
artifacts into Persona authority truth.

# ============================================================
# 14. MOST IMPORTANT PROHIBITIONS
# ============================================================

Do not allow:
- display label -> Persona identity authority
- UI state -> Persona state authority
- local adaptation -> committed growth truth
- cache/export -> Persona snapshot authority
- UI validation -> Persona security truth
- host approval flow -> Persona governance truth
- local logs -> canonical mutation truth
- response receipt -> downstream completion

# ============================================================
# 15. ABSORPTION ORDER
# ============================================================

recommended_absorption_order:
1. 020.architecture
2. 040.runtime
3. 060.integration
4. 080.policy
5. 090.interface
6. 100.security
7. 030.model
8. 070.operations
9. 120.implementation
10. 130.development
11. 010.constitution
12. 050.flow

reason:
Architecture/runtime/integration/policy carry the most load-bearing
boundary clarifications for PocketSecretary reflection.

# ============================================================
# 16. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
This patchset defines how PocketSecretary actual canonical design
must absorb PersonaOS normalized authority and stage-separation rules.
PocketSecretary may host, present, cache, render, transport,
and operationally support Persona-linked data,
but it must not silently replace PersonaOS canonical identity,
state, growth, snapshot, governance, security,
or committed mutation truth.
