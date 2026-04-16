# ============================================================
# BUSINESS OS PERSONA REFLECTION PATCHSET
# ============================================================

status: canonical-meta
system: business-os
layer: meta
domain: persona-reflection
owner: Boss
prepared_by: Zero

purpose:
Defines the concrete BusinessOS-side patch rules that should be
reflected into the actual canonical layers of BusinessOS
based on PersonaOS normalized boundaries.

# ============================================================
# 0. TARGET TREE
# ============================================================

target_root:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os

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

BusinessOS shall be treated as:
- a business-scoped workflow owner
- a business-side integration consumer
- a business-side app/runtime owner
- a business-owned truth owner for business domains only

BusinessOS shall not be treated as:
- Persona truth authority
- Persona mutation authority
- Persona governance authority
- Persona security authority
- Persona snapshot authority
- Persona identity/state/growth owner

global_fixed_statement:
BusinessOS is a business-scoped workflow and integration system
that may reference Persona-linked truth,
but it is not a truth-owning authority domain for Persona truth.

# ============================================================
# 2. CONSTITUTION PATCH RULE
# ============================================================

apply_to:
- 010.constitution

required_reflection:
BusinessOS constitution must explicitly state that:
- business workflow ownership does not imply Persona authority ownership
- business-side projections do not replace Persona canonical truth
- business process progression does not imply Persona state mutation
- business review/approval does not replace Persona governance truth

constitution_patch_statement:
BusinessOS may own business truth and business workflow execution,
but it must not silently replace PersonaOS identity, state, growth,
snapshot, governance, security, or committed mutation truth.

# ============================================================
# 3. ARCHITECTURE PATCH RULE
# ============================================================

apply_to:
- 020.architecture

required_reflection:
Architecture must explicitly separate:
- business-owned truth
- Persona canonical reference
- business-side workflow state
- business-side integration exchange state
- business-side support/debug state
- business-side UI/runtime state

architecture_must_not_allow:
- business labels -> Persona authority identity
- workflow progression -> Persona lifecycle truth
- business appraisal/performance note -> committed Persona growth truth
- business export/copy -> canonical Persona snapshot authority
- business approval badge -> Persona governance authority
- business-local permission flag -> Persona security verdict

architecture_patch_statement:
BusinessOS architecture must preserve strict separation between
business-owned truth and PersonaOS canonical truth references,
including workflow, integration, runtime, and support states.

# ============================================================
# 4. MODEL PATCH RULE
# ============================================================

apply_to:
- 030.model

recommended_model_groups:
persona_reference_models:
- persona_reference_record
- business_persona_projection
- persona_assignment_view

business_truth_models:
- business_workflow_state
- business_assignment_state
- business_application_record
- business_process_result

integration_models:
- outbound_persona_request
- inbound_persona_response
- contract_exchange_trace

support_models:
- business_delivery_trace
- business_retry_record
- business_support_issue
- business_operator_note

must_not_promote_to_persona_authority:
- business display identity label
- business availability board flag
- business appraisal note
- business export copy
- business approval badge
- business retry/delivery state
- business diagnostics trace

model_patch_statement:
BusinessOS models must distinguish business-owned truth
from Persona references, projections, and support artifacts,
and must not serialize business convenience state as Persona truth.

# ============================================================
# 5. RUNTIME PATCH RULE
# ============================================================

apply_to:
- 040.runtime

required_reflection:
Runtime must explicitly treat:
- business session state as business-side disposable state
- business UI/runtime state as non-Persona-authoritative
- local cache as non-authoritative with respect to Persona truth
- business availability views as business-side views only

runtime_patch_statement:
BusinessOS runtime may consume Persona-derived truth inside
business workflows and app sessions,
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
- business workflow success -> Persona commit success

flow_patch_statement:
BusinessOS flows must preserve explicit separation between
business request acceptance, protected-path clearance,
governance outcomes, Persona canonical commit confirmation,
response return, and support-side delivery/trace states.

# ============================================================
# 7. INTEGRATION PATCH RULE
# ============================================================

apply_to:
- 060.integration

required_reflection:
Integration must explicitly state:
- BusinessOS consumes Persona-facing contracts
- accepted request is not Persona commit success
- response receipt is not Persona downstream completion
- contract exchange trace is not canonical Persona record
- business-side transport visibility is not Persona truth authority

