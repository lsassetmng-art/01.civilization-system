# ============================================================
# BOOKING AND STAY MODEL
# ============================================================

status: canonical
layer: model
scope: industry-pack
component: booking-and-stay

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SUPPORTED OBJECTS
# ============================================================

- booking
- stay_unit
- hospitality_service_record
- tourism_package
- visitor_support_record


# ============================================================
# 2. FINAL RULE
# ============================================================

Booking and stay objects must remain unit-aware and schedule-aware.
