# ============================================================
# VISUAL RUNTIME SECOND PASS ACTUAL FILE-LEVEL PATCH MAP
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: foundation-reflection
subdomain: visual-runtime
owner: Boss
prepared_by: Zero

purpose:
Maps the second-pass VisualRuntime reinforcement rules
to concrete existing PersonaOS canonical files
in interface, security, and operations layers.

upstream_basis:
- 07_VISUAL_RUNTIME_SECOND_PASS_ABSORPTION_MAP.md
- 08_VISUAL_RUNTIME_INTERFACE_INSERT_TEXT.md
- 09_VISUAL_RUNTIME_SECURITY_INSERT_TEXT.md
- 10_VISUAL_RUNTIME_OPERATIONS_INSERT_TEXT.md
- 02_FOUNDATION_REFLECTION_SECOND_PASS_INTEGRATED_SUMMARY.md
- 03_FOUNDATION_REFLECTION_SECOND_PASS_EXECUTION_RECORD.md

# ============================================================
# 0. SECOND PASS TARGET SET
# ============================================================

interface_targets:
- 090.interface/090_PERSONA_APPLY_REQUEST_INTERFACE.md
- 090.interface/091_PERSONA_APPLY_RESPONSE_INTERFACE.md
- 090.interface/092_PERSONA_REJECT_RESPONSE_INTERFACE.md
- 090.interface/093_PERSONA_APPLY_STATUS_INTERFACE.md

security_targets:
- 100.security/100_PERSONA_APPLY_SECURITY.md
- 100.security/101_PERSONA_TRUSTED_CALLER_SECURITY.md
- 100.security/102_PERSONA_REPLAY_PROTECTION_SECURITY.md
- 100.security/103_PERSONA_SIGNATURE_VALIDATION_SECURITY.md
- 100.security/104_PERSONA_APPLY_AUDIT_SECURITY.md

operations_targets:
- 070.operations/070_PERSONA_APPLY_OPERATIONS.md
- 070.operations/071_PERSONA_REJECT_INVESTIGATION_OPERATIONS.md
- 070.operations/074_PERSONA_APPLY_AUDIT_OPERATIONS.md
- 070.operations/075_PERSONA_ACCEPTANCE_HEALTHCHECK_OPERATIONS.md

# ============================================================
# 1. INTERFACE FILE MAP
# ============================================================

# ------------------------------------------------------------
# 1.1 090_PERSONA_APPLY_REQUEST_INTERFACE
# ------------------------------------------------------------

target_file:
090.interface/090_PERSONA_APPLY_REQUEST_INTERFACE.md

must_absorb:
- canonical reference vs execution-side request distinction
- render/input-facing request must not imply commit
- request acceptance must not imply canonical truth mutation
- renderer-facing usability wording must remain non-authoritative

why_here:
This file is the first place where payload semantics
can overclaim what a render/input-side request means.

# ------------------------------------------------------------
# 1.2 091_PERSONA_APPLY_RESPONSE_INTERFACE
# ------------------------------------------------------------

target_file:
090.interface/091_PERSONA_APPLY_RESPONSE_INTERFACE.md

must_absorb:
- response returned vs canonical completion
- output/display-success wording must not imply authoritative truth
- render-related response fields must stay execution-scoped
- canonical confirmation must remain explicit if present

why_here:
Response wording is one of the strongest leak points
for false completion semantics.

# ------------------------------------------------------------
# 1.3 092_PERSONA_REJECT_RESPONSE_INTERFACE
# ------------------------------------------------------------

target_file:
090.interface/092_PERSONA_REJECT_RESPONSE_INTERFACE.md

must_absorb:
- reject wording must distinguish security/governance/canonical rejection
  from render/runtime usability failure
- diagnostics-visible failure is not automatically authority verdict
- local execution rejection wording must remain scoped

why_here:
Rejection semantics can easily blur support failures
with authority-layer rejections.

# ------------------------------------------------------------
# 1.4 093_PERSONA_APPLY_STATUS_INTERFACE
# ------------------------------------------------------------

target_file:
090.interface/093_PERSONA_APPLY_STATUS_INTERFACE.md

must_absorb:
- canonical commit vs render executed vs output displayed
- status labels must not overclaim canonical truth
- renderer-valid vs security-cleared distinction
- display-visible vs governance-cleared distinction where applicable

why_here:
This is likely the highest-load-bearing interface file
for stage-separation wording.

# ============================================================
# 2. SECURITY FILE MAP
# ============================================================

# ------------------------------------------------------------
# 2.1 100_PERSONA_APPLY_SECURITY
# ------------------------------------------------------------

target_file:
100.security/100_PERSONA_APPLY_SECURITY.md

must_absorb:
- render/runtime validation is not security verdict
- execution readiness is not protected-path clearance
- local acceptance is not canonical authorization

why_here:
This is the broadest security document and should carry
the main render-vs-security separation statement.

# ------------------------------------------------------------
# 2.2 101_PERSONA_TRUSTED_CALLER_SECURITY
# ------------------------------------------------------------

target_file:
100.security/101_PERSONA_TRUSTED_CALLER_SECURITY.md

