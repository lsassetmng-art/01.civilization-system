# ============================================================
# VISUAL RUNTIME INTERFACE INSERT TEXT
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: foundation-reflection
subdomain: visual-runtime
owner: Boss
prepared_by: Zero

purpose:
Provides insertion-ready interface-layer reinforcement text for
VisualRuntime-related interface documents inside PersonaOS.

target_area:
- 090.interface/* related to visual input, render status,
  display status, runtime-facing status, and host-facing contracts

# ============================================================
# 1. CORE INTERFACE RULE
# ============================================================

recommended_heading:
VISUAL RUNTIME INTERFACE AUTHORITY SEPARATION

recommended_text:
Any VisualRuntime-facing interface inside PersonaOS must preserve
a strict separation between canonical truth references
and execution-side visual status.

Interface wording must explicitly distinguish:

- canonical visual input reference
- resolved render input
- render-ready state
- render executed state
- output displayed state
- diagnostics/support-visible state

None of these execution-side states may be silently serialized
as Persona canonical truth.

# ============================================================
# 2. STAGE-SEPARATION INTERFACE RULE
# ============================================================

recommended_heading:
RENDER INTERFACE STAGE SEPARATION

recommended_text:
Visual-runtime-related interfaces must preserve stage separation.

At minimum, interface wording shall distinguish:

- input accepted
- security verified where applicable
- governance approved where applicable
- canonical mutation committed where relevant
- visual input resolved
- render executed
- output displayed
- diagnostics recorded

The following equivalences are prohibited:

- input accepted = canonical commit
- visual input resolved = canonical truth ownership
- render executed = authoritative truth
- output displayed = authoritative truth
- diagnostics recorded = canonical authority record

# ============================================================
# 3. DISPLAY AND STATUS WORDING RULE
# ============================================================

recommended_heading:
DISPLAY STATUS MUST NOT OVERCLAIM AUTHORITY

recommended_text:
User-facing and system-facing interface labels must not overclaim
canonical completion when they only describe execution-side state.

The following wording risks must be avoided:

- "completed" when only render executed
- "confirmed" when only output displayed
- "applied" when only render input resolved
- "authorized" when only renderer validation passed
- "approved" when only display eligibility is known
- "current state" when only runtime expression/display state is shown

Preferred wording should keep execution scope explicit, such as:

- render ready
- render executed
- display active
- visual output available
- diagnostics recorded
- awaiting canonical confirmation where applicable

# ============================================================
# 4. HOST / RENDERER / CANONICAL REFERENCE RULE
# ============================================================

recommended_heading:
HOST-VISIBLE DATA VS CANONICAL REFERENCE

recommended_text:
Interfaces that expose VisualRuntime-related information
must explicitly distinguish between:

- canonical reference supplied by PersonaOS
- derived display value
- runtime renderer state
- host-visible UI state
- support/debug trace

Host-visible display data may reference Persona truth,
but it does not become Persona truth merely by being displayed.

# ============================================================
# 5. PROHIBITED INTERFACE PROMOTIONS
# ============================================================

recommended_heading:
PROHIBITED INTERFACE PROMOTIONS

recommended_text:
The following promotions are prohibited in interface wording,
status models, and payload semantics:

- rendered output -> canonical visual truth
- display label -> Persona identity authority
- runtime expression state -> Persona lifecycle truth
- appearance delta -> committed growth truth
- render cache/export -> canonical snapshot authority
- renderer-valid -> Persona security verdict
- display-eligible -> Persona governance truth

# ============================================================
# 6. SHORT FIXED INTERFACE STATEMENT
# ============================================================

recommended_heading:
FIXED INTERFACE STATEMENT

recommended_text:
VisualRuntime-facing interfaces inside PersonaOS may expose
canonical references, resolved render inputs,
execution status, displayed output status,
and diagnostics/support visibility,
but they must not silently present execution-side status
as authoritative Persona truth.

# ============================================================
# 7. REVIEW QUESTIONS FOR INTERFACE DOCS
# ============================================================

review_questions:
- does this field describe canonical truth or render state
- does this label describe commit or display
- does this payload expose reference or authority
- does this status overclaim completion
- does this UI wording confuse execution success with truth ownership

# ============================================================
# 8. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
This insert text should be absorbed into VisualRuntime-related
PersonaOS interface documents to ensure that interface wording,
status design, and payload semantics do not overclaim authority
or collapse execution-stage success into canonical truth.