integration_patch_statement:
BusinessOS integration is a consumer-side contract boundary
for business-to-persona exchange and must not be treated as
Persona mutation authority, governance authority,
or security authority.

# ============================================================
# 8. OPERATIONS PATCH RULE
# ============================================================

apply_to:
- 070.operations

required_reflection:
Operations must treat:
- business diagnostics as support data
- business retry and delivery traces as support state
- operator visibility as non-authoritative observability
- business audit/support logs as non-Persona-authoritative evidence

operations_patch_statement:
BusinessOS operations records may support observability,
recovery, and business diagnosis,
but they must not masquerade as Persona governance,
security, or canonical mutation truth.

# ============================================================
# 9. POLICY PATCH RULE
# ============================================================

apply_to:
- 080.policy

required_reflection:
Policy must explicitly prohibit:
- business display/projection state replacing Persona authority
- workflow/local assumptions replacing last confirmed Persona truth
- unresolved Persona-linked status being auto-upgraded to completion
- support/debug traces being consumed as Persona authority truth

policy_patch_statement:
When Persona-linked truth is stale, unresolved, missing,
or not yet confirmed by canonical sources,
BusinessOS must preserve unresolved state instead of fabricating
authoritative Persona completion.

# ============================================================
# 10. INTERFACE PATCH RULE
# ============================================================

apply_to:
- 090.interface

interface_must_distinguish:
- business-owned truth vs Persona reference
- canonical reference vs derived display
- request accepted vs commit confirmed
- response returned vs delivery observed
- governance-approved vs business-visible
- security-cleared vs UI-valid

interface_patch_statement:
BusinessOS interface design must keep business authority boundaries,
Persona authority boundaries, and stage boundaries visible to both
user-facing and system-facing interfaces.

# ============================================================
# 11. SECURITY PATCH RULE
# ============================================================

apply_to:
- 100.security

required_reflection:
BusinessOS security design must explicitly separate:
- business-local security and permission
- app/session/login state
- PersonaOS protection-gate truth

must_not_allow:
- business validation -> Persona security verdict
- local auth convenience -> protected-path bypass
- business/session pass -> Persona canonical authorization

security_patch_statement:
BusinessOS may participate in protected persona-facing flows,
but PersonaOS security gate truth remains outside BusinessOS.

# ============================================================
# 12. IMPLEMENTATION PATCH RULE
# ============================================================

apply_to:
- 120.implementation

implementation_should_enforce:
- label every local value by authority class
- preserve unresolved state when Persona canonical status is unknown
- keep business caches/read models explicitly non-authoritative
  with respect to Persona truth
- keep workflow/session/debug layers separate from Persona truth

implementation_patch_statement:
BusinessOS implementation must encode business-vs-persona
authority separation directly into models, status vocabularies,
flow handling, and local persistence rules.

# ============================================================
# 13. DEVELOPMENT PATCH RULE
# ============================================================

apply_to:
- 130.development

development_checklist_items:
- authority owner explicit
- business-owned vs Persona-owned model class explicit
- stage separation explicit
- unresolved state preserved
- support data non-authoritative
- UI wording does not overclaim Persona completion
- business state does not overwrite Persona truth

development_patch_statement:
BusinessOS development review must reject implementations
that silently promote business workflow, UI, support,
or integration artifacts into Persona authority truth.

# ============================================================
# 14. MOST IMPORTANT PROHIBITIONS
# ============================================================

Do not allow:
- business label -> Persona identity authority
- workflow state -> Persona state authority
- business appraisal/performance signal -> committed Persona growth truth
- business cache/export -> Persona snapshot authority
- business validation -> Persona security truth
- business approval flow -> Persona governance truth
- business logs -> canonical Persona mutation truth
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
boundary clarifications for BusinessOS reflection.

# ============================================================
# 16. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
This patchset defines how BusinessOS actual canonical design
must absorb PersonaOS normalized authority and stage-separation rules.
BusinessOS may own business workflows, business truth,
business projections, and business support artifacts,
but it must not silently replace PersonaOS canonical identity,
state, growth, snapshot, governance, security,
or committed mutation truth.
