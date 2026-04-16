# ============================================================
# NAMECARD LOCALE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines locale handling model for NameCardManager.

main_fields:
- ui_locale
- output_locale
- fallback_locale
- user_data_original_language_optional
- translation_display_enabled
- multilingual_search_enabled

initial_supported_locales:
- ja
- en

rules:
- UI locale is independent from raw user data language
- output locale may follow UI locale by default
- fallback locale is required
- user-entered source data must not be silently overwritten by translation

