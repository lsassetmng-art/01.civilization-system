
# ============================================================
# ESTIMATE LOCALE MULTICURRENCY CONTRACT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Fixed locale/currency support fields:

- ui_locale
- customer_preferred_locale
- template_locale
- export_locale
- estimate_currency_code
- customer_preferred_currency_code
- currency_display_locale

Rules:
- payload field names remain English-fixed
- locale affects labels/messages/templates/output
- currency affects display/output formatting
- free text is not automatically translated

