# ============================================================
# VISUAL RUNTIME SECURITY FILE-LEVEL INSERT MAP
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: foundation-reflection
subdomain: visual-runtime
owner: Boss
prepared_by: Zero

purpose:
Provides file-level insertion guidance for VisualRuntime-related
second-pass security absorption inside PersonaOS.

upstream_basis:
- 09_VISUAL_RUNTIME_SECURITY_INSERT_TEXT.md
- 14_VISUAL_RUNTIME_SECOND_PASS_ACTUAL_FILE_LEVEL_PATCH_MAP.md

# ============================================================
# 0. TARGET FILE SET
# ============================================================

targets:
- 100.security/100_PERSONA_APPLY_SECURITY.md
- 100.security/101_PERSONA_TRUSTED_CALLER_SECURITY.md
- 100.security/102_PERSONA_REPLAY_PROTECTION_SECURITY.md
- 100.security/103_PERSONA_SIGNATURE_VALIDATION_SECURITY.md
- 100.security/104_PERSONA_APPLY_AUDIT_SECURITY.md

main_goal:
Ensure security-layer wording does not collapse
render validation, asset availability, runtime readiness,
or local acceptance into canonical security verdict authority.

# ============================================================
# 1. 100_PERSONA_APPLY_SECURITY
# ============================================================

target_file:
100.security/100_PERSONA_APPLY_SECURITY.md

must_insert:
- protection-gate verdict vs render-local validation
- execution readiness is not protected-path clearance
- local acceptance is not canonical authorization

recommended_insertion_zone:
- after purpose/scope block if present
- or before rule/principle section
- or before current canonical status block

recommended_heading:
PROTECTION GATE VS EXECUTION-SIDE VALIDATION

recommended_payload_focus:
- render/runtime checks are local execution checks
- protected-path truth remains upstream
- security verdict authority is not delegated to render logic

priority:
highest among security targets

# ============================================================
# 2. 101_PERSONA_TRUSTED_CALLER_SECURITY
# ============================================================

target_file:
100.security/101_PERSONA_TRUSTED_CALLER_SECURITY.md

must_insert:
- trusted caller truth remains upstream from render execution
- renderer/session state is not caller trust truth
- host/runtime convenience must not mutate trusted-caller semantics

recommended_insertion_zone:
- after trusted-caller definition section
- or before caller validation rules
- or before current canonical status block

recommended_heading:
TRUSTED CALLER TRUTH VS RUNTIME CONVENIENCE

recommended_payload_focus:
- caller trust is canonical security semantics
- runtime-local readiness must not imply caller trust
- render-layer acceptance must not imply trusted-caller status

# ============================================================
# 3. 102_PERSONA_REPLAY_PROTECTION_SECURITY
# ============================================================

target_file:
100.security/102_PERSONA_REPLAY_PROTECTION_SECURITY.md

must_insert:
- render repetition is not canonical replay verdict
- renderer retries are not replay-judgment truth
- repeated execution attempts must remain execution-scoped

recommended_insertion_zone:
- after replay-protection definition section
- or before replay-detection rules
- or before current canonical status block

recommended_heading:
REPLAY VERDICT VS EXECUTION REPETITION

recommended_payload_focus:
- distinguish replay security semantics from renderer retries
- distinguish repeated visual execution from protection verdicts

# ============================================================
# 4. 103_PERSONA_SIGNATURE_VALIDATION_SECURITY
# ============================================================

target_file:
100.security/103_PERSONA_SIGNATURE_VALIDATION_SECURITY.md

must_insert:
- signature validation truth remains upstream
- render validation must not be confused with signature truth
- local asset/input acceptance is not signature success

recommended_insertion_zone:
- after signature-validation semantics section
- or before signature verification rules
- or before current canonical status block

recommended_heading:
SIGNATURE VALIDATION VS LOCAL EXECUTION ACCEPTANCE

recommended_payload_focus:
- signature truth is canonical security truth
- renderer-local acceptance is only execution readiness
- asset/input usability does not imply signature verification

priority:
second highest among security targets

# ============================================================
# 5. 104_PERSONA_APPLY_AUDIT_SECURITY
# ============================================================

target_file:
100.security/104_PERSONA_APPLY_AUDIT_SECURITY.md

must_insert:
- audit-visible security traces remain evidence
- render/runtime traces are not themselves security truth
- support evidence must not silently replace verdict records

recommended_insertion_zone:
- after audit/security evidence semantics
- or before trace/evidence model section
- or before current canonical status block

recommended_heading:
SECURITY EVIDENCE VS SECURITY VERDICT

recommended_payload_focus:
- audit evidence is referenceable but non-authoritative
- render-side evidence must not overclaim security truth
- support traces are not verdict records

# ============================================================
# 6. SHARED INSERT RULES
# ============================================================

shared_rules_to_repeat_or_adapt:
- protection-gate verdict vs render-local validation
- authorization vs asset availability
- trusted-path truth vs runtime convenience
- signature truth vs local acceptance
- audit evidence vs verdict authority

shared_wording_rule:
Security wording must remain protection-scoped.
Execution readiness, render validity,
and asset usability must remain explicitly non-authoritative.

# ============================================================
# 7. PREFERRED WORDING SHIFTS
# ============================================================

avoid:
- authorized
- verified
- secure
- trusted
- approved
- cleared

prefer_when_execution_only:
- renderer-valid
- asset-available
- runtime-ready
- execution-ready
- local validation passed
- input usable for rendering
- protected-path verification still required
- authorization not implied

# ============================================================
# 8. PATCH ORDER
# ============================================================

recommended_patch_order:
1. 100_PERSONA_APPLY_SECURITY.md
2. 103_PERSONA_SIGNATURE_VALIDATION_SECURITY.md
3. 101_PERSONA_TRUSTED_CALLER_SECURITY.md
4. 104_PERSONA_APPLY_AUDIT_SECURITY.md
5. 102_PERSONA_REPLAY_PROTECTION_SECURITY.md

reason:
Apply-security and signature-validation wording carry
the highest risk of execution validation being mistaken
for canonical security truth.

# ============================================================
# 9. COMPLETION CHECK
# ============================================================

completion_check:
- no render validation wording sounds like canonical verdict
- no asset availability wording sounds like authorization truth
- no session/runtime readiness wording sounds like protected-path clearance
- no audit/security evidence wording sounds like verdict authority
- replay wording stays clearly separate from execution repetition

# ============================================================
# 10. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
This file-level insert map defines where and how
VisualRuntime non-authoritative execution wording
should be absorbed into PersonaOS security documents.
It should be used as the direct basis for actual security-layer
insertion or replacement work.
