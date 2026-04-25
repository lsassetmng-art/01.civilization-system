# ============================================================
# STATIC ART OS COMPONENT BOUNDARY SKELETON
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

creator_components:
  - AssetSummaryRail
  - AssetWorkspaceTabNav
  - FileRoleRequirementPanel
  - LocalizationEditor
  - CategoryTagEditor
  - SamplePreviewPanel
  - RightsImpactPreview
  - SalesOfferEditor
  - SubscriptionRuleEditor
  - SelfCheckIssuePanel
  - ReviewTimelinePanel
  - PublishReadinessPanel
  - AuditSummaryPanel

marketplace_components:
  - MarketplaceSearchBar
  - MarketplaceFilterPanel
  - ProductCard
  - ProductHero
  - AllowedActionsPanel
  - PurchaseResultOverlay

library_components:
  - LibraryShelfTabs
  - ContinueReadingCard
  - ContinueViewingCard
  - ReaderToolbar
  - ReaderProgressBar
  - ReaderAnnotationPanel
  - ViewerToolbar
  - ViewerPageStrip
  - ViewerZoomControl

admin_components:
  - ReviewQueueTable
  - ReviewRiskBadge
  - ReviewDetailDecisionPanel
  - RestrictionImpactPanel
  - AuditTrailTimeline

rules:
  - publishing and visual viewers must not be collapsed into one continuity state component
  - allowed_actions must be the UI truth source on product detail
  - common error and loading shells should be reused across screens
