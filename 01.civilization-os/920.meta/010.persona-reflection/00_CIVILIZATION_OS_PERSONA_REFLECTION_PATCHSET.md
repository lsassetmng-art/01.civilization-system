# ============================================================
# CIVILIZATION OS PERSONA REFLECTION PATCHSET
# ============================================================

status: canonical-meta
system: civilization-os
layer: meta
domain: persona-reflection
owner: Boss
prepared_by: Zero

purpose:
Defines the concrete CivilizationOS-side patch rules that should be
reflected into the actual canonical layers of CivilizationOS
based on PersonaOS normalized boundaries.

# ============================================================
# 0. TARGET TREE
# ============================================================

target_root:
- /data/data/com.termux/files/home/01.civilization-system/01.civilization-os

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

CivilizationOS shall be treated as:
- a world/context owner
- an environment-side system
- a civilization-side policy and participation context owner
- a civilization-owned truth owner for civilization domains only

CivilizationOS shall not be treated as:
- Persona truth authority
- Persona mutation authority
- Persona governance authority
- Persona security authority
- Persona snapshot authority
- Persona identity/state/growth owner

global_fixed_statement:
CivilizationOS is a world/context and environment-side system
that may reference Persona-linked truth,
but it is not a truth-owning authority domain for Persona truth.

# ============================================================
# 2. CONSTITUTION PATCH RULE
# ============================================================

apply_to:
- 010.constitution

required_reflection:
CivilizationOS constitution must explicitly state that:
- civilization/world ownership does not imply Persona authority ownership
- civilization-side projections do not replace Persona canonical truth
- participation/context progression does not imply Persona state mutation
- civilization policy/approval does not replace Persona governance truth

constitution_patch_statement:
CivilizationOS may own world truth, environment truth,
civilization policy context, and participation context,
but it must not silently replace PersonaOS identity, state, growth,
snapshot, governance, security, or committed mutation truth.

# ============================================================
# 3. ARCHITECTURE PATCH RULE
# ============================================================

apply_to:
- 020.architecture

required_reflection:
Architecture must explicitly separate:
- civilization-owned truth
- Persona canonical reference
- civilization-side context state
- civilization-side integration exchange state
- civilization-side support/debug state
- civilization-side UI/runtime state

architecture_must_not_allow:
- civilization role labels -> Persona authority identity
- participation progression -> Persona lifecycle truth
- world history/experience -> committed Persona growth truth
- civilization export/copy -> canonical Persona snapshot authority
- civilization approval badge -> Persona governance authority
- civilization-local permission flag -> Persona security verdict

architecture_patch_statement:
CivilizationOS architecture must preserve strict separation between
civilization-owned truth and PersonaOS canonical truth references,
including context, integration, runtime, and support states.

# ============================================================
# 4. MODEL PATCH RULE
# ============================================================

apply_to:
- 030.model

recommended_model_groups:
persona_reference_models:
- persona_reference_record
- civilization_persona_projection
- persona_role_context_view

civilization_truth_models:
- world_context_state
- residency_context_state
- participation_context_state
- civilization_policy_context
- environment_event_record

integration_models:
- outbound_persona_request
- inbound_persona_response
- contract_exchange_trace

support_models:
- civilization_delivery_trace
- civilization_retry_record
- civilization_support_issue
- civilization_operator_note

must_not_promote_to_persona_authority:
- civilization role label
- civilization activity board flag
- civilization experience history summary
- civilization export copy
- civilization approval badge
- civilization retry/delivery state
- civilization diagnostics trace

model_patch_statement:
CivilizationOS models must distinguish civilization-owned truth
from Persona references, projections, and support artifacts,
and must not serialize civilization convenience state as Persona truth.

# ============================================================
# 5. RUNTIME PATCH RULE
# ============================================================

apply_to:
- 040.runtime

required_reflection:
Runtime must explicitly treat:
- civilization session state as civilization-side disposable state
- civilization UI/runtime state as non-Persona-authoritative
- local cache as non-authoritative with respect to Persona truth
- participation/availability views as civilization-side views only

runtime_patch_statement:
CivilizationOS runtime may consume Persona-derived truth inside
world/context workflows and civilization sessions,
but runtime state must not replace PersonaOS canonical state,
identity, growth, or snapshot truth.

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
- civilization workflow/context success -> Persona commit success

flow_patch_statement:
CivilizationOS flows must preserve explicit separation between
civilization request acceptance, protected-path clearance,
governance outcomes, Persona canonical commit confirmation,
response return, and support-side delivery/trace states.

# ============================================================
# 7. INTEGRATION PATCH RULE
# ============================================================

apply_to:
- 060.integration

required_reflection:
Integration must explicitly state:
- CivilizationOS consumes Persona-facing contracts
- accepted request is not Persona commit success
- response receipt is not Persona downstream completion
- contract exchange trace is not canonical Persona record
- civilization-side transport visibility is not Persona truth authority

