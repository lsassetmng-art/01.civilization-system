# ============================================================
# PROJECT FLOW CUSTOMER OUTPUT BILINGUAL PRESET NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines preset usage for Japanese and English customer-facing outputs.

preset_types:
- ja_customer_material_preset
- en_customer_material_preset
- ja_export_header_preset
- en_export_header_preset
- ja_one_page_summary_preset
- en_one_page_summary_preset

preset_rules:
- presets should apply localized titles and section headings
- presets should not overwrite business content itself
- wording override remains possible after preset application
- one generated output should use one preset consistently
