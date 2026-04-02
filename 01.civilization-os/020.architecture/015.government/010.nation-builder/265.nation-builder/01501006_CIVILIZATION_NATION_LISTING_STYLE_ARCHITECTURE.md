# ============================================================
# CIVILIZATION NATION LISTING STYLE ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official nation-configurable listing style architecture
inside CivilizationOS.

This architecture covers:
- nation-level listing system style
- multi-tier market structure
- market-tier-specific thresholds
- listing eligibility by company type
- listing / IPO readiness and promotion/demotion logic


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Listing style must be nation-configurable.

A nation may choose:
- strict public market style
- growth-oriented market style
- multi-tier market style
- state-guided market style
- hybrid market style

Core principle:

listing system style belongs to nation configuration,
not to one global fixed rule set


# ============================================================
# 2. MARKET TIER PRINCIPLE
# ============================================================

A nation may define one or more market tiers.

Recommended examples:
- prime_market
- standard_market
- growth_market
- venture_market
- regional_market
- special_public_market

A market tier must define:
- target company profile
- threshold profile
- readiness rules
- promotion/demotion behavior


# ============================================================
# 3. LISTING ELIGIBILITY PRINCIPLE
# ============================================================

A company type may be:
- listing_eligible
- listing_restricted
- listing_ineligible

Examples likely ineligible:
- religious_corporation
- public_interest_corporation
- system_company classes where excluded

This must be explicit.


# ============================================================
# 4. THRESHOLD PRINCIPLE
# ============================================================

Listing thresholds should support at minimum:
- minimum operating period
- minimum evaluation score
- minimum activity score
- minimum compliance state
- minimum disclosure state
- optional scale/capitalization rules where modeled

Thresholds may vary by market tier.


# ============================================================
# 5. POST-LISTING PRINCIPLE
# ============================================================

A multi-tier listing system may support:
- promotion to upper tier
- demotion to lower tier
- listing suspension
- delisting

These must remain explicit.


# ============================================================
# 6. FINAL ARCHITECTURAL RULE
# ============================================================

Nation listing style in CivilizationOS must be:
- nation-configurable
- market-tier-aware
- threshold-aware
- listing-eligibility-aware
- explicit in listed vs non-listed state
