# ============================================================
# VISUAL RUNTIME INTERFACE FILE-LEVEL INSERT MAP
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
second-pass interface absorption inside PersonaOS.

upstream_basis:
- 08_VISUAL_RUNTIME_INTERFACE_INSERT_TEXT.md
- 14_VISUAL_RUNTIME_SECOND_PASS_ACTUAL_FILE_LEVEL_PATCH_MAP.md

# ============================================================
# 0. TARGET FILE SET
# ============================================================

targets:
- 090.interface/090_PERSONA_APPLY_REQUEST_INTERFACE.md
- 090.interface/091_PERSONA_APPLY_RESPONSE_INTERFACE.md
- 090.interface/092_PERSONA_REJECT_RESPONSE_INTERFACE.md
- 090.interface/093_PERSONA_APPLY_STATUS_INTERFACE.md

main_goal:
Ensure interface-layer wording does not collapse
render/input/output/display status into canonical truth,
security truth, governance truth, or committed mutation truth.

# ============================================================
# 1. 090_PERSONA_APPLY_REQUEST_INTERFACE
# ============================================================

target_file:
090.interface/090_PERSONA_APPLY_REQUEST_INTERFACE.md

must_insert:
- request acceptance is not canonical commit
- canonical reference vs resolved render input
- execution-facing input usability is not authority truth

recommended_insertion_zone:
- after purpose/scope block if present
- or before request-field specification block
- or before current canonical status block

recommended_heading:
REQUEST VS CANONICAL AUTHORITY SEPARATION

recommended_payload_focus:
- request may carry canonical references
- request may carry execution-side selectors
- request acceptance does not imply commit success
- renderer-usable input does not imply canonical truth mutation

# ============================================================
# 2. 091_PERSONA_APPLY_RESPONSE_INTERFACE
# ============================================================

target_file:
090.interface/091_PERSONA_APPLY_RESPONSE_INTERFACE.md

must_insert:
- response returned vs canonical completion
- output/display success vs authoritative truth
- resolved/executed/displayed statuses remain execution-scoped

recommended_insertion_zone:
- after response purpose or semantics section
- before field/result semantics
- or before current canonical status block

recommended_heading:
RESPONSE STAGE AND NON-AUTHORITATIVE OUTPUT

recommended_payload_focus:
- response may report render-ready or render-executed state
- response must not overclaim commit unless explicit
- displayed output is not canonical truth
- diagnostics-visible result is not authority result

# ============================================================
# 3. 092_PERSONA_REJECT_RESPONSE_INTERFACE
# ============================================================

target_file:
090.interface/092_PERSONA_REJECT_RESPONSE_INTERFACE.md

must_insert:
- rejection scope separation
- render/runtime usability failure vs governance/security/canonical rejection
- support-visible failure vs authority-layer rejection

recommended_insertion_zone:
- after reject semantics block
- before error/status taxonomy
- or before current canonical status block

recommended_heading:
REJECTION SCOPE SEPARATION

recommended_payload_focus:
- distinguish authority rejection from execution rejection
- render inability does not automatically equal governance denial
- local failure symptoms remain scoped evidence/status

# ============================================================
# 4. 093_PERSONA_APPLY_STATUS_INTERFACE
# ============================================================

target_file:
090.interface/093_PERSONA_APPLY_STATUS_INTERFACE.md

must_insert:
- canonical commit vs render executed vs output displayed
- renderer-valid vs security-cleared
- display-visible vs governance-cleared where applicable
- execution status must not overclaim canonical truth

recommended_insertion_zone:
- after status semantics block
- before status enum/list
- or before current canonical status block

recommended_heading:
STATUS AUTHORITY AND STAGE SEPARATION

recommended_payload_focus:
- separate accepted / resolved / executed / displayed / diagnosed
- separate security-cleared from renderer-valid
- separate governance-cleared from display-visible
- canonical confirmation must remain explicit if present

priority:
highest among interface targets

# ============================================================
# 5. SHARED INSERT RULES
# ============================================================

shared_rules_to_repeat_or adapt:
- canonical visual input reference vs resolved render input
- render executed vs canonical commit
- output displayed vs authoritative truth
- diagnostics recorded vs canonical record
- renderer-valid vs security-cleared
- display-visible vs governance-cleared

shared_wording_rule:
Interface labels and payload semantics must remain execution-scoped
unless an explicit canonical authority record is being exposed.

# ============================================================
# 6. PREFERRED WORDING SHIFTS
# ============================================================

avoid:
- completed
- confirmed
- applied
- approved
- authorized
- current state

prefer_when_execution_only:
- request accepted
- render input resolved
- render ready
- render executed
- output displayed
- diagnostics recorded
- awaiting canonical confirmation where applicable
- renderer-valid
- display-visible

# ============================================================
# 7. PATCH ORDER
# ============================================================

recommended_patch_order:
1. 093_PERSONA_APPLY_STATUS_INTERFACE.md
2. 091_PERSONA_APPLY_RESPONSE_INTERFACE.md
3. 090_PERSONA_APPLY_REQUEST_INTERFACE.md
4. 092_PERSONA_REJECT_RESPONSE_INTERFACE.md

reason:
Status and response wording carry the greatest risk
of overclaiming canonical completion.

# ============================================================
# 8. COMPLETION CHECK
# ============================================================

completion_check:
- no interface field overclaims canonical truth by default
- no render/display status sounds like canonical completion
- no local execution readiness sounds like security verdict
- no display-visible status sounds like governance truth
- request/response/status/reject semantics stay stage-separated

# ============================================================
# 9. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
This file-level insert map defines where and how
VisualRuntime non-authoritative execution wording
should be absorbed into PersonaOS interface documents.
It should be used as the direct basis for actual interface-layer
insertion or replacement work.
