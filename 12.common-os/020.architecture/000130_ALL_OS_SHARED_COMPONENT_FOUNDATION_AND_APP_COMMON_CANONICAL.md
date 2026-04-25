# ============================================================
# ALL OS SHARED COMPONENT FOUNDATION AND APP_COMMON CANONICAL
# ============================================================

status: canonical
layer: application-common-components
domain: shared-foundation
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This document fixes the official cross-OS rule set for:
- shared HTML UI foundation
- shared component system
- app_common shared schema
- ERP applicability
- offline-first + local queue + online sync
- client/server boundary for theft resistance

This document is additive.
It does not replace each OS domain canon.
It defines the shared foundation that all OSs, apps, and ERP may use.

# ============================================================
# 1. OFFICIAL DECISIONS
# ============================================================

official_decisions:
- All OSs and apps shall use one shared HTML UI foundation as the primary UI canon.
- PC, smartphone, and tablet shall not maintain separate primary UI canons.
- Shared component implementation shall live in the application-common-components workspace.
- A shared schema named app_common is officially allowed and recommended for shared mutable metadata.
- app_common is not an OS.
- app_common is not a business transaction canon.
- ERP is an official applicability target of the shared UI foundation.
- Offline-first plus local queue plus online sync is the standard operating pattern.
- Client receives UI and non-secret presentation metadata only.
- Core business logic, pricing logic, access logic, AI control, and secrets must remain server-side.

# ============================================================
# 2. POSITIONING
# ============================================================

official_positioning:
- workspace_root: 00.application-common-components
- shared_schema: app_common
- applicability_scope:
  - 01.civilization-os
  - 02.persona-os
  - 03.business-os
  - 04.life-os
  - 05.game-os
  - 06.streaming-os
  - 07.applications
  - 08.civilization-portal-site
  - 10.staticart-os
  - 11.aiworker-os
  - ERP surfaces

interpretation_rule:
application-common-components is the implementation and design foundation.
app_common is the shared mutable metadata storage layer.
Each OS and each app still owns its own business canon.

# ============================================================
# 3. SHARED FOUNDATION RESPONSIBILITIES
# ============================================================

shared_foundation_responsibilities:
- design tokens
- typography system
- color system
- spacing system
- radius / elevation / border rules
- icon rules
- layout primitives
- responsive primitives
- accessibility primitives
- keyboard / touch behavior rules
- focus / error / loading / disabled state rules
- primitive components
- composite components
- app shell patterns
- offline status presentation
- sync status presentation
- queue status presentation
- retry / conflict presentation

official_component_scope:

primitive_components:
- Button
- IconButton
- TextField
- TextArea
- Select
- Checkbox
- Radio
- Switch
- Label
- Chip
- Badge
- Divider
- Avatar
- Tooltip
- Spinner
- Progress

composite_components:
- Search Bar
- Filter Bar
- Filter Panel
- List Header
- Record Card
- Table
- Detail Panel
- Dialog
- Modal
- Drawer
- Bottom Sheet
- Toast
- Snackbar
- Attachment Picker UI
- Approval Action Bar
- Status Summary Card
- Offline Queue Panel
- Sync Retry Panel
- Conflict Review Panel
- Empty State
- Error State
- Loading State

shell_components:
- App Header
- App Footer
- Side Navigation
- Bottom Navigation
- Workspace Switcher
- Breadcrumb
- Page Toolbar
- Settings Shell

# ============================================================
# 4. APP_COMMON SCHEMA ROLE
# ============================================================

app_common_role:
app_common stores shared mutable metadata only.
It is not a replacement for each domain's primary business schema.

allowed_in_app_common:
- theme_registry
- design_token_set
- design_token_value
- component_variant_registry
- icon_registry
- common_locale_key
- common_locale_resource
- common_copy_template
- common_notification_template
- common_export_template
- common_help_template
- common_screen_template_definition
- common_sync_policy
- common_retry_policy
- common_queue_rule
- common_feature_presentation_rule
- common_accessibility_preset
- common_form_definition_metadata
- common_validation_message_catalog
- common_attachment_policy
- common_client_capability_registry

disallowed_in_app_common:
- ERP transaction canon
- business transaction canon
- persona canon
- life personal canon
- streaming view / watch canon
- staticart work canon
- auth secrets
- service role secrets
- business pricing decision logic
- entitlement decision logic
- access decision logic
- AI system prompt canon
- internal ranking / scoring canon
- domain-specific transaction payload canon
- local outbox body canon
- core audit decision canon

official_interpretation:
app_common is a shared presentation / metadata canon.
Each domain keeps its own business canon.

