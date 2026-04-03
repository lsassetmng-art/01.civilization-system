# ============================================================
# PRICING AND RATING CALCULATION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: pricing-and-rating-calculation-implementation
component: pricing-and-rating-calculation-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation formulas
for land price, stock price,
bond pricing, FX rate movement,
and state / company rating
inside Civilization.

This document supplements existing market assets
without replacing them.


# ============================================================
# 2. LAND PRICE CALCULATION
# ============================================================

Representative land-price formula:

LandPrice(a,t)
=
BaseLandPrice(a)
× LocationFactor(a,t)
× DemandFactor(a,t)
× GrowthExpectationFactor(a,t)
× InfrastructureFactor(a,t)
× RiskDiscountFactor(a,t)

Representative normalized index form:

LandPriceIndex
=
1
+ 0.25 × Accessibility
+ 0.20 × PopulationPressure
+ 0.20 × CommercialAttractiveness
+ 0.15 × IncomeLevel
+ 0.10 × DevelopmentExpectation
- 0.20 × RiskLevel

LandPrice
=
BaseLandPrice × max(0.2, LandPriceIndex)

Existing land_value_profile may be used
as a banding or profile overlay,
not a replacement for formula.


# ============================================================
# 3. STOCK PRICE CALCULATION
# ============================================================

Representative valuation form:

StockPrice(i,t)
=
EPS(i,t) × PER(i,t)

Representative PER form:

PER(i,t)
=
BasePER
× GrowthFactor
× StabilityFactor
× LiquidityFactor
× RatingFactor
× MarketSentimentFactor

Alternative required-return form:

StockPrice(i,t)
=
ExpectedEarnings(i,t+1) × (1 + GrowthExpectation(i,t))
/
RequiredReturn(i,t)

RequiredReturn(i,t)
=
RiskFreeRate(t)
+ EquityRiskPremium(t)
+ FirmSpecificRiskPremium(i,t)


# ============================================================
# 4. GOVERNMENT BOND CALCULATION
# ============================================================

Representative government-bond yield:

GovBondYield(c,t)
=
RiskFreeBase(t)
+ InflationExpectation(c,t)
+ FiscalRiskPremium(c,t)
+ CurrencyRiskPremium(c,t)
+ PoliticalRiskPremium(c,t)

Representative government-bond price:

GovBondPrice
=
Σ[ Coupon / (1 + Yield)^k ] + FaceValue / (1 + Yield)^n

Simplified index form may be used:

GovBondPriceIndex
=
1 / (1 + GovBondYield)


# ============================================================
# 5. CORPORATE BOND CALCULATION
# ============================================================

Representative corporate-bond yield:

CorpBondYield(i,t)
=
GovBondYield(c,t)
+ CreditSpread(i,t)

CreditSpread(i,t)
=
BaseSpread
+ DefaultRiskPremium(i,t)
+ LiquidityPremium(i,t)
+ IndustryRiskPremium(i,t)

Representative corporate-bond price:

CorpBondPrice
=
Σ[ Coupon / (1 + CorpBondYield)^k ] + FaceValue / (1 + CorpBondYield)^n


# ============================================================
# 6. FX RATE CALCULATION
# ============================================================

Representative FX movement formula:

FX(A/B,t+1)
=
FX(A/B,t)
×
(1 + Δr - Δπ + Δtrade + Δcapital - Δrisk + Δsentiment)

Expanded rate-of-change form:

(ΔFX / FX)
=
α × InterestDiff
- β × InflationDiff
+ γ × TradeBalanceStrength
+ δ × CapitalInflowStrength
- ε × CountryRiskDiff
+ ζ × MarketSentiment

Existing FX principle remains governance owner.
This formula is the quantitative movement layer.


# ============================================================
# 7. STATE RATING CALCULATION
# ============================================================

Representative state-rating score:

StateRatingScore
=
w1 × FiscalStrength
+ w2 × GDPGrowthStrength
+ w3 × ExternalBalanceStrength
+ w4 × CurrencyStability
+ w5 × PoliticalStability
+ w6 × ReserveStrength
- w7 × DebtBurden
- w8 × WarRisk
- w9 × EpidemicRisk
- w10 × FamineRisk

Representative rating-band conversion:

90+  = AAA
80+  = AA
70+  = A
60+  = BBB
50+  = BB
40+  = B
30+  = CCC
20+  = CC
10+  = C
below = D-equivalent


# ============================================================
# 8. COMPANY RATING CALCULATION
# ============================================================

Representative company-rating score:

CompanyRatingScore
=
a1 × Profitability
+ a2 × CashFlowStrength
+ a3 × LiquidityStrength
+ a4 × MarketPosition
+ a5 × GovernanceStrength
- a6 × Leverage
- a7 × EarningsVolatility
- a8 × IndustryRisk
- a9 × CountryRisk

Representative sovereign-adjusted posture:

AdjustedCorporateRating
=
f(CompanyStandaloneScore, SovereignConstraint)


# ============================================================
# 9. FINAL RULE
# ============================================================

Pricing and rating implementation must remain:

- formula-explicit
- additive to existing market assets
- smoothing-compatible
- cross-market-aware
- rating-aware
