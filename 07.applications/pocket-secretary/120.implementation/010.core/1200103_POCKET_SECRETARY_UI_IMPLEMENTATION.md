# ============================================================
# POCKET SECRETARY UI IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines implementation guidance for screen and UI realization.

implementation directions:
- screens should reflect bounded interface domains
- state rendering must distinguish local, pending, confirmed, failed, conflicted, and offline
- review-required actions should have dedicated surfaces
- UI code should not own integration authority logic

examples:
- dashboard screen
- schedule screen
- todo screen
- note/archive screen
- settings screen
- ERP request review screen
