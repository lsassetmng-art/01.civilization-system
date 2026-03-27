# ============================================================
# COMPANY EVALUATION MODEL
# ============================================================

status: canonical
layer: model
scope: company-builder
component: company-evaluation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official model
for company evaluation.

Company evaluation is the structured assessment system
used to track company quality, activity, legitimacy,
and operational maturity over time.

Evaluation begins immediately at establishment.


# ============================================================
# 2. CORE RULE
# ============================================================

A company must receive evaluation as soon as it is established.

Two evaluation layers are mandatory:

- initial_evaluation
- current_evaluation

initial_evaluation is created immediately at establishment.
current_evaluation is continuously updated afterward.


# ============================================================
# 3. OFFICIAL FIELD SET
# ============================================================

A company evaluation structure should contain:

- company_id
- evaluation_profile_code
- initial_evaluation
- current_evaluation
- evaluation_history_ref
- last_evaluated_at
- evaluation_notes


# ============================================================
# 4. EVALUATION DIMENSIONS
# ============================================================

Recommended evaluation dimensions include:

- legitimacy_score
- activity_score
- product_quality_score
- compliance_score
- visibility_score
- growth_score
- reputation_score
- site_operation_score

Optional additional dimensions:
- asset_stability_score
- investment_performance_score
- portfolio_resilience_score


# ============================================================
# 5. INITIAL EVALUATION
# ============================================================

initial_evaluation is created at establishment time.

It should reflect:
- company type validity
- nation compatibility
- initial site validity
- initial product scope validity
- public profile completeness
- structural legitimacy

It must not depend on later performance history.


# ============================================================
# 6. CURRENT EVALUATION
# ============================================================

current_evaluation is the actively maintained evaluation state.

It should update from:
- ongoing activity
- sales and portfolio behavior
- site operation
- compliance behavior
- visibility and reputation
- growth trajectory
- optional asset-operation stability


# ============================================================
# 7. EVALUATION HISTORY
# ============================================================

Evaluation history should preserve time-based changes.

Recommended history dimensions:
- evaluation_snapshot_id
- company_id
- measured_at
- dimension_scores
- score_summary
- change_notes

This supports:
- comparison over time
- listing readiness logic
- analytics
- reviewer understanding


# ============================================================
# 8. LEGITIMACY SCORE
# ============================================================

legitimacy_score reflects whether the company
is structurally valid and socially recognized
as a legitimate operating entity.

Typical contributors:
- company type validity
- nation binding validity
- site existence
- public profile coherence
- operation consistency


# ============================================================
# 9. ACTIVITY SCORE
# ============================================================

activity_score reflects whether the company
is actively operating.

Typical contributors:
- active product portfolio
- live site operation
- transaction activity
- event activity where relevant
- management activity


# ============================================================
# 10. PRODUCT QUALITY SCORE
# ============================================================

product_quality_score reflects the quality posture
of the company’s offerings.

Typical contributors:
- content or product quality signals
- portfolio coherence
- low defect / low violation posture
- positive user reception if applicable


# ============================================================
# 11. COMPLIANCE SCORE
# ============================================================

compliance_score reflects regulatory
and policy adherence.

Typical contributors:
- rule-conforming site operations
- distribution compliance
- listing compliance where relevant
- marketplace compliance
- moderation / policy incident posture


# ============================================================
# 12. VISIBILITY AND REPUTATION
# ============================================================

visibility_score reflects public discoverability and presence.

reputation_score reflects trust, public perception,
and sustained quality signals.

These must remain distinct.
A company may be visible without being reputable,
or reputable without being highly visible.


# ============================================================
# 13. SITE OPERATION SCORE
# ============================================================

site_operation_score reflects how well
the company operates its actual sites.

Typical contributors:
- valid opening state
- stable occupancy relation
- operational continuity
- zone-compatible operation
- branch expansion stability


# ============================================================
# 14. GROWTH SCORE
# ============================================================

growth_score reflects whether the company
is developing positively over time.

Typical contributors:
- sales growth
- portfolio expansion
- site expansion
- evaluation trend improvement
- stable management


# ============================================================
# 15. ASSET-RELATED OPTIONAL SCORES
# ============================================================

Where asset operation is relevant,
evaluation may include:

asset_stability_score:
- stability of asset base

investment_performance_score:
- performance of equity / real-estate operation

portfolio_resilience_score:
- diversification and downside resilience

These are supplementary, not primary operating substitutes.


# ============================================================
# 16. LISTING CONNECTION
# ============================================================

Evaluation is one of the foundations
for listing readiness.

Typical listing-relevant dimensions:
- current evaluation score
- activity score
- compliance score
- disclosure-aligned quality signals

Evaluation does not itself list the company,
but it materially affects readiness.


# ============================================================
# 17. ANALYTICS CONNECTION
# ============================================================

Evaluation should connect to analytics views.

Examples:
- evaluation trend chart
- score breakdown view
- company comparison view
- listing readiness diagnostic


# ============================================================
# 18. FINAL RULE
# ============================================================

Company evaluation starts at establishment,
continues over time,
and must remain structured, explainable, and comparable.

No company should exist in established state
without evaluation being initialized.
