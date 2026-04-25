# ============================================================
# VISUAL RUNTIME FOUNDATION REFLECTION PATCHSET
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: foundation-reflection
subdomain: visual-runtime
owner: Boss
prepared_by: Zero

purpose:
Defines the concrete PersonaOS-foundation-side patch rules that should be
reflected into PersonaOS canonical foundation/visual/runtime design
for VisualRuntime as an internal execution layer.

# ============================================================
# 0. TARGET POSITION
# ============================================================

target_position:
- PersonaOS foundation-side internal layer
- visual execution/runtime layer
- canonical truth consumer, not canonical truth owner

primary_absorption_domains_expected:
- 020.architecture/070.visual
- 020.architecture/080.runtime_hosting
- 040.runtime
- 090.interface where applicable
- 100.security where applicable
- 120.implementation where applicable

patch_mode:
This document is a foundation reflection patchset for later absorption
into PersonaOS canonical layer documents.
It is not itself a replacement for those layers.

# ============================================================
# 1. GLOBAL ROLE FIX
# ============================================================

VisualRuntime shall be treated as:
- a PersonaOS-internal visual execution layer
- a canonical visual input consumer
- a render-plan resolver
- a render-session and output artifact owner
- a runtime artifact owner for execution products only

VisualRuntime shall not be treated as:
- canonical visual truth owner
- Persona identity authority
- Persona state authority
- Persona growth authority
- Persona snapshot authority
- Persona governance authority
- Persona security authority
- Persona mutation authority

global_fixed_statement:
VisualRuntime is a PersonaOS foundation execution layer
that consumes canonical visual truth and produces execution artifacts,
but it does not own Persona canonical truth.

# ============================================================
# 2. ARCHITECTURE PATCH RULE
# ============================================================

apply_to:
- PersonaOS architecture domains related to visual/runtime-hosting/foundation

required_reflection:
Architecture must explicitly separate:
- canonical visual truth
- resolved visual input reference
- render plan
- render session state
- buffer/cache state
- rendered output artifact
- diagnostics/performance/support traces

architecture_must_not_allow:
- rendered output -> canonical visual truth
- runtime expression flags -> Persona lifecycle truth
- render identifiers -> authority identity
- appearance deltas -> committed growth truth
- cached render exports -> snapshot authority
- render success -> canonical completion

architecture_patch_statement:
PersonaOS foundation architecture must preserve strict separation
between canonical visual truth and VisualRuntime execution artifacts,
session state, caches, outputs, and diagnostics.

# ============================================================
# 3. VISUAL TRUTH PATCH RULE
# ============================================================

apply_to:
- PersonaOS visual-side canonical design

required_reflection:
Visual truth must remain upstream from execution.
VisualRuntime may consume:
- manifests
- asset references
- composition/layer ordering inputs
- anchors/offsets/rig parameters
- canonical visual selectors

VisualRuntime must not:
- redefine those values as authority truth
- silently persist local corrections as canonical truth
- treat output-side transforms as canonical mutation

visual_truth_patch_statement:
Canonical visual truth remains owned by PersonaOS visual authority;
VisualRuntime only resolves and executes it.

# ============================================================
# 4. RUNTIME PATCH RULE
# ============================================================

apply_to:
- PersonaOS runtime-related canonical design

required_reflection:
Runtime must explicitly treat:
- render session state as disposable execution state
- animation/expression state as execution-side state
- runtime buffers/caches as non-authoritative
- host/session reuse as fail-safe and non-authoritative
- stale execution artifacts as non-canonical

runtime_patch_statement:
VisualRuntime execution state is disposable runtime state
and must not replace PersonaOS canonical identity, state, visual truth,
growth truth, or snapshot truth.

# ============================================================
# 5. MODEL PATCH RULE
# ============================================================

apply_to:
- PersonaOS model-related canonical design where foundation models appear

recommended_model_groups:
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

must_not_promote_to_authority:
- local render output
- renderer cache
- local layer correction
- runtime animation flag
- local expression/display state
- render diagnostics trace
- asset fallback state

model_patch_statement:
Foundation-side models must distinguish canonical visual references
from render plans, runtime execution artifacts, and support artifacts,
and must not serialize render convenience state as Persona truth.

# ============================================================
# 6. FLOW PATCH RULE
# ============================================================

apply_to:
- PersonaOS flow-related canonical design where visual execution appears

required_stage_separation:
- input accepted
- security verified where applicable
- governance approved where applicable
- canonical mutation committed where relevant
- visual input resolved
- render executed
- output displayed or emitted
- diagnostics logged

