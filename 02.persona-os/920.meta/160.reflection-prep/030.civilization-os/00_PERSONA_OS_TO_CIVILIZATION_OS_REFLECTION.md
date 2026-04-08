# ============================================================
# PERSONA OS TO CIVILIZATION OS REFLECTION
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: reflection-prep
subdomain: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines how PersonaOS normalized wording boundaries,
implementation-facing responsibility separation,
and cross-domain stage separation must be reflected into
CivilizationOS.

# ============================================================
# 0. ROLE OF CIVILIZATIONOS
# ============================================================

CivilizationOS is a world/environment-side system that:
- defines living/world context around Personas
- defines nation/city/company/social/institutional environments
- defines interaction contexts and usage situations
- may reference Personas as participants, residents, workers,
  citizens, creators, or actors inside the civilization
- may hold world-side state, policy context, and environment context
- may originate or relay Persona-related requests through defined paths

CivilizationOS is not:
- the authority owner of Persona identity
- the authority owner of Persona current state
- the authority owner of Persona growth truth
- the authority owner of Persona snapshot truth
- the authority owner of Persona governance decisions
- the authority owner of Persona security verdicts

fixed_role_statement:
CivilizationOS is a world/context owner and environment-side
consumer of Persona-linked truth, not a truth-owning authority
domain for Persona truth.

# ============================================================
# 1. REFLECTION OF NORMALIZED PERSONAOS BOUNDARIES
# ============================================================

# ------------------------------------------------------------
# 1.1 identity reflection
# ------------------------------------------------------------

CivilizationOS may:
- reference Personas in world roles and contexts
- store civilization-side labels and contextual projections
- store nation/company/city/social role projections
- expose Persona-linked identity views inside world interaction surfaces

CivilizationOS must not:
- redefine authority identity
- silently replace canonical self-definition
- treat civilization-side role labels as Persona identity truth

fixed_rule:
Civilization-side role/context identity usage is projection/context,
not authority identity ownership.

# ------------------------------------------------------------
# 1.2 state reflection
# ------------------------------------------------------------

CivilizationOS may:
- read Persona state where needed for world interaction
- keep world-side activity context
- keep employment/residency/participation context
- keep environmental availability or participation views

CivilizationOS must not:
- become the owner of canonical Persona current state
- treat world-side activity or participation state as Persona lifecycle truth
- overwrite Persona state through world-side contextual progression

fixed_rule:
World/context state and Persona-side canonical state must remain separate.

# ------------------------------------------------------------
# 1.3 growth reflection
# ------------------------------------------------------------

CivilizationOS may:
- originate world-side events or conditions that later inform Persona evaluation
- store experience-side or environment-side observations
- keep civilization-side performance/participation histories

CivilizationOS must not:
- treat environment/world experience as committed Persona growth truth
- convert civilization-side observations into canonical growth mutation
- store contextual progression as Persona growth authority

fixed_rule:
CivilizationOS may generate relevant world-side signals,
but committed growth truth remains owned by PersonaOS.

# ------------------------------------------------------------
# 1.4 snapshot reflection
# ------------------------------------------------------------

CivilizationOS may:
- reference PersonaOS-provided snapshots where permitted
- consume snapshot-derived release-safe or world-safe representations
- keep civilization-side references to snapshot identifiers

CivilizationOS must not:
- treat copied civilization-side data as canonical snapshot authority
- create silent snapshot authority by publication/export/context reuse
- replace current Persona truth with world-side frozen assumptions

fixed_rule:
CivilizationOS may consume snapshot references,
but snapshot authority remains inside PersonaOS.

# ------------------------------------------------------------
# 1.5 security reflection
# ------------------------------------------------------------

CivilizationOS may:
- participate in protected civilization-to-persona flows
- maintain security/policy mechanisms for CivilizationOS itself
- display security-related outcomes returned from Persona-linked flows
- relay credentials/proofs where architecture requires it

CivilizationOS must not:
- declare civilization-local protection or permission as PersonaOS security truth
- bypass PersonaOS protected-path enforcement
- treat world-side policy or access checks as Persona security verdict

fixed_rule:
CivilizationOS security for civilization scope is distinct from
PersonaOS protection-gate truth.

# ------------------------------------------------------------
# 1.6 governance reflection
# ------------------------------------------------------------

CivilizationOS may:
- display Persona-related approval outcomes where exposed
- depend on Persona governance outcomes where required
- keep civilization-side policy reactions to those outcomes
- maintain CivilizationOS governance for civilization-owned domains

CivilizationOS must not:
- fabricate Persona governance approval locally
- treat civilization policy approval as Persona governance truth
- auto-convert missing Persona decisions into allowed state

fixed_rule:
CivilizationOS governance for civilization-owned domains is distinct
from PersonaOS governance authority.

# ------------------------------------------------------------
# 1.7 operations-support reflection
# ------------------------------------------------------------

CivilizationOS may:
- keep world-side logs
- keep environment-side delivery traces
- keep support/diagnostics evidence for civilization-owned flows
- keep operator/admin-visible support evidence

