# ============================================================
# POCKET SECRETARY COMMON REFERENCE MAP
# ============================================================

status: reference
layer: 920.meta
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Summarizes which PocketSecretary concepts were retained
as app-specific design and which were externalized
to shared common design in PersonaOS or BusinessOS.

# ============================================================
# 1. CLASSIFICATION RULE
# ============================================================

classification:
- PocketSecretary-specific:
  app-only structure, pricing, screen layout, initial cast,
  Library concept, and app-specific UI placement
- shared common:
  reusable secretary interaction, consultation,
  notification, background preference, and business submission rules

# ============================================================
# 2. SHARED COMMON REFERENCES
# ============================================================

# ------------------------------------------------------------
# 2.1 PERSONA OS COMMONS
# ------------------------------------------------------------

persona_os_common:
- Consultation Common
- Secretary Interaction Common
- Notification Common
- Background Common
- shared VisualRuntime consumption boundary

meaning:
PersonaOS owns shared secretary-facing interaction semantics.

# ------------------------------------------------------------
# 2.2 BUSINESS OS COMMONS
# ------------------------------------------------------------

business_os_common:
- Submission Common

meaning:
BusinessOS owns shared business submission semantics.

# ============================================================
# 3. WHAT REMAINS POCKETSECRETARY-SPECIFIC
# ============================================================

pocketsecretary_specific:
- home screen layout
  - top-left speech bubble
  - bottom-left navigation buttons
  - bottom-right secretary render
  - top-right settings
- free / pro / enterprise plan definition
- Library as app-specific personal file domain
- initial secretary cast:
  - Sato Misaki
  - Takahashi Hina
  - Kamiya Rin
- concrete visible role mapping of the initial cast
- Enterprise application button placement in app UI
- travel expense placement in Pro
- PocketSecretary-specific review surfaces

# ============================================================
# 4. CONSULTATION COMMON MAPPING
# ============================================================

shared_target:
PersonaOS / Consultation Common

shared meaning moved out:
- consultation tier
- consultation scope
- advisory-only boundary
- consultation output boundary

PocketSecretary-specific retained:
- Pro enables personal consultation only
- Enterprise enables personal + business consultation
- consultation screen behavior in PocketSecretary
- secretary-specific emphasis in consultation style

PocketSecretary files using shared reference:
- 0200112_POCKET_SECRETARY_CONSULTATION_ARCHITECTURE.md
- 0300124_POCKET_SECRETARY_CONSULTATION_SESSION_MODEL.md
- 0400115_POCKET_SECRETARY_CONSULTATION_RUNTIME.md
- 0800110_POCKET_SECRETARY_CONSULTATION_POLICY.md
- 0900113_POCKET_SECRETARY_CONSULTATION_INTERFACE.md
- 1200111_POCKET_SECRETARY_CONSULTATION_IMPLEMENTATION.md

# ============================================================
# 5. SECRETARY INTERACTION COMMON MAPPING
# ============================================================

shared_target:
PersonaOS / Secretary Interaction Common

shared meaning moved out:
- secretary profile common
- secretary switch common
- visible role presentation common
- summary bubble common
- dominant summary selection common

PocketSecretary-specific retained:
- concrete initial cast
- visible role mapping of initial cast
- home speech bubble placement
- secretary selection triggered from home character tap
- app-local home interaction layout

PocketSecretary files using shared reference:
- 0200121_POCKET_SECRETARY_INITIAL_SECRETARY_ARCHITECTURE.md
- 0200122_POCKET_SECRETARY_HOME_SUMMARY_ARCHITECTURE.md
- 0300134_POCKET_SECRETARY_HOME_SPEECH_BUBBLE_MODEL.md
- 0300136_POCKET_SECRETARY_INITIAL_SECRETARY_PROFILE_MODEL.md
- 0300137_POCKET_SECRETARY_SECRETARY_SWITCH_MODEL.md
- 0300138_POCKET_SECRETARY_HOME_SUMMARY_PRIORITY_MODEL.md
- 0300140_POCKET_SECRETARY_SECRETARY_ROLE_PROFILE_MODEL.md
- 0400125_POCKET_SECRETARY_HOME_SCREEN_RUNTIME.md
- 0400126_POCKET_SECRETARY_SECRETARY_SWITCH_RUNTIME.md
- 0400128_POCKET_SECRETARY_HOME_SUMMARY_RUNTIME.md
- 0800118_POCKET_SECRETARY_INITIAL_SECRETARY_POLICY.md
- 0800119_POCKET_SECRETARY_HOME_SUMMARY_POLICY.md
- 0900122_POCKET_SECRETARY_SECRETARY_SELECTION_INTERFACE.md
- 0900125_POCKET_SECRETARY_SECRETARY_ROLE_INTERFACE.md
- 1200121_POCKET_SECRETARY_INITIAL_SECRETARY_IMPLEMENTATION.md

# ============================================================
# 6. NOTIFICATION COMMON MAPPING
# ============================================================

shared_target:
PersonaOS / Notification Common

shared meaning moved out:
- basic / advanced notification common
- quiet hours
- grouped summary
- daily summary
- contextual wording common

PocketSecretary-specific retained:
- free = basic notification
- pro / enterprise = advanced notification
- home summary connection
- app-local notification surfaces and controls