must_absorb:
- trusted caller truth remains upstream from render execution
- local renderer/session state must not be read as caller trust
- host/runtime convenience must not mutate caller trust semantics

why_here:
Trusted caller wording is especially vulnerable to runtime overread.

# ------------------------------------------------------------
# 2.3 102_PERSONA_REPLAY_PROTECTION_SECURITY
# ------------------------------------------------------------

target_file:
100.security/102_PERSONA_REPLAY_PROTECTION_SECURITY.md

must_absorb:
- runtime repetition/render repetition is not equivalent
  to replay-verdict truth
- renderer retries or repeated execution attempts
  must not be confused with canonical replay judgment

why_here:
Replay-related wording can be overextended
to execution repetition if not constrained.

# ------------------------------------------------------------
# 2.4 103_PERSONA_SIGNATURE_VALIDATION_SECURITY
# ------------------------------------------------------------

target_file:
100.security/103_PERSONA_SIGNATURE_VALIDATION_SECURITY.md

must_absorb:
- signature validation truth remains upstream
- render validation must not be confused with signature truth
- local asset/input acceptance is not signature success

why_here:
This is the strongest candidate for preventing
local validation from sounding like security authority.

# ------------------------------------------------------------
# 2.5 104_PERSONA_APPLY_AUDIT_SECURITY
# ------------------------------------------------------------

target_file:
100.security/104_PERSONA_APPLY_AUDIT_SECURITY.md

must_absorb:
- audit-visible security traces remain evidence
- render-side or runtime-side traces are not themselves security truth
- support evidence must not silently replace verdict records

why_here:
This is the bridge file where security and evidence language can blur.

# ============================================================
# 3. OPERATIONS FILE MAP
# ============================================================

# ------------------------------------------------------------
# 3.1 070_PERSONA_APPLY_OPERATIONS
# ------------------------------------------------------------

target_file:
070.operations/070_PERSONA_APPLY_OPERATIONS.md

must_absorb:
- diagnostics/logs are support evidence only
- render-side issues are not canonical result truth
- execution observability must remain non-authoritative

why_here:
This is likely the primary operations file for broad support wording.

# ------------------------------------------------------------
# 3.2 071_PERSONA_REJECT_INVESTIGATION_OPERATIONS
# ------------------------------------------------------------

target_file:
070.operations/071_PERSONA_REJECT_INVESTIGATION_OPERATIONS.md

must_absorb:
- investigation evidence vs authority rejection distinction
- render/runtime anomalies do not automatically imply
  governance/security/canonical reject truth
- local failure traces must remain scoped evidence

why_here:
Investigation documents are prone to turning symptoms into verdicts.

# ------------------------------------------------------------
# 3.3 074_PERSONA_APPLY_AUDIT_OPERATIONS
# ------------------------------------------------------------

target_file:
070.operations/074_PERSONA_APPLY_AUDIT_OPERATIONS.md

must_absorb:
- audit traces are evidence, not truth ownership
- render logs and support traces must not be read as mutation truth
- output/display events are not canonical authority records

why_here:
Audit wording needs especially strong non-authoritative framing.

# ------------------------------------------------------------
# 3.4 075_PERSONA_ACCEPTANCE_HEALTHCHECK_OPERATIONS
# ------------------------------------------------------------

target_file:
070.operations/075_PERSONA_ACCEPTANCE_HEALTHCHECK_OPERATIONS.md

must_absorb:
- healthcheck success is not canonical completion
- render readiness/performance health is not authority truth
- operational healthy state is not governance/security/canonical pass

why_here:
Healthcheck wording often overclaims readiness as correctness.

# ============================================================
# 4. RECOMMENDED EXECUTION ORDER
# ============================================================

recommended_order:
1. 093_PERSONA_APPLY_STATUS_INTERFACE.md
2. 091_PERSONA_APPLY_RESPONSE_INTERFACE.md
3. 100_PERSONA_APPLY_SECURITY.md
4. 103_PERSONA_SIGNATURE_VALIDATION_SECURITY.md
5. 070_PERSONA_APPLY_OPERATIONS.md
6. 074_PERSONA_APPLY_AUDIT_OPERATIONS.md
7. then remaining files

reason:
These six files carry the highest risk of status, validation,
audit, and output wording drifting into authority semantics.

# ============================================================
# 5. SHARED DO-NOT-LOSE RULES
# ============================================================

must_preserve:
- render executed is not authoritative truth
- output displayed is not canonical completion
- renderer-valid is not security-cleared
- diagnostics are evidence, not authority
- logs are support traces, not verdict records
- interface status must not overclaim canonical truth

# ============================================================
# 6. NEXT DOCUMENTS TO CREATE
# ============================================================

next_documents:
- 15_VISUAL_RUNTIME_INTERFACE_FILE_LEVEL_INSERT_MAP.md
- 16_VISUAL_RUNTIME_SECURITY_FILE_LEVEL_INSERT_MAP.md
- 17_VISUAL_RUNTIME_OPERATIONS_FILE_LEVEL_INSERT_MAP.md

# ============================================================
# 7. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
This map converts second-pass area-level planning into concrete
file-level absorption targets.
It should be used as the basis for preparing exact insertion
or replacement plans in PersonaOS interface, security,
and operations canonical documents.
