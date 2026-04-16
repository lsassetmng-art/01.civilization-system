# ============================================================
# PERSONA OS REFLECTION PREP MASTER
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: reflection-prep
owner: Boss
prepared_by: Zero

purpose:
Defines how PersonaOS normalized semantic and implementation-facing
boundaries must be reflected into downstream applications,
adjacent OS designs, and PersonaOS foundation layers.

# ============================================================
# 1. REFLECTION BASIS
# ============================================================

PersonaOS reflection must preserve these fixed boundaries:

- identity = authoritative self-definition
- state = current lifecycle/status truth
- growth = governed committed development
- snapshot = immutable point-in-time truth capture
- integration = contract boundary
- security = protection gate
- governance = policy-grounded judgment
- operations-support = observability/retry/audit/diagnostics support

cross-domain stage separation must also be preserved:

- accepted is not verified
- verified is not approved
- approved is not committed
- committed is not returned
- returned is not delivered
- delivered is not authoritative truth

# ============================================================
# 2. GLOBAL REFLECTION RULES
# ============================================================

global_reflection_rules:
- downstream systems may reference PersonaOS truth
- downstream systems may expose PersonaOS-derived views
- downstream systems may cache PersonaOS-derived runtime data
- downstream systems may transport PersonaOS-related contracts
- downstream systems may keep support-side logs and delivery traces
- foundation-side layers may execute PersonaOS-derived runtime behavior
- foundation-side layers may render PersonaOS-derived visual truth

but_targets_must_not:
- replace PersonaOS identity authority
- replace PersonaOS state authority
- replace PersonaOS growth authority
- replace PersonaOS snapshot authority
- replace PersonaOS security gate truth
- replace PersonaOS governance decision truth
- replace PersonaOS canonical mutation truth
- replace PersonaOS canonical visual truth

# ============================================================
# 3. TARGET-BY-TARGET REFLECTION DIRECTION
# ============================================================

# ------------------------------------------------------------
# 3.1 PocketSecretary
# ------------------------------------------------------------

role:
Runtime-facing consumer and presenter of PersonaOS-derived data.

may_hold:
- runtime session data
- UI exposure data
- rendered visual session data
- local support-side operational traces
- integration requests/responses for PersonaOS-facing actions

must_not_hold_as_authority:
- canonical identity truth
- canonical state truth
- committed growth truth
- snapshot authority
- governance decision authority
- security verdict authority

core_rule:
PocketSecretary is a host/runtime consumer, not a truth owner.

# ------------------------------------------------------------
# 3.2 BusinessOS
# ------------------------------------------------------------

role:
Business-scoped system that may consume PersonaOS-linked identity,
employment, or application-facing integration data.

may_hold:
- business-side references
- business workflow state
- app-specific contract records
- support and integration state on business side

must_not_hold_as_persona_authority:
- PersonaOS canonical self-definition
- PersonaOS current state authority
- PersonaOS growth truth
- PersonaOS snapshot authority

core_rule:
BusinessOS may integrate with PersonaOS,
but Persona truth ownership remains inside PersonaOS.

# ------------------------------------------------------------
# 3.3 CivilizationOS
# ------------------------------------------------------------

role:
Higher-order living environment / world-side design context
that may reference Personas and their usage contexts.

may_hold:
- world-side usage context
- civilization-side policy context
- environment-side runtime and narrative conditions
- externalized exposure and interaction context

must_not_hold_as_persona_authority:
- canonical persona self-definition
- direct overwrite authority for persona truth
- silent replacement of PersonaOS governance/security/canonical records

core_rule:
CivilizationOS may contextualize Personas,
but it must not silently absorb PersonaOS authority.

# ------------------------------------------------------------
# 3.4 VisualRuntime
# ------------------------------------------------------------

role:
PersonaOS foundation-side visual execution layer.

may_hold:
- render session state
- resolved layout/render data
- runtime visual buffers
- host-side or foundation-side execution caches

must_not_hold_as_authority:
- canonical visual truth ownership
- emotion/state identity conflation
- canonical snapshot authority
- growth/state/identity authority

core_rule:
VisualRuntime executes PersonaOS visual consumption internally,
but canonical visual truth remains owned by PersonaOS.

# ============================================================
# 4. PRIMARY REFLECTION RISKS
# ============================================================

major_risks:
- host/runtime cache becomes treated as canonical truth
- public-facing label becomes treated as identity authority
- business-side workflow state becomes treated as persona state authority
- world-side context becomes treated as direct persona mutation authority
- render-time visual state becomes treated as canonical visual truth
- support logs become treated as governance/security/canonical truth
- accepted/returned/delivered states become confused with committed truth

# ============================================================
# 5. NEXT RECOMMENDED DOCUMENT ORDER
# ============================================================

recommended_order:
1. PocketSecretary reflection note
2. BusinessOS reflection note
3. CivilizationOS reflection note
4. VisualRuntime reflection note

why_this_order:
PocketSecretary is the nearest runtime-facing consumer of PersonaOS,
while VisualRuntime is a PersonaOS-internal foundation execution layer.

# ============================================================
# 6. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
PersonaOS reflection must preserve PersonaOS authority
ownership and stage separation.
Adjacent systems may consume, present, transport,
or operationally support PersonaOS-derived data,
and foundation-side execution layers may render or execute it,
but they must not silently replace PersonaOS canonical authority,
decision truth, protection-gate truth, canonical visual truth,
or committed mutation truth.
