# ============================================================
# APPLICATION COMMON COMPONENT EVALUATION TEMPLATE
# ============================================================

status: canonical
layer: application-common-components
domain: evaluation-template
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This template is used when a newly discovered reusable component
candidate is brought into the application common-component workflow.

It exists to standardize:
- candidate interpretation
- owner-side judgment
- overlap check
- promotion decision
- residual local scope definition

# ============================================================
# 1. TEMPLATE
# ============================================================

candidate_name:
<write component name here>

source_origin:
<application / os / design work source>

raw_summary:
<short explanation of what the candidate is>

expected_reuse_targets:
- <target 1>
- <target 2>
- <target 3>

owner_side_candidate:
- PersonaOS common
- BusinessOS common
- Application common
- OS-internal common

primary_category:
<wording-resolution / routing / sync / review / gateway / draft / etc>

main_responsibilities:
- <responsibility 1>
- <responsibility 2>
- <responsibility 3>

non_responsibilities:
- <not responsible 1>
- <not responsible 2>

overlap_with_existing_common:
- none
- low
- medium
- high

likely_existing_overlap_targets:
- <existing common candidate 1>
- <existing common candidate 2>

residual_local_scope:
- <app-specific or os-specific remaining scope 1>
- <app-specific or os-specific remaining scope 2>

promotion_test_result:
- reuse beyond one source:
- owner side clarity:
- abstraction clarity:
- overlap manageable:
- residual separation clear:
- stable enough now:

classification_result:
- promote_to_fixed
- absorb_into_existing
- keep_as_additive_candidate
- classify_as_os_internal_common
- mapping_only
- keep_app_specific

reason:
<write concise reason here>

next_action:
- reflect into integrated
- reflect into ledger
- reflect into matrix
- keep in additive ledger
- map to existing common
- keep local only

# ============================================================
# 2. QUICK EXAMPLE
# ============================================================

candidate_name:
Secretary Wording Resolution Common

source_origin:
PocketSecretary

raw_summary:
Resolves stable meaning into persona/secretary-specific wording
without changing semantic intent.

expected_reuse_targets:
- PocketSecretary
- secretary-facing apps
- companion-facing apps

owner_side_candidate:
PersonaOS common

primary_category:
wording-resolution

main_responsibilities:
- persona style mapping
- message type to wording resolution
- fallback wording

non_responsibilities:
- final screen layout
- app-local visual timing

overlap_with_existing_common:
low

likely_existing_overlap_targets:
- Notification Semantics Common
- Companion Conversation Framing Common

residual_local_scope:
- final screen composition
- local emphasis and timing

promotion_test_result:
- reuse beyond one source: yes
- owner side clarity: yes
- abstraction clarity: yes
- overlap manageable: yes
- residual separation clear: yes
- stable enough now: yes

classification_result:
promote_to_fixed

reason:
The wording-resolution layer is reusable beyond one app
and is clearly separate from final UI layout.

next_action:
- reflect into integrated
- reflect into ledger
- reflect into matrix

# ============================================================
# 3. MINIMUM RULE
# ============================================================

minimum_rule:
No candidate should be promoted without at least:
- source_origin
- raw_summary
- owner_side_candidate
- main_responsibilities
- overlap_with_existing_common
- classification_result
- next_action

# ============================================================
# 4. CONCLUSION
# ============================================================

This template is the standard intake form
for future common-component candidate evaluation.

# ============================================================
