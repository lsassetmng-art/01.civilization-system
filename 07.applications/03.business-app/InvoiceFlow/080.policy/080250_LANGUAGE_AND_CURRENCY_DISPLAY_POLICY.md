# ============================================================
# LANGUAGE AND CURRENCY DISPLAY POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Fixes language fallback and multicurrency display rules.

language_priority_policy:
- customer preferred language
- actor preference
- tenant default
- system default

currency_display_policy:
- currency must remain explicit
- cross-currency amounts must not be implicitly summed
- customer outstanding summaries remain currency-separated by default
- UI and PDF output must not replace explicit currency identity with locale-only assumption
