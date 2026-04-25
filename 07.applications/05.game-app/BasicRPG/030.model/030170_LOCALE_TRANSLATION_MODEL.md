# ============================================================
# LOCALE AND TRANSLATION MODEL
# ============================================================

table_candidates:
- rpg_locale_preference
- rpg_translation_resource_version

preference_fields:
- player_id
- text_locale_code
- audio_locale_code
- glossary_version
- updated_at

rules:
- JP and EN are mandatory for v1
- locale switching must not mutate gameplay truth
