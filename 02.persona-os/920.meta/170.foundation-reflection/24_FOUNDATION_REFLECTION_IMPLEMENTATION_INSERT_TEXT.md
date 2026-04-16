# ============================================================
# PERSONA OS FOUNDATION REFLECTION IMPLEMENTATION INSERT TEXT
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: foundation-reflection
owner: Boss
prepared_by: Zero

purpose:
Provides insertion-ready implementation-layer reinforcement text
for VisualRuntime-related non-authoritative execution rules
inside PersonaOS.

# ============================================================
# 1. CORE IMPLEMENTATION RULE
# ============================================================

recommended_heading:
VISUALRUNTIME IMPLEMENTATION AUTHORITY SEPARATION

recommended_text:
Implementation logic related to VisualRuntime must preserve
a strict separation between canonical truth
and execution-side artifacts.

Local implementation behavior may handle:
- canonical input references
- resolved execution plans
- runtime/session state
- cache entries
- rendered/output artifacts
- fallback behavior
- diagnostics/support traces

However, these must not be silently promoted into:
- canonical visual truth
- Persona identity truth
- Persona state truth
- growth truth
- snapshot authority
- security verdict truth
- governance decision truth
- committed mutation truth

# ============================================================
# 2. CACHE AND PERSISTENCE RULE
# ============================================================

recommended_heading:
CACHE AND PERSISTENCE MUST REMAIN NON-AUTHORITATIVE

recommended_text:
Implementation documents must explicitly state that
local cache and local persistence are non-authoritative by default.

The following promotions are prohibited:

- cached render result -> canonical visual truth
- persisted runtime state -> Persona state authority
- locally retained output -> snapshot authority
- replayed cached result -> committed mutation truth

If a canonical adoption path exists,
it must be defined separately and explicitly.
Implementation convenience alone does not authorize promotion.

# ============================================================
# 3. EXECUTION STATUS RULE
# ============================================================

recommended_heading:
EXECUTION STATUS VS AUTHORITY STATUS

recommended_text:
Implementation-facing status vocabularies must keep these distinct:

execution-side:
- accepted
- resolved
- prepared
- executed
- displayed
- diagnosed

authority-side:
- committed
- authoritative
- security-cleared
- governance-cleared

The following collapses are prohibited:

- executed = committed
- displayed = authoritative
- local validation passed = security-cleared
- display-visible = governance-cleared
- diagnosed = authority record

# ============================================================
# 4. FALLBACK AND LOCAL VALIDATION RULE
# ============================================================

recommended_heading:
FALLBACK AND LOCAL VALIDATION ARE EXECUTION-SIDE ONLY

recommended_text:
Fallback behavior, retry behavior,
renderer-local acceptance, and runtime readiness
must remain execution-side semantics.

They may describe:
- usability
- resilience
- degraded execution
- recoverability
- local acceptance for rendering

But they must not be described as:
- security verdict
- governance decision
- canonical completion
- canonical rejection
- truth ownership

# ============================================================
# 5. SUPPORT TRACE RULE
# ============================================================

recommended_heading:
SUPPORT TRACES ARE NOT AUTHORITY RECORDS

recommended_text:
Implementation documents must explicitly separate
support/debug traces from authority records.

Diagnostics, logs, traces, runtime anomalies,
and support-side recovery notes
may be implementation-support evidence,
but they must not replace:
- mutation records
- security verdict records
- governance records
- canonical truth records

# ============================================================
# 6. SHORT FIXED IMPLEMENTATION STATEMENT
# ============================================================

recommended_heading:
FIXED IMPLEMENTATION STATEMENT

recommended_text:
VisualRuntime-related implementation behavior inside PersonaOS
must remain explicitly non-authoritative.
Implementation may execute, cache, display, retry,
diagnose, and persist execution-side artifacts,
but it must not silently convert those artifacts into authority truth.

# ============================================================
# 7. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
This insert text should be absorbed into implementation-layer documents
to ensure that actual execution logic cannot reintroduce
truth-owner drift after reflection stabilization.