PocketSecretary files using shared reference:
- 0200119_POCKET_SECRETARY_NOTIFICATION_ARCHITECTURE.md
- 0300133_POCKET_SECRETARY_NOTIFICATION_PROFILE_MODEL.md
- 0300141_POCKET_SECRETARY_NOTIFICATION_RULE_MODEL.md
- 0400105_POCKET_SECRETARY_NOTIFICATION_RUNTIME.md
- 0400124_POCKET_SECRETARY_NOTIFICATION_TIER_RUNTIME.md
- 0400130_POCKET_SECRETARY_NOTIFICATION_CONTROL_RUNTIME.md
- 0800116_POCKET_SECRETARY_NOTIFICATION_TIER_POLICY.md
- 0800120_POCKET_SECRETARY_NOTIFICATION_CONTROL_POLICY.md
- 0900120_POCKET_SECRETARY_NOTIFICATION_INTERFACE.md
- 0900126_POCKET_SECRETARY_NOTIFICATION_CONTROL_INTERFACE.md
- 1200119_POCKET_SECRETARY_NOTIFICATION_IMPLEMENTATION_EXTENDED.md
- 1200123_POCKET_SECRETARY_NOTIFICATION_CONTROL_IMPLEMENTATION.md

# ============================================================
# 7. BACKGROUND COMMON MAPPING
# ============================================================

shared_target:
PersonaOS / Background Common

shared meaning moved out:
- background selection common
- background preference common
- availability / unlocked background concept
- explicit background switching

PocketSecretary-specific retained:
- background tap from home screen
- home background usage and placement
- app-specific background presentation behavior

PocketSecretary files using shared reference:
- 0200120_POCKET_SECRETARY_HOME_SCREEN_ARCHITECTURE.md
- 0300135_POCKET_SECRETARY_HOME_LAYOUT_MODEL.md
- 0400127_POCKET_SECRETARY_BACKGROUND_SWITCH_RUNTIME.md
- 0800117_POCKET_SECRETARY_HOME_SCREEN_POLICY.md
- 0900123_POCKET_SECRETARY_BACKGROUND_SELECTION_INTERFACE.md
- 1200120_POCKET_SECRETARY_HOME_SCREEN_IMPLEMENTATION.md

# ============================================================
# 8. BUSINESS SUBMISSION COMMON MAPPING
# ============================================================

shared_target:
BusinessOS / Submission Common

shared meaning moved out:
- external API submission only
- explicit submission only
- auto-submission prohibition
- auth context common
- business draft alignment
- formal document draft principle

PocketSecretary-specific retained:
- Enterprise-only application-button surfaces
- quotation / order / ERP review screens
- app-local button placement
- app-local review flow before submission

PocketSecretary files using shared reference:
- 0200113_POCKET_SECRETARY_ERP_EXTERNAL_API_SUBMISSION_ARCHITECTURE.md
- 0200114_POCKET_SECRETARY_ENTERPRISE_APPLICATION_BUTTON_ARCHITECTURE.md
- 0200116_POCKET_SECRETARY_QUOTATION_DRAFT_ARCHITECTURE.md
- 0200117_POCKET_SECRETARY_ORDER_DRAFT_ARCHITECTURE.md
- 0300127_POCKET_SECRETARY_QUOTATION_DRAFT_MODEL.md
- 0300129_POCKET_SECRETARY_ORDER_DRAFT_MODEL.md
- 0300131_POCKET_SECRETARY_ERP_APPLICATION_STATE_MODEL.md
- 0300132_POCKET_SECRETARY_ERP_AUTH_CONTEXT_MODEL.md
- 0400120_POCKET_SECRETARY_ENTERPRISE_APPLICATION_BUTTON_RUNTIME.md
- 0400121_POCKET_SECRETARY_ERP_AUTH_CONTEXT_RUNTIME.md
- 0400122_POCKET_SECRETARY_EXPLICIT_SUBMISSION_RUNTIME.md
- 0400123_POCKET_SECRETARY_AUTO_SUBMISSION_PROHIBITION_RUNTIME.md
- 0500117_POCKET_SECRETARY_ENTERPRISE_APPLICATION_BUTTON_FLOW.md
- 0500118_POCKET_SECRETARY_ERP_EXTERNAL_API_SUBMISSION_FLOW.md
- 0600112_POCKET_SECRETARY_ERP_AUTH_CONTEXT_INTEGRATION.md
- 0600113_POCKET_SECRETARY_ENTERPRISE_DRAFT_SUBMISSION_INTEGRATION.md
- 0800113_POCKET_SECRETARY_ENTERPRISE_APPLICATION_BUTTON_POLICY.md
- 0800114_POCKET_SECRETARY_AUTO_SUBMISSION_PROHIBITION_POLICY.md
- 0800115_POCKET_SECRETARY_BUSINESS_DRAFT_ALIGNMENT_POLICY.md
- 1000111_POCKET_SECRETARY_ERP_API_TOKEN_SECURITY.md
- 1000112_POCKET_SECRETARY_ENTERPRISE_DRAFT_SUBMISSION_SECURITY.md
- 1200113_POCKET_SECRETARY_QUOTATION_DRAFT_IMPLEMENTATION.md
- 1200114_POCKET_SECRETARY_ORDER_DRAFT_IMPLEMENTATION.md
- 1200115_POCKET_SECRETARY_ENTERPRISE_APPLICATION_BUTTON_IMPLEMENTATION.md
- 1200116_POCKET_SECRETARY_ERP_API_TOKEN_IMPLEMENTATION.md

# ============================================================
# 9. PRACTICAL READING GUIDE
# ============================================================

reading_guide:
1. Read PocketSecretary Overview / Index files first
2. When a PocketSecretary file says common reference,
   read the referenced shared common file next
3. Return to PocketSecretary file to understand app-specific difference
4. Treat PocketSecretary as:
   shared common meaning
   + app-specific gating
   + app-specific layout
   + app-specific cast and user experience

# ============================================================
# 10. FINAL INTERPRETATION
# ============================================================

final_interpretation:
PocketSecretary is not a standalone closed design anymore.

It now consists of:
- shared secretary-facing semantics in PersonaOS
- shared business submission semantics in BusinessOS
- PocketSecretary-specific app experience layered on top
