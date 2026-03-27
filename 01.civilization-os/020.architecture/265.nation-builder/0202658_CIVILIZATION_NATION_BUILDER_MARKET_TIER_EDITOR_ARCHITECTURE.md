# ============================================================
# CIVILIZATION NATION BUILDER MARKET TIER EDITOR ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official market tier editor architecture
inside CivilizationOS nation builder UI.

This architecture covers:
- listing style selection
- market tier creation/editing
- threshold rule editing
- company-type listing eligibility editing
- market tier validation


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

The market tier editor must edit draft listing-style state,
not active listing-style truth directly.

Core principle:

listing style and market tiers are part of nation draft configuration


# ============================================================
# 2. EDITOR SCOPE
# ============================================================

The market tier editor must support:
- selecting nation listing system style
- enabling/disabling multi-tier mode
- creating/editing market tiers
- setting tier rank and display name
- setting tier threshold rules
- setting company-type listing eligibility
- setting post-listing behavior profiles where modeled


# ============================================================
# 3. TIER EDITOR PRINCIPLE
# ============================================================

The UI should distinguish:
- listing style summary
- market tier list
- selected market tier detail
- company-type eligibility matrix
- readiness threshold editor

These should not collapse into one undifferentiated form.


# ============================================================
# 4. VALIDATION PRINCIPLE
# ============================================================

The market tier editor must support validation for:
- duplicate tier rank
- invalid threshold ordering
- missing threshold values
- impossible eligibility/rule combinations
- invalid style/tier combinations

Validation results should be navigable from the editor.


# ============================================================
# 5. FINAL ARCHITECTURAL RULE
# ============================================================

The market tier editor in CivilizationOS nation builder must be:
- draft-aware
- tier-aware
- threshold-aware
- eligibility-aware
- validation-aware
