# ============================================================
# BUILDING PLACEMENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Building placement interface allows explicit placement and upgrading
of visible strategic institutions and facilities.

building_types:
- central_bank
- court
- prison
- police
- administration_center
- military_facility_if_allowed

responsibilities:
- display available building slots or placement contexts
- show requirements, costs, and effects
- submit placement or upgrade intent

rules:
- placement is not automatic
- building creation must require explicit player or authority action
- interface must show missing requirements clearly
- interface may not silently create institutions

integration_points:
- treasury
- law
- government
- runtime validation
- notification

final_rule:
Building placement is a visible strategic action surface,
not an automatic system side effect.
