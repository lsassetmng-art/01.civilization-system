# ============================================================
# ECONOMIC AND FINANCIAL CALCULATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: economic-and-financial-calculation
component: economic-and-financial-calculation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical upper architecture
for economic, market, pricing, rating,
and macro-indicator calculation
inside Civilization.

This document supplements existing design assets such as:

- land_value_profile
- stock_market
- bond_market
- fx_market
- GDP simple formula posture

This document defines:

- calculation family boundaries
- market-price family boundaries
- rating family boundaries
- macro-indicator family boundaries
- relation between micro, market, and macro layers

This document does not redefine:

- existing land-value profile concepts
- existing stock existence and holding models
- existing bond-market domain existence
- existing FX principle ownership
- existing GDP concept existence


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Civilization economic calculation
must remain layered.

At minimum,
the following families must remain distinct.

- land and real-asset pricing
- stock pricing
- bond pricing and yield
- FX rate movement
- sovereign and corporate rating
- labor and consumption indicators
- GDP and investment indicators

These may interact,
but must not be collapsed
into one opaque economy number.


# ============================================================
# 3. EXISTING-ASSET PRESERVATION RULE
# ============================================================

This architecture is additive.

It preserves existing concepts such as:

- land value profile categories
- stock market and stock holding concepts
- bond market domain concepts
- FX architecture principles
- GDP existing simple formula posture

New calculation design
must complement these assets,
not erase them.


# ============================================================
# 4. CALCULATION HIERARCHY
# ============================================================

Economic calculation should be viewed
in the following hierarchy.

Layer 1:
micro posture
- household
- firm
- project
- asset
- listing
- labor unit

Layer 2:
market posture
- land market
- stock market
- bond market
- FX market

Layer 3:
rating posture
- state rating
- company rating

Layer 4:
macro posture
- unemployment
- consumption propensity
- GDP
- machinery orders
- related macro indicators

Higher layers may consume lower-layer outputs,
but lower layers must remain independently meaningful.


# ============================================================
# 5. INPUT FACTOR FAMILIES
# ============================================================

Economic and financial calculation
may consume inputs from:

- population
- geography
- infrastructure
- labor
- production
- logistics
- trade
- consumption
- policy
- risk and mortality families
- war posture
- epidemic posture
- famine posture
- financial-service posture
- confidence or sentiment posture

This document fixes the architectural allowance
for cross-domain inputs.


# ============================================================
# 6. OUTPUT FAMILIES
# ============================================================

Representative outputs include:

- land price posture
- stock price posture
- bond yield and price posture
- FX rate posture
- sovereign rating posture
- corporate rating posture
- unemployment posture
- consumption posture
- GDP posture
- machinery-order posture

Outputs may be used by:

- UI visibility
- economy simulation
- investment decision logic
- risk systems
- policy systems
- business operation systems


# ============================================================
# 7. REQUIRED CHILD ARCHITECTURES
# ============================================================

This document requires:

- PRICING_AND_RATING_CALCULATION_ARCHITECTURE
- MACRO_INDICATOR_CALCULATION_ARCHITECTURE


# ============================================================
# 8. FINAL RULE
# ============================================================

Civilization economic calculation architecture must remain:

- additive to existing design
- layered
- market-aware
- rating-aware
- macro-aware
- cross-domain-compatible
- implementation-ready
