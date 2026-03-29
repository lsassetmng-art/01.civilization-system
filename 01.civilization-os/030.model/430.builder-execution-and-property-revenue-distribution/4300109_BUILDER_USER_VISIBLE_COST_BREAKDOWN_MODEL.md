# ============================================================
# BUILDER USER VISIBLE COST BREAKDOWN MODEL
# ============================================================

status: canonical
layer: model
scope: builder-execution-and-property-revenue-distribution
component: builder-user-visible-cost-breakdown

owner: Boss
prepared_by: Zero


# USER VISIBLE COST BLOCKS

user_visible_cost_blocks:
- construction_cost
- land_cost
- mediation_fee
- tax_or_registration_fee
- maintenance_estimate


# INTERNAL RULE

User-facing totals may be simplified,
but internal revenue distribution
must remain explicit and auditable.


# FINAL RULE

Builder UI
must present understandable totals
without collapsing internal accounting truth.
