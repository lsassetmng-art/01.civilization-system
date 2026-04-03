# ============================================================
# CRIME ACCIDENT AND ILLNESS EVENT MODEL
# ============================================================

status: canonical
layer: model
scope: risk-and-disruption-event-seed
component: crime-accident-and-illness-event

owner: Boss
prepared_by: Zero


# ============================================================
# 1. EVENT FAMILY
# ============================================================

event_family:
- theft_or_fraud_occurred
- violent_incident_occurred
- workplace_accident_occurred
- transport_accident_occurred
- maritime_accident_occurred
- chronic_illness_detected
- acute_illness_detected
- long_term_recovery_started
- care_burden_shifted_to_household


# ============================================================
# 2. FINAL RULE
# ============================================================

Crime, accident, and illness events must connect
public safety, labor exposure, and household burden.
