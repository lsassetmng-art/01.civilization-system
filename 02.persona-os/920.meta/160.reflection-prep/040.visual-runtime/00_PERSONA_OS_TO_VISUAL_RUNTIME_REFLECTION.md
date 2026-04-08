# ============================================================
# PERSONA OS TO VISUAL RUNTIME REFLECTION
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: reflection-prep
subdomain: visual-runtime
owner: Boss
prepared_by: Zero

purpose:
Defines how PersonaOS normalized wording boundaries,
implementation-facing responsibility separation,
and cross-domain stage separation must be reflected into
VisualRuntime.

# ============================================================
# 0. ROLE OF VISUALRUNTIME
# ============================================================

VisualRuntime is a rendering/execution-side system that:
- consumes PersonaOS-derived visual truth through defined inputs
- resolves visual manifests, anchors, offsets, rig deltas,
  render order, and execution-side layout
- produces runtime-rendered visual output
- may keep render session state, buffers, caches,
  and execution diagnostics
- may run inside host applications such as PocketSecretary

VisualRuntime is not:
- the authority owner of Persona visual truth
- the authority owner of Persona identity
- the authority owner of Persona current state
- the authority owner of Persona growth truth
- the authority owner of Persona snapshot truth
- the authority owner of Persona governance decisions
- the authority owner of Persona security verdicts

fixed_role_statement:
VisualRuntime is a rendering-side consumer and executor of
PersonaOS-derived visual data, not a truth-owning authority domain.

# ============================================================
# 1. REFLECTION OF NORMALIZED PERSONAOS BOUNDARIES
# ============================================================

# ------------------------------------------------------------
# 1.1 visual truth reflection
# ------------------------------------------------------------

VisualRuntime may:
- consume visual manifests
- consume anchors, offsets, rig deltas, z-order, scale,
  rotation, and asset references
- resolve runtime render layouts from canonical inputs
- maintain execution-side render state

VisualRuntime must not:
- redefine canonical visual truth
- silently replace authoritative manifest truth
- treat resolved render output as canonical visual source
- promote local renderer-side corrections into authority truth
  without explicit canonical adoption

fixed_rule:
VisualRuntime executes visual consumption and rendering,
but visual truth remains owned by PersonaOS.

# ------------------------------------------------------------
# 1.2 identity reflection
# ------------------------------------------------------------

VisualRuntime may:
- receive identity-linked visual references
- use character/persona references required for rendering
- consume display-facing identity-linked visual inputs

VisualRuntime must not:
- redefine authority identity
- treat render identity labels as Persona identity truth
- convert render-bound identifiers into identity authority

fixed_rule:
Identity-linked render references are execution inputs,
not identity authority.

# ------------------------------------------------------------
# 1.3 state reflection
# ------------------------------------------------------------

VisualRuntime may:
- consume state-linked visual selection inputs
- consume emotion/view/expression selectors if exposed
- maintain runtime animation/expression session state

VisualRuntime must not:
- treat animation/expression runtime state as canonical Persona state
- equate render-time expression with lifecycle/status truth
- overwrite Persona state through renderer-side transitions

fixed_rule:
Render/expression state is execution-side visual state,
not Persona lifecycle/state authority.

# ------------------------------------------------------------
# 1.4 growth reflection
# ------------------------------------------------------------

VisualRuntime may:
- reflect already-resolved visual consequences of Persona growth
- display growth-related appearance changes if canonically provided

VisualRuntime must not:
- infer committed growth truth from render-time appearance
- treat visual evolution in the renderer as growth mutation authority
- store local appearance deltas as Persona growth truth

fixed_rule:
VisualRuntime may display canonically resolved growth-linked visuals,
but committed growth truth remains owned by PersonaOS.

# ------------------------------------------------------------
# 1.5 snapshot reflection
# ------------------------------------------------------------

VisualRuntime may:
- consume snapshot-derived visual inputs where permitted
- render snapshot-based appearances
- keep cached snapshot-linked render resources

VisualRuntime must not:
- treat local render cache as canonical snapshot authority
- upgrade rendered/cached/exported visual data into snapshots
- replace current Persona truth with renderer-side frozen assumptions

fixed_rule:
VisualRuntime may consume snapshot-derived visual references,
but snapshot authority remains inside PersonaOS.

# ------------------------------------------------------------
# 1.6 security reflection
# ------------------------------------------------------------

VisualRuntime may:
- run inside protected execution paths
- consume already-authorized visual inputs
- surface security-related render failures if exposed by host flows

VisualRuntime must not:
- declare local render success as Persona security truth
- bypass PersonaOS protection-gate conditions
- treat local asset availability or render validation
  as Persona security verification

fixed_rule:
VisualRuntime participates in visual execution,
but PersonaOS security gate truth remains outside VisualRuntime.

# ------------------------------------------------------------
# 1.7 governance reflection
# ------------------------------------------------------------

VisualRuntime may:
- render outputs derived from governance-approved materials
- display states conditioned by governance-approved releases
- consume moderation-filtered visual inputs if exposed

VisualRuntime must not:
- fabricate governance approval locally
- treat render eligibility as Persona governance truth
- turn local display success into governance decision authority

fixed_rule:
VisualRuntime may consume governance-cleared visual inputs,
but governance authority remains owned by PersonaOS.

# ------------------------------------------------------------
# 1.8 operations-support reflection
# ------------------------------------------------------------

