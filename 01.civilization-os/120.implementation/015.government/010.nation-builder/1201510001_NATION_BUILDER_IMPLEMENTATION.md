# ============================================================
# NATION BUILDER IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: government.nation_builder
document_id: 1201510001

owner: Boss
prepared_by: Zero

core_records:
- nation_builder_draft
- nation_template
- nation_validation_result
- nation_publish_artifact

required_fields:
- regime_type
- power_structure
- zoning_profile
- market_tier_profile
- public_system_bundle

error_codes:
- NATION_BUILDER_INVALID
- NATION_TEMPLATE_INCOMPLETE
- NATION_VALIDATION_FAILED

## Exact Builder To Active State Separation
## Exact Builder To Active State Separation

Builder records are staged records.
Active government truth is runtime-owned canonical state.
Publish bridges the two.
Direct staged-to-active overwrite is prohibited.

## Exact Nation Builder Core Surface

Nation builder must explicitly separate:

- nation draft
- territory setup
- regime bundle
- zoning bundle
- market tier bundle
- public system bundle
- validation result
- approval state
- publish artifact
- activation link

## Exact Nation Builder Guard Rule

Nation activation is allowed only when:

- required draft sections exist
- validation passed
- required approval completed
- published artifact exists
- no conflicting active successor exists
- territory and zoning consistency passed
