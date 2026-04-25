# ============================================================
# VISUAL RUNTIME PRIMARY INSERT TEXTS
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: foundation-reflection
subdomain: visual-runtime
owner: Boss
prepared_by: Zero

purpose:
Provides direct insertion-ready text blocks for the first two
highest-priority canonical absorption targets:

- 0200010_PERSONA_RENDERING_ARCHITECTURE.md
- 0400006_PERSONA_VISUAL_RUNTIME.md

# ============================================================
# 1. INSERT TEXT FOR 0200010_PERSONA_RENDERING_ARCHITECTURE
# ============================================================

target_file:
020.architecture/0200010_PERSONA_RENDERING_ARCHITECTURE.md

insertion_purpose:
Strengthen the rendering architecture so that canonical visual truth,
render-plan resolution, and execution artifacts are explicitly separated.

# ------------------------------------------------------------
# 1.1 insertion block: authority boundary
# ------------------------------------------------------------

insert_block_1:
Visual rendering inside PersonaOS shall be governed by a strict
authority boundary between canonical visual truth and execution-side
render behavior.

Canonical visual truth remains upstream from rendering and includes
the authoritative visual inputs, composition meaning,
and canonical visual selection semantics defined by PersonaOS.

Rendering architecture consumes canonical visual truth
and resolves execution-stage behavior such as
layout, anchor interpretation, XY offset application,
rig/expression parameter application, layer ordering,
and output generation.

These execution-stage results are render artifacts,
not canonical visual truth.
Rendered output, intermediate layout state,
runtime adjustment state, and renderer-local fallback behavior
must not silently replace canonical visual truth.

# ------------------------------------------------------------
# 1.2 insertion block: execution-stage semantics
# ------------------------------------------------------------

insert_block_2:
Rendering architecture must explicitly distinguish the following:

- canonical visual input reference
- render plan resolution
- runtime render session state
- rendered output artifact
- diagnostics/performance/support traces

The rendering layer may resolve anchor points,
autocenter behavior, offset corrections,
and layer composition instructions,
but these remain execution-stage semantics under canonical input authority.

A successful render execution does not imply canonical mutation.
A displayed result does not imply authoritative truth.
A locally corrected render result does not become canonical visual truth
unless a separate canonical adoption path explicitly states so.

# ------------------------------------------------------------
# 1.3 insertion block: non-authoritative output rule
# ------------------------------------------------------------

insert_block_3:
PersonaOS rendering architecture must preserve the rule that
output-side success is non-authoritative by default.

This includes:
- successful composition
- successful frame production
- successful preview generation
- successful runtime display
- successful asset fallback rendering

None of the above may be interpreted as:
- canonical visual truth ownership
- Persona identity authority
- Persona state authority
- committed growth truth
- canonical snapshot authority
- governance truth
- security gate truth

# ------------------------------------------------------------
# 1.4 insertion block: rendering fixed statement
# ------------------------------------------------------------

insert_block_4:
Fixed rendering statement:

PersonaOS rendering architecture is an execution architecture
under canonical visual authority.
It may resolve, compose, layout, and emit render artifacts,
but it must not silently convert render-time outputs,
runtime corrections, or display success into canonical truth.

# ============================================================
# 2. INSERT TEXT FOR 0400006_PERSONA_VISUAL_RUNTIME
# ============================================================

target_file:
040.runtime/0400006_PERSONA_VISUAL_RUNTIME.md

insertion_purpose:
Tighten the runtime definition so that VisualRuntime is described as
a PersonaOS-internal execution layer rather than a truth-owning layer.

# ------------------------------------------------------------
# 2.1 insertion block: role correction
# ------------------------------------------------------------

insert_block_1:
Persona Visual Runtime is a PersonaOS-internal visual execution layer.

Its responsibility is to:
- consume canonical visual inputs
- resolve render-session behavior
- execute visual composition and display behavior
- hold runtime-local buffers, caches, and session artifacts
- expose runtime diagnostics where needed

It does not own:
- canonical visual truth
- Persona identity authority
- Persona state authority
- Persona growth authority
- Persona snapshot authority
- Persona governance authority
- Persona security gate truth
- committed mutation truth

# ------------------------------------------------------------
# 2.2 insertion block: runtime-state separation
# ------------------------------------------------------------

insert_block_2:
Visual runtime state must remain explicitly disposable
and non-authoritative.

This includes:
- render session state
- animation/expression session state
- local asset-resolution state
- render buffers and caches
- output preview state
- display-ready state
- render diagnostics and performance traces

These may be required for execution,
but they must not be interpreted as Persona canonical truth.

# ------------------------------------------------------------
# 2.3 insertion block: stage separation
# ------------------------------------------------------------

insert_block_3:
Visual runtime flows must preserve stage separation.

At minimum, runtime wording must distinguish:

- input accepted
- security verified where applicable
- governance approved where applicable
- canonical mutation committed where relevant
- visual input resolved
- render executed
- output displayed
- diagnostics logged

The following equivalences are prohibited:

- input accepted = canonical commit
- canonical commit = render executed
- render executed = authoritative truth
- output displayed = authoritative truth
- diagnostics logged = canonical authority record

# ------------------------------------------------------------
# 2.4 insertion block: runtime non-promotion rule
# ------------------------------------------------------------

insert_block_4:
VisualRuntime convenience behavior must not silently promote
execution artifacts into canonical authority.

The following promotions are prohibited:

- render output -> canonical visual truth
- runtime expression state -> Persona lifecycle truth
- appearance delta -> committed growth truth
- cache/export artifact -> canonical snapshot authority
- render validation -> Persona security verdict
- display eligibility -> Persona governance truth

# ------------------------------------------------------------
# 2.5 insertion block: visual runtime fixed statement
# ------------------------------------------------------------

insert_block_5:
Fixed runtime statement:

Persona Visual Runtime is a PersonaOS foundation execution layer.
It resolves and executes visual behavior under canonical PersonaOS authority,
but it does not own Persona canonical truth and must not silently
promote render/session/cache/output/support artifacts into authority truth.

# ============================================================
# 3. RECOMMENDED INSERTION STRATEGY
# ============================================================

recommended_strategy:
1. add authority-boundary wording to 0200010 first
2. add role-correction wording to 0400006 second
3. ensure both files use the same non-authoritative output language
4. only after that, propagate the same wording into adjacent
   runtime/interface/security/operations documents

# ============================================================
# 4. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
These insertion texts are the first direct absorption candidates
for correcting and stabilizing VisualRuntime semantics inside PersonaOS.
They should be used to ensure that rendering and runtime execution
remain clearly subordinate to canonical PersonaOS authority.
