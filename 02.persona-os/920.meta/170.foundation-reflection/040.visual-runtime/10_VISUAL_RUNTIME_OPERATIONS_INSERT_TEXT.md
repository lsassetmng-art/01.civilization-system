# ============================================================
# VISUAL RUNTIME OPERATIONS INSERT TEXT
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: foundation-reflection
subdomain: visual-runtime
owner: Boss
prepared_by: Zero

purpose:
Provides insertion-ready operations-layer reinforcement text for
VisualRuntime-related operations, diagnostics, observability,
and support documents inside PersonaOS.

target_area:
- 070.operations/* related to diagnostics, observability,
  runtime logs, render logs, performance traces,
  retry/support traces, and operator-visible issues

# ============================================================
# 1. CORE OPERATIONS RULE
# ============================================================

recommended_heading:
VISUAL RUNTIME OPERATIONS SUPPORT IS NON-AUTHORITATIVE

recommended_text:
VisualRuntime-related diagnostics, logs, traces,
and operator-visible support data must remain
operations-support evidence only.

They may improve observability, troubleshooting,
recovery, and operator understanding,
but they do not become canonical Persona truth,
canonical visual truth, governance truth,
security verdict truth, or committed mutation truth.

# ============================================================
# 2. DIAGNOSTICS VS AUTHORITY RULE
# ============================================================

recommended_heading:
DIAGNOSTICS ARE EVIDENCE, NOT AUTHORITY

recommended_text:
PersonaOS operations documents must explicitly distinguish between:

- canonical truth
- canonical mutation result
- governance decision
- security verdict
- render/runtime diagnostics
- performance traces
- support-side logs
- operator-visible issue records

The following equivalences are prohibited:

- diagnostics trace = canonical result
- render log = canonical visual truth
- performance success = canonical completion
- failure trace = governance denial
- runtime error log = security verdict
- operator issue note = authority record

# ============================================================
# 3. PERFORMANCE AND TRACE RULE
# ============================================================

recommended_heading:
PERFORMANCE TRACES AND RENDER LOGS ARE SUPPORT DATA

recommended_text:
Performance measurements, frame timing data,
asset-resolution traces, fallback traces,
and render execution logs are support-side operational evidence.

They may indicate:
- execution health
- degradation
- instability
- fallback behavior
- display anomalies
- runtime bottlenecks

But they do not by themselves indicate:
- Persona canonical truth
- canonical mutation success
- authorization success
- governance approval
- snapshot authority
- visual truth ownership

# ============================================================
# 4. OPERATOR VISIBILITY RULE
# ============================================================

recommended_heading:
OPERATOR-VISIBLE ISSUES MUST NOT OVERCLAIM TRUTH

recommended_text:
Operator-visible render issues, support dashboards,
and runtime incident summaries must preserve scope.

They may say:
- render failed
- output not displayed
- diagnostics captured
- fallback used
- performance degraded
- retry or recovery may be required

They must not silently imply:
- Persona truth changed
- canonical visual truth failed
- governance denied
- security rejected
- committed mutation was reversed
- snapshot authority changed

# ============================================================
# 5. SUPPORT-STATE WORDING RULE
# ============================================================

recommended_heading:
SUPPORT STATUS MUST REMAIN SUPPORT STATUS

recommended_text:
Operations wording for VisualRuntime must keep support statuses
clearly separate from canonical authority statuses.

Preferred support-side wording includes:
- diagnostics recorded
- render issue observed
- output unavailable
- fallback used
- performance degraded
- operator attention required
- runtime recovery pending

The following overclaim wording should be avoided
unless a canonical source explicitly supports it:

- canonical failed
- truth invalid
- unauthorized output
- approval denied
- state reverted
- committed change rejected

# ============================================================
# 6. PROHIBITED OPERATIONS PROMOTIONS
# ============================================================

recommended_heading:
PROHIBITED OPERATIONS PROMOTIONS

recommended_text:
The following promotions are prohibited in operations wording,
status models, dashboards, traces, and support workflows:

- render diagnostics -> canonical mutation truth
- performance traces -> governance truth
- runtime logs -> security verdict
- output failure trace -> canonical visual truth failure
- support status -> Persona state authority
- operator-visible issue -> authority record

# ============================================================
# 7. SHORT FIXED OPERATIONS STATEMENT
# ============================================================

recommended_heading:
FIXED OPERATIONS STATEMENT

recommended_text:
VisualRuntime-related operations artifacts inside PersonaOS
are support evidence for observability and recovery.
They may describe execution behavior and render-side issues,
but they must not silently replace canonical truth,
security verdicts, governance decisions,
or committed mutation records.

# ============================================================
# 8. REVIEW QUESTIONS FOR OPERATIONS DOCS
# ============================================================

review_questions:
- is this evidence or authority
- is this diagnostics or canonical result
- is this performance data or truth ownership
- does this wording overclaim governance/security implications
- does this log/status imply more than the support layer actually knows

# ============================================================
# 9. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
This insert text should be absorbed into VisualRuntime-related
PersonaOS operations documents to ensure that diagnostics,
logs, performance traces, and operator-visible support records
remain clearly non-authoritative and never masquerade
as canonical truth or verdict authority.