must_not_collapse:
- committed -> render executed
- render executed -> authoritative truth
- output emitted -> authoritative truth
- input resolved -> canonical commit

flow_patch_statement:
VisualRuntime-facing flows inside PersonaOS must preserve explicit
separation between canonical truth resolution and execution-side
render completion.

# ============================================================
# 7. INTERFACE PATCH RULE
# ============================================================

apply_to:
- PersonaOS interface-related canonical design where render-facing
  or host-facing boundaries appear

interface_must_distinguish:
- canonical input reference vs resolved render input
- input accepted vs render-ready
- render executed vs canonical commit
- output displayed vs authoritative truth
- governance-cleared vs render-visible
- security-cleared vs renderer-valid

interface_patch_statement:
PersonaOS foundation interfaces must keep render execution boundaries
and canonical authority boundaries visible and non-overlapping.

# ============================================================
# 8. SECURITY PATCH RULE
# ============================================================

apply_to:
- PersonaOS security-related canonical design where visual execution
  consumes protected resources or protected paths

required_reflection:
Security design must explicitly separate:
- render-local validation or asset checks
- execution/session checks
- PersonaOS protection-gate truth

must_not_allow:
- render validation -> canonical security verdict
- asset availability convenience -> protected-path bypass
- render/session pass -> canonical authorization

security_patch_statement:
VisualRuntime may participate in protected visual execution paths,
but PersonaOS security gate truth remains outside VisualRuntime.

# ============================================================
# 9. OPERATIONS-SUPPORT PATCH RULE
# ============================================================

apply_to:
- PersonaOS operations-support-related canonical design where
  render traces and diagnostics appear

required_reflection:
Operations/support must treat:
- render diagnostics as support data
- performance traces as support state
- operator visibility as non-authoritative observability
- render audit/support logs as non-authoritative evidence

operations_patch_statement:
VisualRuntime diagnostics and performance traces may support
observability and recovery,
but they must not masquerade as canonical visual truth,
governance truth, security truth, or mutation truth.

# ============================================================
# 10. IMPLEMENTATION PATCH RULE
# ============================================================

apply_to:
- PersonaOS implementation-side canonical design where visual runtime
  details are encoded

implementation_should_enforce:
- label every local value by authority class
- preserve unresolved state when canonical visual status is unknown
- keep render caches explicitly non-authoritative
- keep render/session/debug layers separate from canonical truth
- treat renderer fallback as execution fallback, not truth rewrite

implementation_patch_statement:
PersonaOS implementation must encode visual-runtime-vs-canonical-truth
separation directly into models, status vocabularies,
flow handling, and persistence rules.

# ============================================================
# 11. DEVELOPMENT PATCH RULE
# ============================================================

apply_to:
- PersonaOS development-side canonical design where review rules
  for visual runtime are documented

development_checklist_items:
- authority owner explicit
- execution artifact vs canonical truth explicit
- stage separation explicit
- unresolved state preserved
- support data non-authoritative
- no render success overclaim
- render state does not overwrite Persona truth

development_patch_statement:
PersonaOS development review must reject implementations
that silently promote render output, runtime state,
or render diagnostics into Persona authority truth.

# ============================================================
# 12. MOST IMPORTANT PROHIBITIONS
# ============================================================

Do not allow:
- render output -> canonical visual truth
- render identifier -> Persona identity authority
- runtime animation/expression state -> Persona state authority
- appearance delta -> committed Persona growth truth
- render cache/export -> Persona snapshot authority
- render validation -> Persona security truth
- render eligibility/display success -> Persona governance truth
- render diagnostics/logs -> canonical mutation truth

# ============================================================
# 13. ABSORPTION ORDER
# ============================================================

recommended_absorption_order:
1. PersonaOS visual architecture docs
2. PersonaOS runtime-hosting docs
3. PersonaOS runtime docs
4. PersonaOS implementation docs
5. PersonaOS interface docs
6. PersonaOS security docs
7. PersonaOS operations-support docs
8. PersonaOS development docs

reason:
Visual architecture and runtime-hosting carry the most load-bearing
boundary clarifications for VisualRuntime as a foundation layer.

# ============================================================
# 14. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
This patchset defines how PersonaOS canonical foundation design
must absorb normalized authority and stage-separation rules
for VisualRuntime as an internal execution layer.
VisualRuntime may own render execution, render plans,
runtime buffers, outputs, and diagnostics,
but it must not silently replace PersonaOS canonical visual truth,
identity, state, growth, snapshot, governance, security,
or committed mutation truth.
