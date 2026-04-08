# ============================================================
# POCKET SECRETARY HOME SPEECH BUBBLE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific use of the shared Summary Bubble Common model.

common reference:
PersonaOS secretary interaction common defines the shared summary bubble structure.

PocketSecretary-specific usage:
- secretary summary content is displayed in the home speech bubble
- summary message is shown at the top-left home area

PocketSecretary summary message types may include:
- schedule_summary
- next_schedule
- todo_summary
- notification_summary
- travel_expense_reminder
- secretary_guidance

rules:
- speech bubble content remains informational or advisory
- speech bubble output does not equal approval or submission state
