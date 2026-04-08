# ============================================================
# POCKET SECRETARY COMPANY SECRETARY IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines implementation guidance for company secretary consumption
from BusinessOS.

implementation directions:
- resolve BusinessOS company secretary reference at Enterprise entry points
- render BusinessOS local display name when available
- keep company secretary and personal secretary state separate
- block unavailable company secretary with fail-closed handling

rules:
- PocketSecretary must not implement employment logic here
- PocketSecretary must not own knowledge-growth persistence here
