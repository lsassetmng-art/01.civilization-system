# ============================================================
# POCKET SECRETARY INTERFACE INDEX
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
Index of PocketSecretary-specific interface documents.

shared common dependencies:
- PersonaOS Secretary Selection Common interface
- PersonaOS Summary Bubble Common interface
- PersonaOS Notification Common interface
- PersonaOS Background Selection Common interface

reading order:
1. Interface Overview
2. Home screen and primary surfaces
3. Shared-common application interfaces
4. Enterprise-only submission interfaces
5. Cross-cutting technical domain interfaces

document guide:
- 0900001_POCKET_SECRETARY_INTERFACE_OVERVIEW.md
  Overview of PocketSecretary interface domains.

- 0900100_POCKET_SECRETARY_INTERFACE.md
  Top-level interface framing.

- 0900101_POCKET_SECRETARY_DASHBOARD_INTERFACE.md
  Dashboard/home-facing interface context.

- 0900102_POCKET_SECRETARY_SCHEDULE_INTERFACE.md
  Schedule calendar interface.

- 0900103_POCKET_SECRETARY_TODO_INTERFACE.md
  Todo interface.

- 0900104_POCKET_SECRETARY_NOTE_ARCHIVE_INTERFACE.md
  Note/archive legacy interface context.

- 0900105_POCKET_SECRETARY_PERSONA_PRESENTATION_INTERFACE.md
  Persona presentation interface.

- 0900106_POCKET_SECRETARY_SETTINGS_INTERFACE.md
  Settings interface.

- 0900107_POCKET_SECRETARY_ERP_REQUEST_REVIEW_INTERFACE.md
  ERP request review interface.

- 0900108_POCKET_SECRETARY_STATE_FEEDBACK_INTERFACE.md
  State feedback interface.

- 0900111_POCKET_SECRETARY_PERSONA_RENDER_RESULT_INTERFACE.md
  Render-result interface.

- 0900112_POCKET_SECRETARY_LIBRARY_INTERFACE.md
  Library interface.

- 0900113_POCKET_SECRETARY_CONSULTATION_INTERFACE.md
  PocketSecretary-specific consultation interface.

- 0900114_POCKET_SECRETARY_TRAVEL_EXPENSE_INTERFACE.md
  Travel expense interface.

- 0900115_POCKET_SECRETARY_MONTHLY_AGGREGATION_INTERFACE.md
  Monthly aggregation interface.

- 0900116_POCKET_SECRETARY_QUOTATION_DRAFT_INTERFACE.md
  Replaced by dedicated business app.

- 0900117_POCKET_SECRETARY_ORDER_DRAFT_INTERFACE.md
  Replaced by dedicated business app.

- 0900118_POCKET_SECRETARY_ENTERPRISE_APPLICATION_BUTTON_INTERFACE.md
  Enterprise application-button interface.

- 0900119_POCKET_SECRETARY_PLAN_BOUNDARY_INTERFACE.md
  Plan-boundary interface.

- 0900120_POCKET_SECRETARY_NOTIFICATION_INTERFACE.md
  PocketSecretary-specific notification interface.

- 0900121_POCKET_SECRETARY_HOME_SCREEN_INTERFACE.md
  PocketSecretary home screen composition.

- 0900122_POCKET_SECRETARY_SECRETARY_SELECTION_INTERFACE.md
  PocketSecretary secretary selection interface.

- 0900123_POCKET_SECRETARY_BACKGROUND_SELECTION_INTERFACE.md
  PocketSecretary background selection interface.

- 0900124_POCKET_SECRETARY_TOOLS_LAUNCHER_INTERFACE.md
  Tools launcher interface.

- 0900125_POCKET_SECRETARY_SECRETARY_ROLE_INTERFACE.md
  Visible secretary-role interface.

- 0900126_POCKET_SECRETARY_NOTIFICATION_CONTROL_INTERFACE.md
  PocketSecretary-specific notification control interface.

- 0900127_POCKET_SECRETARY_BUSINESS_APP_LAUNCH_INTERFACE.md
  Dedicated business app launch interface.

cross_cutting_technical_domain:
- 140.visual-runtime
  Host request/event contract used by PocketSecretary to host Persona Visual Runtime.
