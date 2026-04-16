# ============================================================
# ANDROID SETTINGS AND FORMATTER TEMPLATE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines templates for settings and formatting support.

settings_template_direction:
- settings repository owns persisted preference retrieval
- settings viewmodel owns screen state only
- locale preference and currency preference are separated but related

formatter_template_direction:
- UiTextResolver resolves key-based display text
- NumberFormatter formats plain numeric display
- CurrencyFormatter formats display-money safely
- DateTimeFormatter formats display-time safely

important_rule:
Formatter behavior is presentation support.
Canonical values stay outside formatter ownership.
