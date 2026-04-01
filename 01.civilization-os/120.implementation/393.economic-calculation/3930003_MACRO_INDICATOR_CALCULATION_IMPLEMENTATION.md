# ============================================================
# MACRO INDICATOR CALCULATION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: macro-indicator-calculation-implementation
component: macro-indicator-calculation-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation formulas
for unemployment, consumption propensity,
GDP, machinery orders,
and related macro indicators
inside Civilization.

This document supplements existing GDP posture
without replacing it.


# ============================================================
# 2. UNEMPLOYMENT RATE CALCULATION
# ============================================================

Representative unemployment-rate formula:

UnemploymentRate(t)
=
UnemployedLaborForce(t) / LaborForce(t)

LaborForce(t)
=
Employed(t) + Unemployed(t)

Employment update posture:

Employed(t+1)
=
Employed(t)
+ NewHires(t)
- Separations(t)


# ============================================================
# 3. CONSUMPTION PROPENSITY CALCULATION
# ============================================================

Representative average propensity to consume:

APC(t)
=
Consumption(t) / DisposableIncome(t)

Representative marginal propensity to consume:

MPC(t)
=
ΔConsumption(t) / ΔDisposableIncome(t)

Representative group-adjusted form:

MPC(group)
=
BaseMPC
+ LowIncomeBoost
- HighWealthDiscount
- FearShock
+ ConfidenceBoost


# ============================================================
# 4. GDP CALCULATION
# ============================================================

Representative structured GDP formula:

GDP(t)
=
C(t) + I(t) + G(t) + (X(t) - M(t))

where:

C = household consumption
I = corporate investment + housing investment + infrastructure investment
G = government spending
X = exports
M = imports

Existing simple posture such as
User Consumption + Company Transactions
may remain as fallback or legacy-compatible simplification,
but structured GDP is preferred.


# ============================================================
# 5. MACHINERY ORDER CALCULATION
# ============================================================

Representative machinery-order formula:

MachineryOrders(t)
=
BaseDemand(t)
× CapacityExpansionFactor(t)
× ProfitExpectationFactor(t)
× InterestRateFactor(t)
× ConfidenceFactor(t)

Alternative capex-derived posture:

MachineryOrders(t)
=
Σ [ PlannedCapex(i,t) × EquipmentIntensity(i) ]

where:

PlannedCapex(i,t)
=
RevenueExpectation(i,t)
× CapacityNeed(i,t)
× Confidence(i,t)
× FinancingAvailability(i,t)


# ============================================================
# 6. RELATED COMMON UPDATE RULE
# ============================================================

Macro indicators may use smoothed update posture:

X(t+1)
=
(1 - λ) × X(t) + λ × X_new

This is recommended for:

- unemployment
- consumption propensity
- GDP growth posture
- machinery orders

to reduce extreme simulation instability.


# ============================================================
# 7. FINAL RULE
# ============================================================

Macro-indicator implementation must remain:

- formula-explicit
- GDP-compatible
- labor-aware
- consumption-aware
- investment-aware
- smoothing-compatible