VisualRuntime may:
- keep render diagnostics
- keep performance traces
- keep visual failure context
- keep runtime/session support records

VisualRuntime must not:
- treat diagnostics as canonical truth
- treat render completion as Persona mutation truth
- replace governance/security/canonical records
  with render-side support traces

fixed_rule:
VisualRuntime support and diagnostics records are execution-side
support semantics, not canonical authority records.

# ============================================================
# 2. MANIFEST / RENDER / OUTPUT SEPARATION
# ============================================================

VisualRuntime must explicitly separate:

- canonical manifest/input truth
- resolved render plan
- runtime render session state
- visual buffers/caches
- rendered output
- diagnostics/performance traces

required_separation_rules:
- manifest input is not the same as rendered output
- rendered output is not canonical visual truth
- render cache is not snapshot authority
- runtime layout state is not Persona identity/state authority
- diagnostics/performance traces are not governance/security truth

fixed_statement:
VisualRuntime must preserve strict separation between
canonical visual inputs and execution-side render artifacts.

# ============================================================
# 3. HOSTING CONTEXT REFLECTION
# ============================================================

VisualRuntime may be hosted by:
- PocketSecretary
- future host applications
- runtime shells or viewers

When hosted, VisualRuntime must still preserve:
- PersonaOS visual truth ownership
- host/runtime/session separation
- non-authoritative render caches
- non-authoritative diagnostics/support records

fixed_statement:
Host integration does not change VisualRuntime into a truth owner.

# ============================================================
# 4. CONTRACT AND INTEGRATION REFLECTION
# ============================================================

VisualRuntime may:
- consume manifest-facing contracts
- consume resolved visual input payloads
- keep local request/response traces for render setup
- keep execution-stage asset resolution traces

VisualRuntime must not:
- treat accepted manifest input as canonical commit success
- treat render completion as downstream business/persona completion
- merge render transport state with Persona canonical authority

fixed_statement:
VisualRuntime is an execution-side consumer of visual contracts,
not the owner of PersonaOS contract or mutation authority.

# ============================================================
# 5. CROSS-DOMAIN STAGE SEPARATION INSIDE VISUALRUNTIME
# ============================================================

VisualRuntime must preserve these distinctions in render setup,
runtime models, host-side UI, and diagnostics:

- request accepted
- security verified
- governance approved
- canonical mutation committed
- visual input resolved
- render executed
- output displayed
- diagnostics logged

strict_visual_rule:
VisualRuntime must not collapse earlier-stage success
into later-stage completion or truth authority.

required_stage_statement:
- accepted is not verified
- verified is not approved
- approved is not committed
- committed is not render executed
- render executed is not authoritative truth
- displayed is not authoritative truth

# ============================================================
# 6. RECOMMENDED LOCAL MODEL SEPARATION
# ============================================================

recommended_visualruntime_model_groups:

canonical_input_reference_models:
- visual_manifest_reference
- resolved_visual_input_reference
- character_visual_reference

render_plan_models:
- render_plan
- layer_resolution_record
- anchor_offset_resolution_record
- rig_delta_resolution_record

runtime_execution_models:
- render_session_state
- animation_session_state
- buffer_cache_record
- asset_resolution_trace

support_models:
- render_diagnostics_record
- performance_trace_record
- render_failure_context
- operator_visible_render_issue

models_that_must_not_be_promoted_to_persona_authority:
- local render output
- renderer cache
- local layer correction
- runtime animation flag
- local expression/display state
- render diagnostics trace
- asset resolution fallback state

# ============================================================
# 7. PROHIBITED MISREFLECTIONS
# ============================================================

Do not allow:
- rendered output -> canonical visual truth
- local render identifier -> canonical Persona identity
- runtime animation/expression state -> canonical Persona state
- visual appearance delta -> committed Persona growth truth
- renderer cache/export -> canonical Persona snapshot
- local render validation -> Persona security verdict
- render/display eligibility -> Persona governance authority
- render diagnostics trace -> Persona mutation truth

# ============================================================
# 8. PRACTICAL IMPLEMENTATION REFLECTION RULES
# ============================================================

VisualRuntime implementation should follow:

rule_1:
Always label local values as one of:
- canonical input reference
- resolved render plan
- runtime session state
- rendered artifact
- support/debug trace

rule_2:
Never serialize renderer convenience state as Persona canonical status.

rule_3:
Do not allow render-time assumptions or fallbacks to silently overwrite
last confirmed PersonaOS visual truth.

rule_4:
When visual input status is unknown, stale, or unresolved,
preserve unresolved state instead of fabricating canonical completion.

rule_5:
Any success shown by VisualRuntime must be clearly distinguished from:
- input accepted
- input resolved
- render executed
- output displayed
- Persona canonical commit

# ============================================================
# 9. REFLECTION CLOSURE POSITION
# ============================================================

VisualRuntime should be treated as the rendering/execution-side
reflection baseline for PersonaOS visual truth consumption.

With this document, the initial downstream reflection set covers:
- PocketSecretary
- BusinessOS
- CivilizationOS
- VisualRuntime

# ============================================================
# 10. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
VisualRuntime must be designed and implemented as a rendering-side
consumer and executor around PersonaOS-derived visual data.
It may resolve, render, cache, display, and operationally support
visual execution artifacts, but it must not silently replace
PersonaOS canonical visual truth, identity, state, growth,
snapshot, governance, security, or committed mutation truth.
