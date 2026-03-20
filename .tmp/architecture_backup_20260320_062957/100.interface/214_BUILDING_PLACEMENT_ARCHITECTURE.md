# ============================================================
# BUILDING AND INSTITUTION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:

Buildings and institutions are placed and upgraded through UI actions.

examples:
- central_bank
- court
- prison
- police
- administration_center

rules:
- no fully automatic complete nation setup
- institutions start incomplete
- player/nation builds capacity progressively

principle:
- institutions are strategic assets
- they must be visible and interactive