# ============================================================
# 5. ERP APPLICABILITY
# ============================================================

erp_applicability:
ERP is a first-class target of the shared UI foundation.

erp_high_fit_surfaces:
- list screens
- detail screens
- dense data entry
- approval screens
- draft screens
- attachment surfaces
- search / filter
- dashboard surfaces
- notification confirmation
- status display
- sync status display
- offline save display

erp_non_shared_core:
- accounting core logic
- stock / inventory calculation core
- cost calculation core
- approval authority decision core
- company-specific business rules
- posting / confirmation decision logic
- audit decision logic

official_erp_rule:
ERP shares the UI.
ERP keeps the business brain.

# ============================================================
# 6. OFFLINE-FIRST + LOCAL QUEUE + ONLINE SYNC
# ============================================================

official_sync_mode:
- offline-first
- local queue
- online sync

minimum_offline_capabilities:
- screen display
- local navigation
- input
- draft save
- local edit
- local reference
- local search
- queue registration

local_storage_interpretation:
- app assets: cache
- local structured state: local database such as IndexedDB
- send-wait queue: local outbox queue
- temporary attachment staging: local protected device-side storage

queue_statuses:
- pending
- processing
- retry_wait
- sent
- failed
- cancelled
- conflict

sync_triggers:
- app launch
- foreground resume
- online recovery
- manual sync
- send-possible condition met

shared_sync_ui_scope:
- offline badge
- last synced display
- queue count display
- pending / failed / conflict badge
- retry button
- sync detail panel
- conflict review panel

non_shared_sync_scope:
- domain payload meaning
- domain send ordering logic
- domain conflict resolution logic
- domain posting confirmation logic

official_sync_rule:
Queue presentation is shared.
Queue meaning remains domain-owned.

# ============================================================
# 7. CLIENT / SERVER BOUNDARY
# ============================================================

allowed_on_client:
- components
- layout rules
- design tokens
- non-secret labels
- presentation metadata
- local draft state
- local queue state
- non-secret validation
- non-secret screen templates

forbidden_on_client:
- secrets
- service role keys
- DB connection information
- pricing decision logic
- entitlement decision logic
- access decision logic
- AI control canon
- AI prompt canon
- audit decision logic
- private scoring logic
- internal-only URL map
- confidential business rule expressions

official_boundary_rule:
The shared client receives UI.
The server retains the business brain.

# ============================================================
# 8. DESIGN SYSTEM STANDARDIZATION
# ============================================================

standardization_policy:
Buttons and all other shared parts must be standardized.

mandatory_standardization_scope:
- button system
- text input system
- selection system
- feedback state system
- dialog system
- table / list system
- attachment system
- shell system
- status color semantics
- spacing semantics
- typography semantics
- responsive breakpoints
- accessibility behavior
- motion rules

variant_policy:
Different needs shall be expressed as variants, not as fragmented local primary components.

example_variants:
- button.primary
- button.secondary
- button.destructive
- button.ghost
- input.default
- input.compact
- input.erp_dense
- card.standard
- card.record
- panel.sync
- panel.conflict

forbidden_fragmentation:
- separate button canon per app
- separate token canon per OS
- ERP-only independent design language
- smartphone-only primary design system
- PC-only primary design system

# ============================================================
# 9. GOVERNANCE
# ============================================================

governance_rule:
The shared foundation is cross-OS infrastructure.
Each domain consumes it but does not redefine its primary canon independently.

foundation_owner_scope:
- shared component canon
- shared token canon
- shared template canon
- shared sync presentation canon
- shared metadata storage policy

domain_owner_scope:
- domain business canon
- domain logic
- domain access rules
- domain payload contracts
- domain conflict resolution rules
- domain audit rules

# ============================================================
# 10. PROHIBITIONS
# ============================================================

prohibited:
- maintaining separate primary UI canons for PC and smartphone
- storing business transaction canon in app_common
- storing secrets in app_common
- moving core business logic into the shared client
- app-by-app fragmentation of button canon
- ERP-only independent UI canon
- putting local outbox actual business canon into app_common
- using shared foundation as a dumping ground for unrelated domain logic

# ============================================================
# 11. FINAL OFFICIAL STATEMENT
# ============================================================

final_statement:
The project officially adopts:
- one shared HTML UI foundation for all OSs, apps, and ERP surfaces
- one shared mutable metadata schema named app_common
- offline-first plus local queue plus online sync as the standard synchronization model
- strict client/server separation where UI is shared and business logic remains domain-owned

core_message:
Shared UI is mandatory.
Shared metadata is allowed in app_common.
Business canon remains in each domain.
ERP is included.
Offline-first is included.
