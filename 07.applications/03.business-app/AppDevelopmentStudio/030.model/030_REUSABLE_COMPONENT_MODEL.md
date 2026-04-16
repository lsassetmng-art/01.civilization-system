# ============================================================
# REUSABLE COMPONENT MODEL
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

purpose:
Defines a reusable engineering component visible to the internal AI.

definition:
reusable_component represents a reusable part that may be selected
during design, code, SQL, or test generation.

minimum_fields:
- component_id
- component_name
- component_type
- source_scope
- summary
- primary_use_case
- supported_environments
- supported_languages
- stability_level
- current_version_id
- status
- created_at
- updated_at

component_type_examples:
- ui_component
- screen_template
- service
- repository
- sql_template
- validation_rule_set
- auth_module
- logging_module
- integration_adapter
- test_template
- build_script

source_scope_examples:
- businessos_shared
- user_private
- project_local
- app_internal
- external_imported

stability_level_examples:
- experimental
- usable
- stable
- deprecated

relations:
- links to reusable_component_version
- links to component_dependency
- links to component_compatibility
- links to component_example

notes:
This model exists to support reuse-first generation.
