# ============================================================
# VISUAL RUNTIME OPERATIONS FILE-LEVEL INSERT MAP
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
second-pass operations absorption inside PersonaOS.

upstream_basis:
- 10_VISUAL_RUNTIME_OPERATIONS_INSERT_TEXT.md
- 14_VISUAL_RUNTIME_SECOND_PASS_ACTUAL_FILE_LEVEL_PATCH_MAP.md

# ============================================================
# 0. TARGET FILE SET
# ============================================================

targets:
- 070.operations/070_PERSONA_APPLY_OPERATIONS.md
- 070.operations/071_PERSONA_REJECT_INVESTIGATION_OPERATIONS.md
- 070.operations/074_PERSONA_APPLY_AUDIT_OPERATIONS.md
- 070.operations/075_PERSONA_ACCEPTANCE_HEALTHCHECK_OPERATIONS.md

main_goal:
Ensure operations-layer wording does not collapse
diagnostics, logs, performance traces, support statuses,
or operator-visible issues into canonical truth
or verdict authority.

# ============================================================
# 1. 070_PERSONA_APPLY_OPERATIONS
# ============================================================

target_file:
070.operations/070_PERSONA_APPLY_OPERATIONS.md

must_insert:
- diagnostics/logs are support evidence only
- render-side issues are not canonical result truth
- execution observability remains non-authoritative
- output/display events are not canonical mutation truth

recommended_insertion_zone:
- after purpose/scope block if present
- or before operational flow/rules section
- or before current canonical status block

recommended_heading:
OPERATIONS EVIDENCE VS CANONICAL RESULT

recommended_payload_focus:
- apply-operation observability is support-side
- render/runtime traces are evidence, not truth
- success/failure wording must remain scoped to operations knowledge

priority:
highest among operations targets

# ============================================================
# 2. 071_PERSONA_REJECT_INVESTIGATION_OPERATIONS
# ============================================================

target_file:
070.operations/071_PERSONA_REJECT_INVESTIGATION_OPERATIONS.md

must_insert:
- investigation evidence vs authority rejection distinction
- render/runtime anomalies do not automatically imply
  governance/security/canonical reject truth
- local failure traces remain scoped evidence

recommended_insertion_zone:
- after investigation purpose or evidence scope section
- or before investigation rule set
- or before current canonical status block

recommended_heading:
INVESTIGATION EVIDENCE VS AUTHORITY REJECTION

recommended_payload_focus:
- symptoms are not verdicts
- runtime anomalies are not automatically reject truth
- operator investigation must not overclaim authority knowledge

# ============================================================
# 3. 074_PERSONA_APPLY_AUDIT_OPERATIONS
# ============================================================

target_file:
070.operations/074_PERSONA_APPLY_AUDIT_OPERATIONS.md

must_insert:
- audit traces are evidence, not truth ownership
- render logs and support traces are not mutation truth
- output/display events are not canonical authority records
- audit visibility must not overclaim verdict authority

recommended_insertion_zone:
- after audit evidence semantics
- or before audit record/rule section
- or before current canonical status block

recommended_heading:
AUDIT EVIDENCE VS AUTHORITY RECORD

recommended_payload_focus:
- audit trails are referenceable but non-authoritative
- render-related traces must remain support evidence
- visibility is not truth ownership

priority:
second highest among operations targets

# ============================================================
# 4. 075_PERSONA_ACCEPTANCE_HEALTHCHECK_OPERATIONS
# ============================================================

target_file:
070.operations/075_PERSONA_ACCEPTANCE_HEALTHCHECK_OPERATIONS.md

must_insert:
- healthcheck success is not canonical completion
- render readiness/performance health is not authority truth
- operational healthy state is not governance/security/canonical pass
- recovery/readiness status remains support-scoped

recommended_insertion_zone:
- after healthcheck semantics section
- or before healthcheck signal/rule block
- or before current canonical status block

recommended_heading:
HEALTHCHECK STATUS VS AUTHORITY STATUS

recommended_payload_focus:
- healthy execution path is not canonical truth confirmation
- readiness does not imply commit/security/governance success
- degraded status is not automatically authority failure

# ============================================================
# 5. SHARED INSERT RULES
# ============================================================

shared_rules_to_repeat_or_adapt:
- diagnostics are evidence, not authority
- performance traces are support data
- render logs are not canonical truth
- support status is not canonical result
- observability wording must not overclaim commit/truth
- operator-visible issue is not authority record

shared_wording_rule:
Operations wording must remain support-scoped.
Diagnostics, traces, logs, and health signals
must remain explicitly non-authoritative.

# ============================================================
# 6. PREFERRED WORDING SHIFTS
# ============================================================

avoid:
- canonical failed
- truth invalid
- unauthorized output
- approval denied
- committed change failed
- state reverted
- authority record
- confirmed failure

prefer_when_support_only:
- diagnostics recorded
- render issue observed
- output unavailable
- fallback used
- performance degraded
- operator attention required
- runtime recovery pending
- support evidence recorded
- execution-side anomaly observed
- health signal degraded
- readiness not yet confirmed canonically

# ============================================================
# 7. PATCH ORDER
# ============================================================

recommended_patch_order:
1. 070_PERSONA_APPLY_OPERATIONS.md
2. 074_PERSONA_APPLY_AUDIT_OPERATIONS.md
3. 075_PERSONA_ACCEPTANCE_HEALTHCHECK_OPERATIONS.md
4. 071_PERSONA_REJECT_INVESTIGATION_OPERATIONS.md

reason:
Apply-operations and audit-operations carry the highest risk
of logs and traces drifting into authority semantics.

# ============================================================
# 8. COMPLETION CHECK
# ============================================================

completion_check:
- no diagnostics wording sounds authoritative
- no render/performance trace wording overclaims canonical completion
- no runtime log wording overclaims security/governance truth
- no healthcheck wording overclaims authority pass/fail
- support status remains clearly support status
- investigation wording keeps evidence separate from verdicts

# ============================================================
# 9. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
This file-level insert map defines where and how
VisualRuntime non-authoritative execution wording
should be absorbed into PersonaOS operations documents.
It should be used as the direct basis for actual operations-layer
insertion or replacement work.