CivilizationOS must not:
- treat support logs as Persona canonical truth
- treat delivery traces as Persona mutation truth
- replace Persona governance/security/canonical records
  with civilization-side support records

fixed_rule:
CivilizationOS support records remain civilization-side support semantics,
not Persona authority records.

# ============================================================
# 2. WORLD/CONTEXT OWNERSHIP VS PERSONA TRUTH OWNERSHIP
# ============================================================

CivilizationOS must explicitly separate:

- civilization-owned world truth
- nation/city/company/environment truth
- participation/residency/activity context
- PersonaOS canonical truth references
- civilization-side support and retry records
- civilization-side projections and exposures

required_separation_rules:
- world role is not Persona authority identity
- participation state is not Persona lifecycle truth
- environment history is not committed Persona growth truth
- civilization copy/export is not Persona snapshot authority
- civilization policy approval is not Persona governance authority
- civilization protection checks are not Persona security verdicts

fixed_statement:
CivilizationOS must preserve strict separation between
civilization-owned context truth and PersonaOS-owned canonical truth.

# ============================================================
# 3. CONTRACT AND INTEGRATION REFLECTION
# ============================================================

CivilizationOS may:
- originate requests toward PersonaOS through defined contract paths
- consume PersonaOS responses
- keep civilization-side request/response traces
- keep world-side route and transport visibility

CivilizationOS must not:
- treat accepted civilization requests as Persona commit success
- treat response receipt as Persona downstream completion
- merge civilization transport state with Persona canonical authority

fixed_statement:
CivilizationOS may integrate with PersonaOS across contract boundaries,
but integration acceptance and civilization processing visibility
do not replace Persona canonical truth.

# ============================================================
# 4. SECURITY / GOVERNANCE / SUPPORT SPLIT
# ============================================================

CivilizationOS must preserve these distinctions:

- civilization-local permission is not Persona security verdict
- civilization policy approval is not Persona governance decision
- civilization delivery trace is not Persona mutation truth
- civilization retry state is not Persona approval or authorization
- civilization support evidence is not Persona canonical record

fixed_statement:
CivilizationOS must keep civilization-local security, governance,
and support semantics distinct from PersonaOS security,
governance, and canonical authority truth.

# ============================================================
# 5. CROSS-DOMAIN STAGE SEPARATION INSIDE CIVILIZATIONOS
# ============================================================

CivilizationOS must preserve these distinctions in world workflows,
integration models, UI, operator tools, and logs:

- request accepted
- security verified
- governance approved
- canonical mutation committed
- response returned
- delivery observed
- support logged

strict_civilization_rule:
CivilizationOS must not collapse earlier-stage success
into later-stage completion when dealing with Persona-linked flows.

required_stage_statement:
- accepted is not verified
- verified is not approved
- approved is not committed
- committed is not delivered
- delivered is not authoritative truth

# ============================================================
# 6. RECOMMENDED LOCAL MODEL SEPARATION
# ============================================================

recommended_civilizationos_model_groups:

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

models_that_must_not_be_promoted_to_persona_authority:
- civilization role label
- civilization activity board flag
- civilization experience history summary
- civilization export copy
- civilization approval badge
- civilization retry/delivery state
- civilization diagnostics trace

# ============================================================
# 7. PROHIBITED MISREFLECTIONS
# ============================================================

Do not allow:
- civilization role label -> canonical Persona identity
- participation/activity progression -> canonical Persona state transition
- world experience/history -> committed Persona growth truth
- copied civilization record -> canonical Persona snapshot
- civilization permission -> Persona security verdict
- civilization policy approval -> Persona governance authority
- civilization support log -> Persona mutation truth
- civilization response receipt -> Persona downstream completion

# ============================================================
# 8. PRACTICAL IMPLEMENTATION REFLECTION RULES
# ============================================================

CivilizationOS implementation should follow:

rule_1:
Always label civilization-side values as one of:
- civilization-owned truth
- Persona reference
- derived projection
- integration state
- support/debug trace

rule_2:
Never serialize civilization convenience status as Persona canonical status.

rule_3:
Do not allow world/context-local assumptions to silently overwrite
last confirmed PersonaOS truth.

rule_4:
When Persona-linked status is unknown, stale, or unresolved,
preserve unresolved state instead of fabricating completion.

rule_5:
Any success shown in CivilizationOS for Persona-linked flows must be
clearly distinguished from:
- request accepted
- response returned
- delivery observed
- Persona canonical commit

# ============================================================
# 9. NEXT REFLECTION DEPENDENCIES
# ============================================================

After CivilizationOS reflection,
the next natural target is:
- VisualRuntime reflection

CivilizationOS should be treated as the world/context-side
reflection baseline for Persona-linked context ownership.

# ============================================================
# 10. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
CivilizationOS must be designed and implemented as a world/context
owner and environment-side consumer around PersonaOS-linked data.
It may contextualize, project, transport, and operationally support
Persona-related information for civilization purposes,
but it must not silently replace PersonaOS canonical identity,
state, growth, snapshot, governance, security,
or committed mutation truth.
