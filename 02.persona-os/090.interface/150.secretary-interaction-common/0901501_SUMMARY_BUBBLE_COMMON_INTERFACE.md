# ============================================================
# SUMMARY BUBBLE COMMON INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: persona-os
owner: Boss
prepared_by: Zero

definition:
Defines common summary bubble interface expectations.

required UI elements:
- bounded summary area
- single dominant message presentation
- optional tap-to-open related destination
- distinguishable message source category where useful

rules:
- summary bubble must remain readable
- dominant message should be clear at a glance
