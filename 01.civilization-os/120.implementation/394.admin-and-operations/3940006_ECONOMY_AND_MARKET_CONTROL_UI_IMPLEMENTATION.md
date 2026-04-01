# ============================================================
# ECONOMY AND MARKET CONTROL UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: economy-and-market-control-ui-implementation
component: economy-and-market-control-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for economy and market control UI
inside Civilization.

This document must align with:

- ECONOMY_AND_MARKET_CONTROL_ARCHITECTURE
- ECONOMY_AND_MARKET_CONTROL_UI_INTERFACE
- ECONOMIC_AND_FINANCIAL_CALCULATION_IMPLEMENTATION
- PRICING_AND_RATING_CALCULATION_IMPLEMENTATION
- MACRO_INDICATOR_CALCULATION_IMPLEMENTATION


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

Economy and market control UI must implement:

- market posture visibility
- rating posture visibility
- macro-indicator visibility
- anomaly review
- recalculation triggering
- market-control supervision where policy allows


# ============================================================
# 3. DASHBOARD INITIAL LOAD RULE
# ============================================================

The economy dashboard should prioritize:

1. land / asset posture summary
2. stock / bond posture summary
3. FX / rating summary
4. macro summary
5. anomaly summary

This keeps market-critical posture visible early.


# ============================================================
# 4. ANOMALY REVIEW RULE
# ============================================================

Anomaly review should expose:

- target market or indicator
- current value
- prior posture
- trend posture
- suspected anomaly type
- available recalculation or escalation action

Anomaly review must not silently mutate values.


# ============================================================
# 5. RECALCULATION RULE
# ============================================================

Recalculation actions must remain explicit.

Possible actions include:

- trigger land recalculation
- trigger stock recalculation
- trigger bond recalculation
- trigger FX recalculation
- trigger rating recalculation
- trigger macro recalculation

The UI should show that recalculation
is supervisory action,
not arbitrary hidden edit.


# ============================================================
# 6. FINAL RULE
# ============================================================

Economy and market control UI implementation must remain:

- indicator-visible
- anomaly-aware
- recalculation-explicit
- authority-governed
- traceable
