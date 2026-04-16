# ============================================================
# FEATURE EXPANSION POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines rules for competitor-aware feature expansion.

allowed_expansion_direction:
- strengthen forecast to proposal linkage
- strengthen scenario-driven proposal differentiation
- strengthen explanation and review support
- strengthen pre-ERP business operation

disallowed_expansion_direction:
- becoming a full CRM replacement
- becoming a pure proposal delivery platform
- becoming a pure forecasting engine arms race

rule:
Every added feature must strengthen
the canonical Forecast -> Action -> Proposal -> Profit chain.
