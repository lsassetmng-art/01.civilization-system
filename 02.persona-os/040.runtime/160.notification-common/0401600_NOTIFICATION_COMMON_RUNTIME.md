# ============================================================
# NOTIFICATION COMMON RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: persona-os
owner: Boss
prepared_by: Zero

definition:
Defines common notification runtime behavior.

runtime areas:
- reminder generation
- grouped summary composition
- daily summary generation
- re-notification timing
- quiet-hours suppression
- contextual wording application

rules:
- notification runtime must remain state-grounded
- notification output must not fabricate authority or completion
