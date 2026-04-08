# ============================================================
# POCKET SECRETARY IMPLEMENTATION INDEX
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
Index of PocketSecretary-specific implementation documents.

shared common dependencies:
- PersonaOS Consultation Common
- PersonaOS Secretary Interaction Common
- PersonaOS Notification Common
- PersonaOS Background Common
- BusinessOS Submission Common

reading order:
1. Implementation Overview
2. Core app implementation
3. Shared-common application bindings
4. Enterprise review/submission implementation
5. Cross-cutting technical domain implementation

document guide:
- 1200001_POCKET_SECRETARY_IMPLEMENTATION_OVERVIEW.md
  Overview of implementation guidance in PocketSecretary.

- 1200100_POCKET_SECRETARY_IMPLEMENTATION.md
  Top-level implementation framing.

- 1200101_POCKET_SECRETARY_APPLICATION_STRUCTURE_IMPLEMENTATION.md
  Core app structure implementation.

- 1200102_POCKET_SECRETARY_LOCAL_PERSISTENCE_IMPLEMENTATION.md
  Local persistence implementation.

- 1200103_POCKET_SECRETARY_UI_IMPLEMENTATION.md
  General UI implementation.

- 1200104_POCKET_SECRETARY_NOTIFICATION_IMPLEMENTATION.md
  Base notification implementation.

- 1200105_POCKET_SECRETARY_PERSONA_PRESENTATION_IMPLEMENTATION.md
  Persona presentation implementation.

- 1200106_POCKET_SECRETARY_SYNC_IMPLEMENTATION.md
  Sync implementation.

- 1200107_POCKET_SECRETARY_ERP_REQUEST_IMPLEMENTATION.md
  ERP request implementation in app context.

- 1200108_POCKET_SECRETARY_STATE_HANDLING_IMPLEMENTATION.md
  App state handling.

- 1200109_POCKET_SECRETARY_PERSONA_RENDER_ADAPTER_IMPLEMENTATION.md
  Render adapter implementation.

- 1200110_POCKET_SECRETARY_LIBRARY_IMPLEMENTATION.md
  Library implementation.

- 1200111_POCKET_SECRETARY_CONSULTATION_IMPLEMENTATION.md
  PocketSecretary-specific consultation implementation.

- 1200112_POCKET_SECRETARY_TRAVEL_EXPENSE_IMPLEMENTATION.md
  Travel expense implementation.

- 1200113_POCKET_SECRETARY_QUOTATION_DRAFT_IMPLEMENTATION.md
  Replaced by dedicated business app.

- 1200114_POCKET_SECRETARY_ORDER_DRAFT_IMPLEMENTATION.md
  Replaced by dedicated business app.

- 1200115_POCKET_SECRETARY_ENTERPRISE_APPLICATION_BUTTON_IMPLEMENTATION.md
  Enterprise application-button implementation.

- 1200116_POCKET_SECRETARY_ERP_API_TOKEN_IMPLEMENTATION.md
  ERP auth-token usage implementation.

- 1200117_POCKET_SECRETARY_LIBRARY_SUMMARY_IMPLEMENTATION.md
  Library summary implementation.

- 1200118_POCKET_SECRETARY_SCHEDULE_CALENDAR_IMPLEMENTATION.md
  Schedule calendar implementation.

- 1200119_POCKET_SECRETARY_NOTIFICATION_IMPLEMENTATION_EXTENDED.md
  PocketSecretary-specific advanced notification implementation.

- 1200120_POCKET_SECRETARY_HOME_SCREEN_IMPLEMENTATION.md
  Home screen implementation.

- 1200121_POCKET_SECRETARY_INITIAL_SECRETARY_IMPLEMENTATION.md
  Concrete initial secretary cast implementation.

- 1200122_POCKET_SECRETARY_TOOLS_LAUNCHER_IMPLEMENTATION.md
  Tools launcher implementation.

- 1200123_POCKET_SECRETARY_NOTIFICATION_CONTROL_IMPLEMENTATION.md
  PocketSecretary-specific notification control implementation.

- 1200124_POCKET_SECRETARY_BUSINESS_APP_LAUNCH_IMPLEMENTATION.md
  Dedicated business app launch implementation.

cross_cutting_technical_domain:
- 140.visual-runtime
  Thin host adapter, event bridge, and session disposer for Persona Visual Runtime.
