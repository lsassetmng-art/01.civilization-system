# ============================================================
# CIVILIZATION REAL ESTATE VALUATION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official real-estate valuation architecture
for CivilizationOS.

This architecture defines how land value, building value,
unit value, rent value, and transaction reference value
should be determined.

This architecture assumes:
- Foundation world truth is authoritative
- continent valuation personality is already defined
- nation-specific property regime is handled separately


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Real-estate valuation must be split into:

1. world-common base value
2. local geographic/district adjustment
3. object-specific adjustment
4. nation-regime marketability adjustment
5. transaction final price

Core principle:

place value and property utility are not identical  
legal marketability and transaction finality are not identical


# ============================================================
# 2. VALUE LAYERS
# ============================================================

Minimum valuation layers:

- macro geographic value
- regional/district value
- property-class value
- object-condition value
- legal marketability value
- transaction price

These layers must remain conceptually distinct.


# ============================================================
# 3. LAND VALUE
# ============================================================

Land base value should derive from:

- continent valuation personality
- region rank
- district rank
- parcel rank
- property_use_class
- commercial_value
- residential_value
- logistics_value
- infrastructure_value
- strategic_value
- scarcity_value
- prestige_value

land value should represent:
- base location desirability
- infrastructure and access value
- scarcity and concentration value
- utility for its use class

Land value does not yet require exact area dependence.
Area may be added later as an expansion factor.


# ============================================================
# 4. BUILDING VALUE
# ============================================================

Building base value should derive from:

- building_type
- building_grade
- building_status
- construction_state
- building_use_class
- district rank
- infrastructure_value
- prestige_value
- local demand pressure

recommended building grades:
- luxury
- premium
- standard
- aging
- damaged

Building value should capture:
- replacement/quality tendency
- condition tendency
- district utility tendency
- prestige or function premium


# ============================================================
# 5. BUILDING UNIT VALUE
# ============================================================

Building unit value should derive from:

- building value baseline
- unit_type
- unit_status
- unit_area where available
- local use-class demand
- unit-specific desirability adjustments

Examples of unit adjustments:
- premium commercial frontage
- premium office access
- premium residential outlook
- constrained logistics access
- special protected/cultural value


# ============================================================
# 6. RENT VALUE
# ============================================================

Rent value must be treated separately from sale value.

Rent base value should derive from:

- district rank
- residential_value or commercial_value
- infrastructure_value
- safety_value
- scarcity_value
- prestige_value
- use-class demand
- occupancy utility

This supports:
- residential rent
- office rent
- retail rent
- industrial usage rent
- state allocation fee analogs where applicable


# ============================================================
# 7. MARKETABILITY ADJUSTMENT
# ============================================================

Legal marketability is separate from world-common value.

Marketability adjustment may later reflect:
- whether ownership is legal
- whether lease dominates
- whether company holding is legal
- whether foreign holding is legal
- whether approval is required
- whether transfer liquidity is constrained

This layer must consume nation property regime outputs,
not replace them.

High-value land may still have low free-market liquidity
if regime restrictions are strong.


# ============================================================
# 8. TRANSACTION REFERENCE VALUE
# ============================================================

The system should distinguish:

- assessed_value
- listing_reference_value
- offer_reference_value
- contract_reference_value
- closing_final_value
- rent_reference_value

These must not collapse into one price only.

Meaning:
- assessed_value = system/reference valuation
- listing_reference_value = seller-side reference
- offer_reference_value = buyer-side proposal
- contract_reference_value = negotiated agreement
- closing_final_value = final transaction result
- rent_reference_value = expected occupancy price level


# ============================================================
# 9. CONTINENT-SPECIFIC BIAS
# ============================================================

Central continent bias:
- stronger finance/prestige premium
- stronger administrative/capital premium
- stronger education/research premium

North continent bias:
- stronger industrial/resource premium
- stronger production corridor premium
- stronger utility-over-prestige pricing

South continent bias:
- stronger maritime/cultural premium
- stronger coastal scarcity premium
- stronger renewal/heritage premium


# ============================================================
# 10. POPULATION RELATION
# ============================================================

The world total population of roughly 1 billion
must influence valuation through:
- concentration pressure
- city hierarchy pressure
- district scarcity
- housing demand
- commercial demand
- infrastructure load/value

Population effect should be modeled through density and demand layers,
not raw population only.


# ============================================================
# 11. FUTURE AREA EXPANSION
# ============================================================

If and when area becomes fully modeled,
valuation may later include:
- parcel_area
- building_area
- unit_area

Future formula style may become:

base_value
x density_adjustment
x scarcity_adjustment
x area_adjustment
x regime_marketability_adjustment

Current architecture must remain valid without full area detail.


# ============================================================
# 12. REIT / SECURITIZATION RESERVATION
# ============================================================

This architecture values direct real-estate objects and transactions.

It should leave room for future layers such as:
- pooled vehicle valuation
- yield-product valuation
- securitized real-estate valuation

But those are outside current scope.


# ============================================================
# 13. FINAL ARCHITECTURAL RULE
# ============================================================

CivilizationOS real-estate valuation must remain layered and explicit.

Core summary:

- land, building, unit, and rent value remain distinct
- continent and district personality affect base value
- nation regime affects marketability, not place identity
- assessed value and closing value are not the same
- future area modeling may extend but not invalidate this design
