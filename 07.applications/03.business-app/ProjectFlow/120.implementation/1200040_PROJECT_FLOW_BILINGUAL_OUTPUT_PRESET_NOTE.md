# ============================================================
# PROJECT FLOW BILINGUAL_OUTPUT_PRESET_NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines preset behavior concept for generating outputs in initial languages.

preset_targets:
- japanese_output_preset
- english_output_preset

preset_scope:
- customer-facing schedule headings
- progress report headings
- issue list headings
- risk list headings
- decision note headings
- follow-up headings
- export headers
- one-page summary headings

rules:
- presets should reuse shared localization keys
- presets may include wording-style differences by language
- presets do not replace review and wording override
