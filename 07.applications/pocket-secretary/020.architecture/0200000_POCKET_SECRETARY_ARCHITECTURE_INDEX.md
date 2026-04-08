# ============================================================
# POCKET SECRETARY ARCHITECTURE INDEX
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

role:
Index of PocketSecretary-specific architecture documents.

shared common dependencies:
- PersonaOS Consultation Common
- PersonaOS Secretary Interaction Common
- PersonaOS Notification Common
- PersonaOS Background Common
- PersonaOS shared VisualRuntime consumption boundary
- BusinessOS Submission Common

reading order:
1. Architecture Overview
2. Core app structure and boundaries
3. Shared-common application files
4. PocketSecretary-only app structure files
5. Cross-cutting technical domain files

document guide:
- 0200001_POCKET_SECRETARY_ARCHITECTURE_OVERVIEW.md
  Overall structural architecture of PocketSecretary.
- 0200100_POCKET_SECRETARY_ARCHITECTURE.md
  Top-level architecture framing for the app.
- 0200101_POCKET_SECRETARY_APPLICATION_STRUCTURE_ARCHITECTURE.md
  Core application structure.
- 0200102_POCKET_SECRETARY_MODULE_BOUNDARY_ARCHITECTURE.md
  Module separation and ownership.
- 0200103_POCKET_SECRETARY_UI_ARCHITECTURE.md
  App-wide UI architecture.
- 0200104_POCKET_SECRETARY_LOCAL_STORAGE_ARCHITECTURE.md
  Local-first storage structure.
- 0200105_POCKET_SECRETARY_PERSONA_PRESENTATION_ARCHITECTURE.md
  Persona presentation architecture in PocketSecretary.
- 0200106_POCKET_SECRETARY_EXTERNAL_INTEGRATION_ARCHITECTURE.md
  External integration architecture in app context.
- 0200107_POCKET_SECRETARY_SECURITY_CONTROL_ARCHITECTURE.md
  Security control architecture in app context.
- 0200108_POCKET_SECRETARY_ARCHITECTURE_DEPENDENCY_RULE.md
  Dependency rules for this layer.
- 0200109_POCKET_SECRETARY_PERSONAOS_VISUAL_RUNTIME_BOUNDARY_ARCHITECTURE.md
  Shared VisualRuntime consumption boundary.
- 0200110_POCKET_SECRETARY_PLAN_ARCHITECTURE.md
  PocketSecretary plan structure and gating.
- 0200111_POCKET_SECRETARY_LIBRARY_ARCHITECTURE.md
  Library domain as app-specific personal file domain.
- 0200112_POCKET_SECRETARY_CONSULTATION_ARCHITECTURE.md
  PocketSecretary-specific use of Consultation Common.
- 0200113_POCKET_SECRETARY_ERP_EXTERNAL_API_SUBMISSION_ARCHITECTURE.md
  PocketSecretary-specific use of Submission Common.
- 0200114_POCKET_SECRETARY_ENTERPRISE_APPLICATION_BUTTON_ARCHITECTURE.md
  App-specific placement of Enterprise application button.
- 0200115_POCKET_SECRETARY_NAMECARDMANAGER_DEEP_LINK_ARCHITECTURE.md
  NameCardManager Deep Link integration architecture.
- 0200116_POCKET_SECRETARY_QUOTATION_DRAFT_ARCHITECTURE.md
  Replaced by EstimateCreator.
- 0200117_POCKET_SECRETARY_ORDER_DRAFT_ARCHITECTURE.md
  Replaced by EstimateCreator.
- 0200118_POCKET_SECRETARY_AI_SECRETARY_ARCHITECTURE.md
  AI secretary feature boundary in PocketSecretary.
- 0200119_POCKET_SECRETARY_NOTIFICATION_ARCHITECTURE.md
  PocketSecretary-specific use of Notification Common.
- 0200120_POCKET_SECRETARY_HOME_SCREEN_ARCHITECTURE.md
  PocketSecretary home-screen composition.
- 0200121_POCKET_SECRETARY_INITIAL_SECRETARY_ARCHITECTURE.md
  Concrete initial secretary cast in PocketSecretary.
- 0200122_POCKET_SECRETARY_HOME_SUMMARY_ARCHITECTURE.md
  PocketSecretary use of shared summary bubble logic.
- 0200123_POCKET_SECRETARY_TOOLS_LAUNCHER_ARCHITECTURE.md
  Tools launcher structure in PocketSecretary.
- 0200124_POCKET_SECRETARY_ESTIMATECREATOR_DEEP_LINK_ARCHITECTURE.md
  EstimateCreator Deep Link launch architecture.
- 0200125_POCKET_SECRETARY_HOME_SUMMARY_PRIORITY_ARCHITECTURE.md
  Fixed priority architecture for home speech bubble selection.
- 0200126_POCKET_SECRETARY_SECRETARY_WORDING_ARCHITECTURE.md
  Secretary wording dictionary architecture.

cross_cutting_technical_domain:
- 140.visual-runtime
  PocketSecretary host-side architecture for Persona Visual Runtime.
