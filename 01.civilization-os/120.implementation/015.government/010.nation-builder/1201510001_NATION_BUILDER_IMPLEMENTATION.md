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
