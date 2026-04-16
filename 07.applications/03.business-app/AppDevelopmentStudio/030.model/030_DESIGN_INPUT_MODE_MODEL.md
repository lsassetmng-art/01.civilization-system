# ============================================================
# DESIGN INPUT MODE MODEL
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

purpose:
Defines selectable design input modes.

definition:
design_input_mode represents the style of design input
chosen by the user for authoring or importing requirements.

minimum_fields:
- design_input_mode_id
- mode_name
- mode_code
- description
- supports_auto_generation
- supports_import
- supports_guidance
- supports_template
- status
- created_at
- updated_at

mode_code_examples:
- free_input
- guided_input
- standard_template
- full_generation_format
- imported_design_documents

notes:
Users can choose their preferred design input mode explicitly.
