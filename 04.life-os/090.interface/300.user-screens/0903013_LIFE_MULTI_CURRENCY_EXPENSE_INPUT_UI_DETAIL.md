# ============================================================
# LIFE MULTI CURRENCY EXPENSE INPUT UI DETAIL
# ============================================================

status: canonical-draft
system: life-os
layer: interface
domain: user-screens
owner: Boss
prepared_by: Zero

purpose:
Defines expense input UI behavior for multi-currency support.

screen_scope:
- source amount input
- source currency selection
- optional display currency preview
- conversion note display
- default currency assistance

ui_principles:
- original amount entry must be primary
- converted display values must be clearly secondary
- source currency must never be hidden
