# ============================================================
# GAME BUILDER UI COMPONENT ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official UI component architecture of Game Builder.

This architecture defines the component-level frontend structure
needed to implement Builder screens and workflows.

It covers:
- app shell components
- project navigation components
- editor components
- asset studio components
- preview components
- validation components
- export/publish components
- shared status and action components


# ============================================================
# 1. UI COMPONENT PRINCIPLE
# ============================================================

Builder UI must be componentized by domain responsibility.

Primary component groups:
- shell components
- project components
- editor components
- asset components
- preview components
- validation components
- export/submission components
- shared utility components

The UI component system must preserve:
- state visibility
- role awareness
- runtime awareness
- save/validation/export distinction


# ============================================================
# 2. APP SHELL COMPONENTS
# ============================================================

Minimum shell components:

- BuilderAppShell
- BuilderTopBar
- BuilderSidebar
- BuilderStatusBar
- BuilderWorkspaceSwitcher
- BuilderRouteContainer

Responsibilities:
- global navigation
- workspace visibility
- current project visibility
- global save/validation/export state visibility
- screen routing


# ============================================================
# 3. PROJECT COMPONENTS
# ============================================================

Minimum project components:

- ProjectListView
- ProjectCard
- ProjectFilterBar
- TemplateGalleryView
- TemplateCard
- ProjectOverviewView
- ProjectMetadataPanel
- ProjectLifecyclePanel

Responsibilities:
- project discovery
- template-first creation
- project overview rendering
- lifecycle summary rendering


# ============================================================
# 4. MAIN EDITOR COMPONENTS
# ============================================================

Minimum editor components:

- MainEditorShell
- StructureTreePanel
- StructureTreeNode
- BlockEditorSurface
- BlockToolbar
- BlockQuickAddMenu
- PropertyInspectorPanel
- ZoneBadge
- InlineValidationBadge
- DirtyStateIndicator

Responsibilities:
- block navigation
- block CRUD interaction
- block content editing
- property editing
- zone awareness
- inline validation visibility


# ============================================================
# 5. ASSET STUDIO COMPONENTS
# ============================================================

Minimum asset components:

- AssetStudioShell
- AssetBrowserGrid
- AssetDetailPanel
- AssetUploadPanel
- AssetBindingInspector
- PixelArtEditorCanvas
- UnitArtEditorCanvas
- BuildingArtEditorCanvas
- LayerPanel
- PalettePanel
- VariantGeneratorPanel

Responsibilities:
- asset browsing
- asset upload
- asset editing
- variant creation
- asset binding inspection


# ============================================================
# 6. PREVIEW COMPONENTS
# ============================================================

Minimum preview components:

- PreviewStudioShell
- PreviewSessionHeader
- PreviewModeSelector
- PreviewBasisBadge
- MockModeBadge
- PreviewCanvasOrRuntimeView
- PreviewStatePanel
- PreviewOutputPanel
- PreviewControlBar

Responsibilities:
- preview session display
- basis/mode visibility
- mock/sandbox visibility
- preview output display
- reset/restart/discard controls


# ============================================================
# 7. VALIDATION COMPONENTS
# ============================================================

Minimum validation components:

- ValidationCenterShell
- ValidationStageTabs
- ValidationSummaryPanel
- ValidationFindingList
- ValidationFindingRow
- SeverityFilterBar
- ValidationJumpPanel
- ValidationFreshnessBadge

Responsibilities:
- stage switching
- severity grouping
- findings navigation
- freshness visibility
- rerun actions


# ============================================================
# 8. EXPORT / SUBMISSION COMPONENTS
# ============================================================

Minimum export/submission components:

- ExportPublishCenterShell
- ExportReadinessPanel
- ExportHistoryList
- RuntimeExportContractPanel
- SubmissionReadinessPanel
- SubmissionHistoryList
- LifecycleStatusBadge
- ExplicitActionConfirmPanel

Responsibilities:
- readiness inspection
- export initiation
- submission initiation
- runtime contract inspection
- lifecycle visibility


# ============================================================
# 9. SHARED COMPONENTS
# ============================================================

Minimum shared components:

- SaveStateBadge
- ValidationStateBadge
- ExportStateBadge
- SubmissionStateBadge
- RuntimeFamilyBadge
- TemplateFamilyBadge
- RoleBadge
- LockBadge
- StatusPill
- EmptyStatePanel
- ErrorStatePanel
- ConfirmDialog

Shared components must keep Builder status language consistent.


# ============================================================
# 10. FINAL ARCHITECTURAL RULE
# ============================================================

Builder UI must be domain-componentized and state-explicit.

Core summary:

- shell components own navigation
- project components own selection/overview
- editor components own structured authoring
- asset components own material editing
- preview components own sandbox visibility
- validation components own diagnostics
- export/submission components own handoff clarity
- shared badges keep status language consistent
