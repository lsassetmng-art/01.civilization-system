# ============================================================
# APPLICATION COMMON COMPONENT ADDITIVE ENTRY TEMPLATE
# ============================================================

status: canonical
layer: application-common-components
domain: additive-entry-template
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This template is used to write a new additive-ledger entry
after a reusable component candidate has been evaluated.

It exists to standardize:
- additive candidate registration
- owner-side declaration
- promotion readiness expression
- reuse target recording
- residual local scope separation

# ============================================================
# 1. TEMPLATE
# ============================================================

### Component
<component name>

owner_side:
<PersonaOS common / BusinessOS common / Application common / OS-internal common>

status:
<promote-highest / promote-high / absorb-into-existing / os-internal-common / mapping-only / hold-as-candidate>

source_origin:
<source application / source os / source design work>

summary:
<short reusable meaning or capability summary>

core_capabilities:
- <capability 1>
- <capability 2>
- <capability 3>

expected_reuse:
- <reuse target 1>
- <reuse target 2>
- <reuse target 3>

overlap_with_existing:
- <existing common 1>
- <existing common 2>
- <none if truly independent>

residual_local_scope:
- <app-specific or os-specific remaining scope 1>
- <app-specific or os-specific remaining scope 2>

promotion_reason:
<why this should be promoted, absorbed, held, or kept internal>

next_action:
- reflect into integrated
- reflect into ledger
- reflect into matrix
- absorb into existing
- keep in additive ledger
- keep as os-internal common
- map only

notes:
<optional notes>

# ============================================================
# 2. EXAMPLE
# ============================================================

### Component
Cross-app Launch Contract Common

owner_side:
Application common

status:
promote-highest

source_origin:
PocketSecretary / EstimateCreator

summary:
Defines the shared contract for app-to-app launch and handoff.

core_capabilities:
- scheme/path semantics
- required / optional params
- handoff source semantics
- fail-closed contract rules
- launch success != business success distinction

expected_reuse:
- PocketSecretary
- EstimateCreator
- NameCardManager
- future cross-app front surfaces

overlap_with_existing:
- Install Guidance / Cross-app Launch Common

residual_local_scope:
- launch button placement
- app-specific install guidance screen
- destination-specific navigation behavior

promotion_reason:
Reuse is already visible across multiple app surfaces,
and the contract layer is clearly separable from local UI.

next_action:
- reflect into integrated
- reflect into ledger
- reflect into matrix

notes:
Can absorb narrower deeplink-entry naming variants.

# ============================================================
# 3. SHORT ENTRY FORMAT
# ============================================================

short_format:
Use this when speed matters and a full block is unnecessary.

- component_name:
- owner_side:
- status:
- source_origin:
- summary:
- expected_reuse:
- overlap_with_existing:
- next_action:

# ============================================================
# 4. ENTRY QUALITY RULE
# ============================================================

entry_quality_rule:
Every additive entry should at minimum include:
- component name
- owner side
- status
- source origin
- summary
- expected reuse
- next action

avoid:
- app-specific full screen flow
- one-off UI details
- vague component names
- missing owner-side judgment
- promotion without overlap check

# ============================================================
# 5. RELATION TO OTHER FILES
# ============================================================

relation_to_other_files:
- 005_APPLICATION_COMMON_COMPONENT_PROMOTION_RULE.md
  defines how to judge promotion
- 006_APPLICATION_COMMON_COMPONENT_EVALUATION_TEMPLATE.md
  defines how to evaluate candidates
- this file defines how to register the evaluated candidate
  into additive-ledger style form

# ============================================================
# 6. CONCLUSION
# ============================================================

This file is the standard additive-entry writing template
for future common-component candidate registration.

# ============================================================
