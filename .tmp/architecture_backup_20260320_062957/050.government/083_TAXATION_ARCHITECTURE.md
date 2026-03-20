# ============================================================
# TAXATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Taxation collects public revenue from economic activity.

purpose:
- fund treasury
- influence behavior

tax_types:
- income_tax
- corporate_tax
- consumption_tax

rules:
- tax must be calculated explicitly
- no hidden deduction

event_flow:
- tax_calculated
- tax_collected
- treasury_updated

final_rule:
Taxation must be transparent and event-driven.
