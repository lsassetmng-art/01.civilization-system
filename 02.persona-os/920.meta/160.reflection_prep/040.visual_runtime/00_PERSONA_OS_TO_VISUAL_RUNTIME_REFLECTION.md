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
VisualRuntime as a PersonaOS-internal foundation layer.

# ============================================================
# 0. ROLE OF VISUALRUNTIME
# ============================================================

VisualRuntime is a PersonaOS-internal visual execution layer that:
- consumes PersonaOS-derived visual truth through defined inputs
- resolves manifests, layer composition inputs, anchors, offsets,
  rig/expression parameters, and render execution state
- produces runtime-rendered visual output
- may keep render session state, buffers, caches,
  and diagnostics/performance traces

VisualRuntime is not:
- the authority owner of Persona identity
- the authority owner of Persona state
- the authority owner of Persona growth truth
- the authority owner of Persona snapshot truth
- the authority owner of Persona governance decisions
- the authority owner of Persona security verdicts
- the authority owner of canonical visual truth

fixed_role_statement:
VisualRuntime is a PersonaOS-foundation execution layer for visual
consumption and rendering, not a truth-owning authority domain.

# ============================================================
# 1. CORE REFLECTION RULE
# ============================================================

core_rule:
VisualRuntime belongs inside PersonaOS foundation semantics.
Therefore it must be designed as an execution/runtime layer under
PersonaOS authority boundaries, not as an external authority peer.

# ============================================================
# 2. VISUAL TRUTH BOUNDARY
# ============================================================

VisualRuntime may:
- consume canonical visual inputs
- resolve render plans
- execute rendering
- maintain session/buffer/cache state
- emit render artifacts

VisualRuntime must not:
- redefine canonical visual truth
- promote render output to canonical visual truth
- promote cache/export artifacts to snapshot authority
- treat renderer-side corrections as truth mutation

fixed_statement:
Canonical visual truth remains owned by PersonaOS;
VisualRuntime only executes it.

# ============================================================
# 3. IDENTITY / STATE / GROWTH / SNAPSHOT NON-OWNERSHIP
# ============================================================

VisualRuntime must not:
- turn render identifiers into identity authority
- turn runtime expression state into Persona lifecycle truth
- infer committed growth truth from visual deltas
- treat cached/frozen render artifacts as canonical snapshots

fixed_statement:
VisualRuntime may reflect Persona truth in renderable form,
but it does not own Persona identity, state, growth, or snapshot truth.

# ============================================================
# 4. STAGE SEPARATION
# ============================================================

VisualRuntime-facing flows must preserve:
- input accepted
- security verified where applicable
- governance approved where applicable
- canonical mutation committed where relevant
- visual input resolved
- render executed
- output displayed
- diagnostics logged

strict_rule:
- committed is not render executed
- render executed is not authoritative truth
- output displayed is not authoritative truth

# ============================================================
# 5. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
VisualRuntime must be treated as a PersonaOS-internal foundation
execution layer.
It may resolve, render, cache, display, and operationally support
visual execution artifacts, but it must not silently replace
PersonaOS canonical visual truth, identity, state, growth,
snapshot, governance, security, or committed mutation truth.
