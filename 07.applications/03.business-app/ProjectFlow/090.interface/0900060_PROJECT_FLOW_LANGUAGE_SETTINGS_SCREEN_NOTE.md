# ============================================================
# PROJECT FLOW LANGUAGE SETTINGS SCREEN NOTE
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
language_settings

purpose:
Defines the language-selection UI concept.

main_components:
- current language display
- selectable language list
- preview note
- save action

initial_language_options:
- japanese
- english

ui_rules:
- language labels should be understandable in their own language where practical
- language selection should be easy to find
- changing language should not imply business data conversion
