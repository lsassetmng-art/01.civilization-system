# ============================================================
# POCKET SECRETARY NOTIFICATION CONTROL RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific notification control runtime
based on the shared Notification Common runtime.

common reference:
PersonaOS notification common defines:
- quiet hours suppression
- grouped summary composition
- daily summary generation
- re-notification timing

PocketSecretary-specific application:
- notification controls affect PocketSecretary home
  and secretary-facing surfaces
- unavailable advanced controls remain plan-bounded

rules:
- quiet hours must suppress non-critical notification noise
- daily summary must remain informational
- advanced notification remains plan-bounded
