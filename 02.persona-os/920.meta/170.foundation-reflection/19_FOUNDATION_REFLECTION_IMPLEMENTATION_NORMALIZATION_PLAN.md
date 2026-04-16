# ============================================================
# PERSONA OS FOUNDATION REFLECTION IMPLEMENTATION NORMALIZATION PLAN
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: foundation-reflection
owner: Boss
prepared_by: Zero

purpose:
Defines how VisualRuntime-related non-authoritative execution rules
must be propagated into the implementation layer of PersonaOS.

# ============================================================
# 0. CURRENT POSITION
# ============================================================

already_completed:
- first-pass architecture/runtime reflection
- second-pass interface/security/operations reflection
- second-pass structural verification
- second-pass structural closure handoff
- wording-only tuning preparation
- implementation/development normalization roadmap

current_phase:
implementation normalization

meaning:
Authority-boundary rules are already stabilized at design level.
Now they must be encoded into implementation-facing rules.

# ============================================================
# 1. IMPLEMENTATION NORMALIZATION GOAL
# ============================================================

goal:
Ensure that implementation-layer documents encode the already-fixed rule
that VisualRuntime is an internal execution layer,
not a truth-owning authority layer.

implementation_must_encode:
- execution artifact vs canonical truth separation
- runtime/session state vs canonical state separation
- render output vs canonical visual truth separation
- local validation vs security verdict separation
- diagnostics/support record vs authority record separation

# ============================================================
# 2. TARGET LAYER
# ============================================================

target_layer:
- 120.implementation

target_focus:
- cache behavior
- local persistence rules
- runtime fallback handling
- render result handling
- status vocabulary in implementation paths
- commit confirmation handling
- non-authoritative output handling

# ============================================================
# 3. REQUIRED IMPLEMENTATION RULES
# ============================================================

required_rules:

rule_1:
Local cache must be explicitly non-authoritative.

rule_2:
Render output must not be serialized as canonical visual truth
unless a separate canonical adoption path explicitly exists.

rule_3:
Runtime/session state must be treated as disposable execution state.

rule_4:
Local validation must not be described as security verdict truth.

rule_5:
Diagnostics/support traces must not be treated as authority records.

rule_6:
Implementation status vocabularies must preserve:
- accepted
- resolved
- executed
- displayed
- diagnostics recorded
as distinct from:
- committed
- authoritative
- security-cleared
- governance-cleared

# ============================================================
# 4. IMPLEMENTATION ANTI-PATTERNS
# ============================================================

must_reject:
- cache value reused as canonical truth
- render output persisted as truth by default
- execution success interpreted as commit success
- local validation interpreted as authorization
- runtime status interpreted as Persona state authority
- support logs interpreted as mutation result

# ============================================================
# 5. IMPLEMENTATION CHECKPOINTS
# ============================================================

checkpoints:
- cache semantics explicit
- output semantics explicit
- session disposal semantics explicit
- fallback semantics explicit
- authority owner explicit
- status vocabulary explicit
- no hidden promotion path from execution artifact to truth

# ============================================================
# 6. EXPECTED NEXT DOCUMENTS
# ============================================================

recommended_next_documents:
- implementation target file map
- implementation insert text
- implementation execution record

# ============================================================
# 7. RECOMMENDED NEXT STEP
# ============================================================

most_natural_next_step:
Create the development normalization plan next,
then split implementation normalization into
file-level targets and insert texts.

# ============================================================
# 8. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
This plan defines the implementation-layer normalization phase
after structural stabilization of VisualRuntime foundation reflection.
Its purpose is to ensure that implementation-facing rules
cannot silently reintroduce truth-owner drift.
