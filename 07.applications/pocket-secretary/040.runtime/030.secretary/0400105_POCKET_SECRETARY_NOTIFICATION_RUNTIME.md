# ============================================================
# POCKET SECRETARY NOTIFICATION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific notification runtime
based on the shared Notification Common runtime.

common reference:
PersonaOS notification common runtime defines:
- reminder generation
- grouped summary composition
- daily summary generation
- re-notification timing
- quiet-hours suppression
- contextual wording application

PocketSecretary-specific application:
- notification may feed the home speech bubble summary
- app-specific feature surfaces consume notification state
- plan-bound notification availability remains app-specific

rules:
- notifications must reflect actual runtime state
- notification display must not fabricate authority
- critical external completion must not be implied
  only by local notification success
