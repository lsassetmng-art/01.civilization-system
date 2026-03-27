# ============================================================
# CIVILIZATION COMPANY EVALUATION AND LISTING ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official company evaluation and listing architecture
inside CivilizationOS.

This architecture covers:
- initial evaluation at company creation
- ongoing company rating/evaluation
- public evaluation visibility
- listing-readiness / IPO-readiness
- post-threshold listing eligibility

This architecture explicitly assumes:
- a company is evaluated from the moment it is created
- listing or going public is not immediate
- listing is allowed only after threshold criteria are satisfied


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Company evaluation begins at creation.

The system must distinguish:
- initial evaluation
- ongoing evaluation
- public rating visibility
- listing-readiness
- listed status

Core principle:

company creation
immediately creates evaluable business existence


# ============================================================
# 2. INITIAL EVALUATION PRINCIPLE
# ============================================================

At or immediately after company creation,
the system should evaluate at minimum:
- company type coherence
- setup completeness
- site presence readiness
- product/service readiness
- credibility / baseline trust score
- early visibility / early quality signals where available

This is initial company evaluation,
not listing approval.


# ============================================================
# 3. LISTING / IPO PRINCIPLE
# ============================================================

Listing or going public should only be allowed
after configured threshold criteria are satisfied.

Examples:
- operational maturity
- evaluation score threshold
- minimum activity / sales / capitalization where modeled
- policy compliance
- readiness review pass

Listing-readiness must be explicit.
Listed status must be distinct from private operation.


# ============================================================
# 4. FINAL ARCHITECTURAL RULE
# ============================================================

Company evaluation and listing architecture in CivilizationOS must be:
- creation-aware
- score-aware
- readiness-aware
- threshold-aware
- explicit in listed vs non-listed state
