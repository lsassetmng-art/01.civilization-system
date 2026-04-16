# ============================================================
# ANDROID TEMPLATE GENERATION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines template generation direction for Android Phase 1 files.

template_principles:
- generated files must be minimal but compilable-oriented
- domain models stay small and explicit
- ui text resolution must be key-based from the start
- money handling must be amount + currency code based
- settings foundation must exist before final screen locking
- templates must prefer additive expansion over later rewrite

template_groups:
- domain templates
- entity templates
- dao templates
- repository templates
- formatter templates
- navigation templates
- settings templates
- screen / reducer / viewmodel templates

important_rule:
Do not defer multilingual and multicurrency structure
to late-stage patching inside screen files.
