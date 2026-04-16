# ============================================================
# SCREEN RESPONSIBILITY HARDENING INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Hardens screen-level responsibility boundaries.

screen_responsibilities:

dashboard:
- entry summary only
- recent items and quick actions
- no deep editing responsibility

forecast_list:
- browsing and selecting forecasts
- lightweight filtering and ordering
- no editing responsibility
- detail transition responsibility allowed

forecast_detail:
- read-centered detail view
- summary, basis visibility, and navigation hub
- edit transition responsibility allowed
- direct heavy editing responsibility not primary

forecast_editor:
- forecast input and revision
- field validation visibility
- no profit explanation responsibility
- no proposal basis comparison responsibility

action_board:
- action candidate browsing and comparison
- no final proposal editing responsibility

proposal_builder:
- proposal draft editing is primary
- proposal basis visibility is secondary
- tablet may co-display basis and preview
- canonical role remains editor-centered

profit_preview:
- financial preview and breakdown
- monetary basis visibility
- no canonical editing ownership
- explanation support may be shown, but editing remains outside

settings:
- locale / currency / display preference adjustment
- no business data editing responsibility

important_rule:
No screen may silently absorb another screen's canonical role
only because larger device space is available.
