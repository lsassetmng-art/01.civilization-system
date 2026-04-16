# ============================================================
# ADAPTIVE SCREEN COMPOSITION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines screen-composition adaptation rules.

composition_rules:
- compact width uses single-pane composition
- medium width may promote secondary panel visibility
- expanded width may keep summary and detail visible together
- expanded width may keep proposal editor and basis panel visible together
- expanded width may keep profit summary and breakdown visible together

screen_examples:
- ForecastListScreen supports list-detail composition on tablet
- ProposalBuilderScreen supports editor-basis-preview composition on tablet
- ProfitPreviewScreen supports summary-breakdown composition on tablet
- ForecastDetailScreen supports sticky summary plus detail region on tablet
