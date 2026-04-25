# APP_COMMON REVIEWED CANONICAL DDL TIER2 TIER3 PLAN

status: canonical
system: CommonOS
layer: model
schema: app_common

## Tier2 candidate tables
- density_preset
- layout_spacing_preset
- component_family_group
- component_usage_template
- screen_state_template
- review_correction_pattern_template
- detail_panel_template
- sync_status_field_rule
- attachment_presentation_rule
- export_job_presentation_rule
- import_job_presentation_rule
- warning_presentation_rule
- success_presentation_rule
- runtime_template_registry
- compatibility_notice_rule
- component_status_history
- component_reflection_reference

## Tier3 candidate tables
- rollout_order_template
- component_adoption_review_template
- runtime_template_registry deepening by platform
- review_correction_pattern_template deep split
- compatibility_notice_rule variant expansion
- reflection / migration metadata expansion

## Promotion principle
Tier2 and Tier3 should be added only after Tier1 stabilizes and after real adoption evidence confirms the need for additional metadata structure.
