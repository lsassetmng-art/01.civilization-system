# ============================================================
# AMBIGUITY AND DUPLICATION REVIEW NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the main duplication and ambiguity review targets.

review_targets:
- overview files with similar roles
- repeated definition of Forecast -> Action -> Proposal -> Profit chain
- repeated explanation of Basic / Pro boundary
- repeated explanation of ERP coexistence
- repeated explanation of design-only boundary
- repeated explanation of local save vs governed action separation

review_rule:
Repetition is acceptable when it preserves local readability,
but wording should remain stable and role-consistent.

ambiguity_rule:
If two documents both explain the same thing,
one should act as folder guidance
and the other should act as content/body guidance.
