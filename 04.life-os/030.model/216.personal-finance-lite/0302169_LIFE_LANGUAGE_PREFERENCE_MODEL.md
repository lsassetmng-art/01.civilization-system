# ============================================================
# LIFE LANGUAGE PREFERENCE MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: personal-finance-lite
owner: Boss
prepared_by: Zero

purpose:
Defines language preference handling for LifeOS.

entity_name:
life_language_preference

meaning:
Represents the user's language settings for UI and generated outputs.

core_fields:
- language_preference_id
- user_id
- primary_language_code
- fallback_language_code
- ui_language_code
- summary_language_code
- reminder_language_code
- created_at
- updated_at

rules:
- language preference is independent from Persona expression style
- fallback language must exist
- summary language and reminder language may differ from UI language
