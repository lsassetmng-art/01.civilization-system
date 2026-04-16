# ============================================================
# VISUAL RUNTIME SECOND PASS ABSORPTION MAP
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: foundation-reflection
subdomain: visual-runtime
owner: Boss
prepared_by: Zero

purpose:
Defines the second absorption pass for VisualRuntime-related
foundation reflection after the first architecture/runtime
reinforcement pass.

second_pass_scope:
- 090.interface
- 100.security
- 070.operations

upstream_basis:
- 01_VISUAL_RUNTIME_FOUNDATION_ABSORPTION_MAP.md
- 02_VISUAL_RUNTIME_PRIMARY_INSERT_TEXTS.md
- 03_VISUAL_RUNTIME_CHAPTER_LEVEL_PATCH_DRAFTS.md
- 04_VISUAL_RUNTIME_INSERTION_POSITION_MEMO.md
- 05_VISUAL_RUNTIME_0400006_REPLACEMENT_TEXT.md
- 06_RENDERING_ARCHITECTURE_0200010_INSERT_TEXT.md
- 01_FOUNDATION_REFLECTION_EXECUTION_RECORD.md

# ============================================================
# 1. WHY SECOND PASS IS NEEDED
# ============================================================

first_pass_focus:
- visual architecture
- rendering architecture
- runtime architecture
- visual runtime
- engine runtime
- runtime-layer stage separation

remaining_risk_after_first_pass:
Even if architecture and runtime wording are corrected,
VisualRuntime can still be over-read indirectly through:
- interface status wording
- security wording
- operations and diagnostics wording

therefore_second_pass_goal:
Propagate the same non-authoritative execution rule into
interface, security, and operations layers.

# ============================================================
# 2. INTERFACE ABSORPTION GOAL
# ============================================================

target_area:
- 090.interface/* related to visual/runtime/render/input/output

must_absorb:
- canonical input reference vs resolved render input
- render executed vs canonical commit
- output displayed vs authoritative truth
- renderer-valid vs security-cleared
- render-visible vs governance-cleared where applicable
- display state vs Persona state authority

must_prevent:
- UI wording that overclaims canonical completion
- output status that sounds authoritative
- render-ready wording that implies commit success
- display success wording that implies truth ownership

recommended_interface_rule:
Any visual-runtime-facing interface must preserve stage separation
and must not serialize render/display success
as Persona canonical truth.

# ============================================================
# 3. SECURITY ABSORPTION GOAL
# ============================================================

target_area:
- 100.security/* related to visual input, asset access,
  protected visual paths, or runtime validation

must_absorb:
- render validation is not Persona security verdict
- asset availability is not canonical authorization
- session/runtime pass is not canonical protection-gate truth
- protected visual input paths still depend on Persona security truth

must_prevent:
- local validation -> security authority
- asset lookup success -> authorization success
- runtime convenience -> protection bypass
- renderer acceptance -> canonical security pass

recommended_security_rule:
VisualRuntime may participate in protected execution paths,
but security verdict authority remains outside render execution logic.

# ============================================================
# 4. OPERATIONS ABSORPTION GOAL
# ============================================================

target_area:
- 070.operations/* related to diagnostics, observability,
  retry/support traces, runtime logs, and operator visibility

must_absorb:
- render diagnostics are support data
- performance traces are support data
- render logs are not canonical truth
- operator-visible render issues are not authority records
- runtime observability must not overclaim commit/truth

must_prevent:
- diagnostics -> mutation truth
- logs -> governance truth
- support traces -> security truth
- performance success -> canonical completion

recommended_operations_rule:
Render diagnostics, logs, and operator-visible traces
must remain support evidence only.

# ============================================================
# 5. SECOND PASS FILE-TYPE QUESTIONS
# ============================================================

for_interface_docs:
ask:
- does this status describe canonical truth or render state
- does this label describe commit or display
- does this interface field expose reference or authority

for_security_docs:
ask:
- is this a protection-gate verdict or a local render check
- is this authorization or merely resource availability
- does this rule belong to security or to execution validation

for_operations_docs:
ask:
- is this evidence or authority
- is this diagnostics or canonical result
- is this observability or truth ownership

# ============================================================
# 6. RECOMMENDED ABSORPTION ORDER
# ============================================================

recommended_order:
1. 090.interface visual/runtime-related docs
2. 100.security visual/runtime-related docs
3. 070.operations visual/runtime-related docs

reason:
Interface wording is most likely to leak overclaim to users and developers.
Security comes next because render validation often gets confused
with protection truth.
Operations comes third because logs and diagnostics often drift into
authority-like language.

# ============================================================
# 7. SHARED NON-NEGOTIABLE RULES
# ============================================================

must_preserve:
- canonical visual truth remains upstream
- VisualRuntime remains non-authoritative
- render output remains non-authoritative
- runtime state remains disposable
- diagnostics remain support evidence
- render success does not equal canonical mutation
- display success does not equal authoritative truth

# ============================================================
# 8. NEXT DOCUMENTS TO CREATE
# ============================================================

next_documents:
- 08_VISUAL_RUNTIME_INTERFACE_INSERT_TEXT.md
- 09_VISUAL_RUNTIME_SECURITY_INSERT_TEXT.md
- 10_VISUAL_RUNTIME_OPERATIONS_INSERT_TEXT.md

# ============================================================
# 9. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
The second pass exists to prevent VisualRuntime semantics
from leaking back into authority language through interface,
security, and operations documents.
After first-pass architecture/runtime correction,
these three layers are the next required absorption targets.
