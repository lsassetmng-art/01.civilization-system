# ============================================================
# PERSONA BUILDER STORAGE MAPPING
# ============================================================

status: canonical
scope: persona.builder.storage.mapping
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Define the storage mapping principles
for Persona Builder models.


# STORAGE OBJECTS

Recommended storage mappings:

- persona_builder_draft
- persona_builder_section_state
- persona_builder_validation_result
- persona_builder_approval_request
- persona_builder_publish_candidate
- persona_builder_asset_binding
- persona_builder_visual_manifest_candidate
- persona_builder_change_set
- persona_builder_audit_record


# RULE

Builder storage must be clearly separated from:

- final persona truth tables
- runtime visual execution state
- snapshot truth tables
- external-rights authority tables


# FINAL DEFINITION

Builder storage exists to support governed authoring progression
and must never be mistaken for final Persona truth storage.
