# ============================================================
# LIFE LOCALE PREFERENCE MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: personal-finance-lite
owner: Boss
prepared_by: Zero

purpose:
Defines locale preference handling for LifeOS.

entity_name:
life_locale_preference

meaning:
Represents locale settings used for formatting and display.

core_fields:
- locale_preference_id
- user_id
- locale_code
- region_code
- date_format_style
- time_format_style
- numeric_format_style
- created_at
- updated_at

rules:
- locale is not the same as language
- locale affects formatting behavior
- locale fallback must be defined
