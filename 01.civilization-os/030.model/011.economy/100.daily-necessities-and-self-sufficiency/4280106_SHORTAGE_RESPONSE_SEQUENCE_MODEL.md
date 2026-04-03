# ============================================================
# SHORTAGE RESPONSE SEQUENCE MODEL
# ============================================================

status: canonical
layer: model
scope: daily-necessities-and-self-sufficiency
component: shortage-response-sequence

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RESPONSE ORDER
# ============================================================

response_order:
- household_stock_consumption
- self_sufficiency_output_consumption
- minimum_survival_purchase
- household_support
- neighborhood_or_civil_aid
- public_assistance
- ration_distribution
- unresolved_shortage_penalty


# ============================================================
# 2. FINAL RULE
# ============================================================

Shortage response
must try local and lawful continuity paths
before severe deterioration.
