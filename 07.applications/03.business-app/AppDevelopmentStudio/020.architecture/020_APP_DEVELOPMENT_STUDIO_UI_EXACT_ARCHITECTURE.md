# ============================================================
# APP DEVELOPMENT STUDIO UI EXACT ARCHITECTURE
# ============================================================

status: canonical-draft
layer: architecture
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines the exact-item UI design direction.

ui_exact_principles:
- every major screen has screen_id
- every interactive field has item_id
- input/output distinction is explicit
- required/optional state is explicit
- enable/disable condition is explicit
- action-to-runtime mapping is explicit
- error display rule is explicit

major_exact_screens:
- request input
- input mode selection
- readiness result
- proposal list
- diff viewer
- review / approval
- SQL execution
- Git
- bug list / detail
- version settings
- language settings
- test progress
- project progress
- build settings
