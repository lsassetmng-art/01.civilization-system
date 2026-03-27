# ============================================================
# LIVING SPACE TO EVENT INFLUENCE MODEL
# ============================================================

status: canonical
layer: model
scope: living-space-room-layout-and-cohabitation-culture-seed
component: living-space-to-event-influence

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INFLUENCE RULES
# ============================================================

influence_rules:
- dwelling_size_expectation_tendency modifies household satisfaction and status-comparison events
- room_separation_strength_tendency modifies privacy conflict and role-separation events
- privacy_importance_tendency modifies cohabitation strain and youth independence events
- multigenerational_cohabitation_tendency modifies eldercare and household burden sharing events
- child_room_independence_tendency modifies education concentration and child autonomy events
- elder_co_residence_tendency modifies late-life family care and household crowding events
- shared_family_space_importance_tendency modifies family-bond and communal meal events
- guest_space_importance_tendency modifies hospitality and ceremonial visit events
- household_work_visibility_tendency modifies gendered labor and care-burden events
- storage_and_stockpiling_importance_tendency modifies disaster resilience and household planning events
- rental_compaction_tendency modifies delayed family formation and urban stress events
- class_dwelling_gap_tendency modifies visible inequality and domestic aspiration events


# ============================================================
# 2. FINAL RULE
# ============================================================

Living-space indicators must be usable
as modifiers for family, housing, risk, and care events.
