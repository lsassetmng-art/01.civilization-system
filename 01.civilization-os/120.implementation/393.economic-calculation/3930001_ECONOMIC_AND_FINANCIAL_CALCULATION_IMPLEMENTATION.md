# ============================================================
# ECONOMIC AND FINANCIAL CALCULATION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: economic-and-financial-calculation-implementation
component: economic-and-financial-calculation-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the shared implementation posture
for economic, pricing, rating,
and macro-indicator calculation
inside Civilization.

This document must align with:

- ECONOMIC_AND_FINANCIAL_CALCULATION_ARCHITECTURE
- ECONOMIC_AND_FINANCIAL_CALCULATION_MODEL
- existing land_value_profile concepts
- existing stock / bond / fx / GDP concepts


# ============================================================
# 2. SHARED IMPLEMENTATION PHASES
# ============================================================

All economic calculation families
should follow this high-level order.

Phase 1:
collect factors

Phase 2:
normalize factor posture

Phase 3:
apply family-specific weighting

Phase 4:
compute raw value

Phase 5:
apply smoothing where required

Phase 6:
update trend or band posture

Phase 7:
persist calculation result


# ============================================================
# 3. SMOOTHING RULE
# ============================================================

To avoid unstable simulation spikes,
economic values may use smoothing such as:

X(t+1) = (1 - λ) * X(t) + λ * X_new

where:

- X(t) is prior value
- X_new is newly computed value
- λ is smoothing weight

This rule is especially useful for:

- land prices
- FX
- stock prices
- macro indicators


# ============================================================
# 4. SHOCK AND STRUCTURAL SEPARATION RULE
# ============================================================

Implementation should distinguish between:

- structural factor
- cyclical factor
- shock factor

This improves stability and explainability.

Representative pattern:

X_change = StructuralTrend + CyclicalComponent + ShockComponent


# ============================================================
# 5. EXISTING-ASSET COMPATIBILITY RULE
# ============================================================

Where existing design already defines
profiles, markets, or simple formulas,
implementation must extend rather than replace.

Representative examples:

- land_value_profile remains valid as a profile layer
- stock market remains valid as market container
- bond market remains valid as instrument domain
- FX principle remains valid as governance layer
- GDP simple formula remains valid as fallback posture


# ============================================================
# 6. FINAL RULE
# ============================================================

Shared economic implementation must remain:

- additive
- factor-readable
- smoothing-capable
- shock-aware
- compatible with existing calculation-adjacent assets
