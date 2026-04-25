# ============================================================
# VISUAL RUNTIME 0400006 REPLACEMENT TEXT
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: foundation-reflection
subdomain: visual-runtime
owner: Boss
prepared_by: Zero

purpose:
Provides direct replacement-ready text for the highest-risk parts of:
- 040.runtime/0400006_PERSONA_VISUAL_RUNTIME.md

replacement_targets:
- PURPOSE
- FLOW
- optional supporting clarification block between PURPOSE and FLOW

# ============================================================
# 1. PURPOSE REPLACEMENT
# ============================================================

target_section:
PURPOSE

current_risk:
The old wording can be over-read as if VisualRuntime owns
persona visual identity generation authority.

replacement_text:
Persona Visual Runtime is a PersonaOS-internal visual execution layer.

Its purpose is to consume canonical visual inputs,
resolve render-session behavior,
execute visual composition and display behavior,
and preserve execution-side render artifacts needed for runtime use.

Persona Visual Runtime does not own canonical visual truth.
It does not own Persona identity authority,
Persona state authority,
Persona growth authority,
Persona snapshot authority,
Persona governance truth,
Persona security gate truth,
or committed mutation truth.

VisualRuntime exists to execute canonical visual truth,
not to replace it.

# ============================================================
# 2. OPTIONAL SUPPORTING BLOCK
# ============================================================

target_position:
Insert immediately after PURPOSE and before FLOW.

recommended_heading:
RUNTIME STATE AND NON-AUTHORITATIVE EXECUTION

replacement_text:
Visual runtime state must remain explicitly disposable
and non-authoritative.

This includes:
- render session state
- animation and expression session state
- local asset-resolution state
- render buffers and caches
- display-ready state
- output preview state
- diagnostics and performance traces

These may be necessary for execution,
but they must not be interpreted as Persona canonical truth.

Render output does not become canonical visual truth
unless a separate canonical adoption path explicitly states so.

Local runtime convenience behavior must not silently promote:
- render output into canonical visual truth
- runtime expression state into Persona lifecycle truth
- appearance deltas into committed growth truth
- cache or export artifacts into canonical snapshot authority
- renderer validation into Persona security verdict
- display eligibility into Persona governance truth

# ============================================================
# 3. FLOW REPLACEMENT
# ============================================================

target_section:
FLOW

current_risk:
The old flow is too compressed and can be read as if
render success directly becomes canonical commit.

replacement_text:
canonical visual input resolved
↓
security verified where applicable
↓
governance approved where applicable
↓
render session prepared
↓
visual-compose executed
↓
client or host render executed
↓
output displayed or emitted
↓
diagnostics and support traces recorded
↓
canonical adoption only through explicit separate path if defined

# ============================================================
# 4. FLOW EXPLANATION BLOCK
# ============================================================

target_position:
Insert immediately after FLOW.

recommended_heading:
FLOW STAGE INTERPRETATION

replacement_text:
The visual runtime flow must preserve stage separation.

At minimum, the following distinctions shall remain explicit:

- canonical visual input resolved
- security verified where applicable
- governance approved where applicable
- render session prepared
- visual-compose executed
- render executed
- output displayed
- diagnostics recorded
- canonical adoption if explicitly defined elsewhere

The following equivalences are prohibited:

- input resolved = canonical mutation committed
- render executed = authoritative truth
- output displayed = authoritative truth
- diagnostics recorded = canonical authority record

VisualRuntime may execute and display canonical visual inputs,
but execution success is not identical to canonical truth ownership.

# ============================================================
# 5. SHORT FIXED STATEMENT
# ============================================================

target_position:
Near the end of the file, or near current status / summary area.

replacement_text:
Fixed statement:

Persona Visual Runtime is a PersonaOS foundation execution layer.
It resolves and executes visual behavior under canonical PersonaOS authority,
but it must not silently promote render, session, cache, output,
or diagnostics artifacts into authority truth.

# ============================================================
# 6. MINIMAL PATCH VERSION
# ============================================================

purpose_if_short_form_needed:
Persona Visual Runtime is a PersonaOS-internal visual execution layer.
It consumes canonical visual inputs and executes render behavior,
but it does not own canonical visual truth or any other Persona truth authority.

flow_if_short_form_needed:
canonical visual input resolved
↓
render session prepared
↓
visual-compose executed
↓
render executed
↓
output displayed
↓
diagnostics recorded
↓
no canonical adoption unless explicitly defined elsewhere

# ============================================================
# 7. PATCH APPLICATION ORDER
# ============================================================

recommended_patch_order:
1. replace PURPOSE
2. insert optional supporting block
3. replace FLOW
4. insert flow interpretation block
5. append short fixed statement near summary/status area

reason:
This order removes the biggest semantic risk first
and then restores stage separation and non-authoritative wording.

# ============================================================
# 8. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
This replacement text should be treated as the first direct correction
for 0400006_PERSONA_VISUAL_RUNTIME.md.
Its main goal is to stop VisualRuntime from being over-read
as a truth-owning layer and to firmly position it
as a PersonaOS-internal execution layer under canonical authority.