integration_patch_statement:
CivilizationOS integration is a consumer-side contract boundary
for civilization-to-persona exchange and must not be treated as
Persona mutation authority, governance authority,
or security authority.

# ============================================================
# 8. OPERATIONS PATCH RULE
# ============================================================

apply_to:
- 070.operations

required_reflection:
Operations must treat:
- civilization diagnostics as support data
- civilization retry and delivery traces as support state
- operator visibility as non-authoritative observability
- civilization audit/support logs as non-Persona-authoritative evidence

operations_patch_statement:
CivilizationOS operations records may support observability,
recovery, and civilization diagnosis,
but they must not masquerade as Persona governance,
security, or canonical mutation truth.

# ============================================================
# 9. POLICY PATCH RULE
# ============================================================

apply_to:
- 080.policy

required_reflection:
Policy must explicitly prohibit:
- civilization display/projection state replacing Persona authority
- context/local assumptions replacing last confirmed Persona truth
- unresolved Persona-linked status being auto-upgraded to completion
- support/debug traces being consumed as Persona authority truth

policy_patch_statement:
When Persona-linked truth is stale, unresolved, missing,
or not yet confirmed by canonical sources,
CivilizationOS must preserve unresolved state instead of fabricating
authoritative Persona completion.

# ============================================================
# 10. INTERFACE PATCH RULE
# ============================================================

apply_to:
- 090.interface

interface_must_distinguish:
- civilization-owned truth vs Persona reference
- canonical reference vs derived display
- request accepted vs commit confirmed
- response returned vs delivery observed
- governance-approved vs civilization-visible
- security-cleared vs UI-valid

interface_patch_statement:
CivilizationOS interface design must keep civilization authority boundaries,
Persona authority boundaries, and stage boundaries visible to both
user-facing and system-facing interfaces.

# ============================================================
# 11. SECURITY PATCH RULE
# ============================================================

apply_to:
- 100.security

required_reflection:
CivilizationOS security design must explicitly separate:
- civilization-local security and permission
- app/session/login state
- PersonaOS protection-gate truth

must_not_allow:
- civilization validation -> Persona security verdict
- local auth convenience -> protected-path bypass
- civilization/session pass -> Persona canonical authorization

security_patch_statement:
CivilizationOS may participate in protected persona-facing flows,
but PersonaOS security gate truth remains outside CivilizationOS.

# ============================================================
# 12. IMPLEMENTATION PATCH RULE
# ============================================================

apply_to:
- 120.implementation

implementation_should_enforce:
- label every local value by authority class
- preserve unresolved state when Persona canonical status is unknown
- keep civilization caches/read models explicitly non-authoritative
  with respect to Persona truth
- keep context/session/debug layers separate from Persona truth

implementation_patch_statement:
CivilizationOS implementation must encode civilization-vs-persona
authority separation directly into models, status vocabularies,
flow handling, and local persistence rules.

# ============================================================
# 13. DEVELOPMENT PATCH RULE
# ============================================================

apply_to:
- 130.development

development_checklist_items:
- authority owner explicit
- civilization-owned vs Persona-owned model class explicit
- stage separation explicit
- unresolved state preserved
- support data non-authoritative
- UI wording does not overclaim Persona completion
- civilization state does not overwrite Persona truth

development_patch_statement:
CivilizationOS development review must reject implementations
that silently promote civilization context, UI, support,
or integration artifacts into Persona authority truth.

# ============================================================
# 14. MOST IMPORTANT PROHIBITIONS
# ============================================================

Do not allow:
- civilization role label -> Persona identity authority
- participation/context state -> Persona state authority
- world history/experience signal -> committed Persona growth truth
- civilization cache/export -> Persona snapshot authority
- civilization validation -> Persona security truth
- civilization approval flow -> Persona governance truth
- civilization logs -> canonical Persona mutation truth
- response receipt -> Persona downstream completion

# ============================================================
# 15. ABSORPTION ORDER
# ============================================================

recommended_absorption_order:
1. 020.architecture
2. 030.model
3. 060.integration
4. 080.policy
5. 090.interface
6. 100.security
7. 040.runtime
8. 070.operations
9. 120.implementation
10. 130.development
11. 010.constitution
12. 050.flow

reason:
Architecture/model/integration/policy carry the most load-bearing
boundary clarifications for CivilizationOS reflection.

# ============================================================
# 16. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
This patchset defines how CivilizationOS actual canonical design
must absorb PersonaOS normalized authority and stage-separation rules.
CivilizationOS may own world truth, context truth,
civilization policy context, and civilization support artifacts,
but it must not silently replace PersonaOS canonical identity,
state, growth, snapshot, governance, security,
or committed mutation truth.
