# ============================================================
# PERSONA OS FOUNDATION REFLECTION SECOND PASS PATCH VERIFICATION NOTE
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: foundation-reflection
owner: Boss
prepared_by: Zero

purpose:
Provides a verification note template and result structure
for checking the actual second-pass VisualRuntime-related patches
applied to interface, security, and operations files.

# ============================================================
# 0. VERIFICATION SCOPE
# ============================================================

verification_scope:
- 090.interface/093_PERSONA_APPLY_STATUS_INTERFACE.md
- 090.interface/091_PERSONA_APPLY_RESPONSE_INTERFACE.md
- 090.interface/090_PERSONA_APPLY_REQUEST_INTERFACE.md
- 090.interface/092_PERSONA_REJECT_RESPONSE_INTERFACE.md
- 100.security/100_PERSONA_APPLY_SECURITY.md
- 100.security/103_PERSONA_SIGNATURE_VALIDATION_SECURITY.md
- 100.security/101_PERSONA_TRUSTED_CALLER_SECURITY.md
- 100.security/102_PERSONA_REPLAY_PROTECTION_SECURITY.md
- 100.security/104_PERSONA_APPLY_AUDIT_SECURITY.md
- 070.operations/070_PERSONA_APPLY_OPERATIONS.md
- 070.operations/074_PERSONA_APPLY_AUDIT_OPERATIONS.md
- 070.operations/071_PERSONA_REJECT_INVESTIGATION_OPERATIONS.md
- 070.operations/075_PERSONA_ACCEPTANCE_HEALTHCHECK_OPERATIONS.md

verification_goal:
Confirm that second-pass reinforcement was inserted correctly
and that no VisualRuntime-related wording still overclaims authority.

# ============================================================
# 1. REQUIRED VERIFICATION QUESTIONS
# ============================================================

For each target file, verify:

1. insertion_exists
- expected inserted heading/body is present

2. insertion_count
- inserted heading appears exactly once

3. canonical_status_intact
- CURRENT CANONICAL STATUS section still exists

4. local_context_ok
- nearby wording still reads naturally
- no obvious contradiction with adjacent sections

5. authority_boundary_ok
- inserted text still clearly says non-authoritative execution/support

6. stage_separation_ok
- inserted text still clearly preserves stage separation where relevant

7. no_overclaim_remaining
- nearby wording does not still imply:
  - render executed = authoritative truth
  - output displayed = canonical completion
  - renderer-valid = security verdict
  - diagnostics = authority record

# ============================================================
# 2. EXPECTED INSERT HEADINGS
# ============================================================

expected_insert_headings:

for_093:
- STATUS AUTHORITY AND STAGE SEPARATION

for_091:
- RESPONSE STAGE AND NON-AUTHORITATIVE OUTPUT

for_090:
- REQUEST VS CANONICAL AUTHORITY SEPARATION

for_092:
- REJECTION SCOPE SEPARATION

for_100:
- PROTECTION GATE VS EXECUTION-SIDE VALIDATION

for_103:
- SIGNATURE VALIDATION VS LOCAL EXECUTION ACCEPTANCE

for_101:
- TRUSTED CALLER TRUTH VS RUNTIME CONVENIENCE

for_102:
- REPLAY VERDICT VS EXECUTION REPETITION

for_104:
- SECURITY EVIDENCE VS SECURITY VERDICT

for_070:
- OPERATIONS EVIDENCE VS CANONICAL RESULT

for_074:
- AUDIT EVIDENCE VS AUTHORITY RECORD

for_071:
- INVESTIGATION EVIDENCE VS AUTHORITY REJECTION

for_075:
- HEALTHCHECK STATUS VS AUTHORITY STATUS

# ============================================================
# 3. VERIFICATION RESULT TEMPLATE
# ============================================================

result_template:

- file:
- insertion_exists:
- insertion_count:
- canonical_status_intact:
- local_context_ok:
- authority_boundary_ok:
- stage_separation_ok:
- no_overclaim_remaining:
- notes:

# ============================================================
# 4. MINIMUM PASS CONDITION
# ============================================================

minimum_pass_condition:
A file is PASS only if:
- insertion_exists = yes
- insertion_count = 1
- canonical_status_intact = yes
- authority_boundary_ok = yes
- no_overclaim_remaining = yes

If any of the above fail,
the file should be treated as NEEDS_FIX.

# ============================================================
# 5. SHARED RISKS TO CHECK
# ============================================================

shared_risks:
- duplicated inserted block
- broken section structure
- adjacent wording still overclaims authority
- inserted wording conflicts with old wording nearby
- stage separation weakened by nearby summaries
- support evidence wording sounds like verdict truth
- execution wording sounds like canonical truth ownership

# ============================================================
# 6. PRACTICAL REVIEW METHOD
# ============================================================

recommended_review_method:
1. grep the expected heading
2. count heading occurrences
3. inspect 30-80 lines around the insertion
4. inspect CURRENT CANONICAL STATUS remains present
5. inspect nearby wording for residual overclaim
6. record PASS or NEEDS_FIX for each file

# ============================================================
# 7. NEXT STEP AFTER VERIFICATION
# ============================================================

next_step_after_verification:
- create a PASS/NEEDS_FIX report
- fix any duplicated or conflicting insertions
- then proceed to implementation/development layer normalization
  or final foundation-reflection closure

# ============================================================
# 8. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
This verification note defines the minimum standard for accepting
the second-pass VisualRuntime-related patch execution inside PersonaOS.
No file should be treated as cleanly reinforced until the inserted block
exists exactly once, stage separation remains explicit,
and no authority overclaim remains nearby.
