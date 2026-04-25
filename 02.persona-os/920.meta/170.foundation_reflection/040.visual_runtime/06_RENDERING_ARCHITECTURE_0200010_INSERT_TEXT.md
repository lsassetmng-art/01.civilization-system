# ============================================================
# RENDERING ARCHITECTURE 0200010 INSERT TEXT
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: foundation-reflection
subdomain: visual-runtime
owner: Boss
prepared_by: Zero

purpose:
Provides direct insertion-ready reinforcement text for:
- 020.architecture/0200010_PERSONA_RENDERING_ARCHITECTURE.md

insertion_mode:
This is not a full replacement.
It is a boundary-reinforcement insertion intended to preserve
the existing rendering specification richness while making
authority separation explicit.

# ============================================================
# 1. PRIMARY INSERTION BLOCK
# ============================================================

recommended_heading:
RENDER AUTHORITY BOUNDARY AND NON-AUTHORITATIVE OUTPUT

recommended_text:
Persona rendering inside PersonaOS shall preserve a strict authority
boundary between canonical visual truth and execution-stage rendering.

Canonical visual truth remains upstream from rendering.
It includes the authoritative visual inputs, canonical visual selectors,
composition meaning, and other canonical visual decisions
owned by PersonaOS.

Rendering architecture consumes those canonical inputs and resolves
execution-stage behavior such as:

- layer composition order
- anchor interpretation
- XY offset application
- autocenter and layout behavior
- rig and expression parameter application
- render-plan realization
- output generation

These execution-stage results are render artifacts,
not canonical visual truth.

Rendered output, intermediate layout state,
runtime adjustment state, runtime fallback behavior,
preview images, and display-ready visual products
must not silently replace canonical visual truth.

A successful render does not imply canonical mutation.
A displayed result does not imply authoritative truth.
A locally corrected render result does not become canonical visual truth
unless a separate canonical adoption path explicitly states so.

# ============================================================
# 2. EXECUTION-STAGE SEMANTICS BLOCK
# ============================================================

recommended_heading:
EXECUTION-STAGE RENDER SEMANTICS

recommended_text:
The rendering layer may resolve anchor points,
autocenter behavior, offset corrections,
layer composition instructions,
and other display-side realization behavior,
but these remain execution-stage semantics
under canonical input authority.

PersonaOS rendering must therefore explicitly distinguish:

- canonical visual input reference
- render plan resolution
- runtime render session state
- rendered output artifact
- diagnostics, performance, and support traces

The rendering layer may emit usable and correct outputs for runtime use,
but those outputs remain non-authoritative by default.

# ============================================================
# 3. PROHIBITED INTERPRETATIONS BLOCK
# ============================================================

recommended_heading:
PROHIBITED AUTHORITY PROMOTION

recommended_text:
The following interpretations are prohibited:

- rendered output = canonical visual truth
- preview success = canonical mutation
- local fallback rendering = canonical correctness
- display success = committed truth
- runtime correction = authority update
- render-local identifiers = Persona identity authority
- appearance deltas = committed growth truth
- cache or export artifacts = canonical snapshot authority

Rendering behavior may reflect canonical truth,
but it must not silently become canonical truth.

# ============================================================
# 4. SHORT FIXED STATEMENT BLOCK
# ============================================================

recommended_heading:
FIXED RENDERING STATEMENT

recommended_text:
PersonaOS rendering architecture is an execution architecture
under canonical visual authority.
It may resolve, compose, layout, and emit render artifacts,
but it must not silently convert render-time outputs,
runtime corrections, or display success into canonical truth.

# ============================================================
# 5. RECOMMENDED INSERTION POSITIONS
# ============================================================

preferred_position_1:
Immediately after:
# ============================================================
# RENDERING FLOW
# ============================================================

why_1:
This position is strongest for clarifying that flow-level render behavior
remains execution-stage semantics under canonical input authority.

preferred_position_2:
Immediately before:
# ============================================================
# CURRENT CANONICAL STATUS
# ============================================================

why_2:
This position is strongest for a final canonical boundary reinforcement
without breaking the existing specification narrative.

best_practical_strategy:
- insert PRIMARY INSERTION BLOCK and EXECUTION-STAGE SEMANTICS BLOCK
  after RENDERING FLOW
- insert SHORT FIXED STATEMENT BLOCK before CURRENT CANONICAL STATUS
- add PROHIBITED AUTHORITY PROMOTION either after EXECUTION-STAGE SEMANTICS
  or before CURRENT CANONICAL STATUS

# ============================================================
# 6. MINIMAL PATCH VERSION
# ============================================================

minimal_insert_text:
Canonical visual truth remains upstream from rendering.
Rendering resolves execution-stage behavior and emits render artifacts,
but rendered output, layout state, fallback behavior,
and display success remain non-authoritative by default
and must not silently replace canonical visual truth.

# ============================================================
# 7. PATCH APPLICATION ORDER
# ============================================================

recommended_patch_order:
1. insert primary authority-boundary block
2. insert execution-stage semantics block
3. insert prohibited-interpretations block
4. insert fixed rendering statement near status/summary area

reason:
This keeps the existing rendering spec intact
while progressively making the authority boundary unmistakable.

# ============================================================
# 8. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
This insert text should be treated as the first direct authority-boundary
reinforcement for 0200010_PERSONA_RENDERING_ARCHITECTURE.md.
Its purpose is not to reduce rendering detail,
but to ensure that detailed rendering behavior is never mistaken
for canonical truth ownership.
