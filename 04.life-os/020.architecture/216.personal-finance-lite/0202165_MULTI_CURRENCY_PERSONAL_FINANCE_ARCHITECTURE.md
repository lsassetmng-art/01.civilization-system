# ============================================================
# MULTI CURRENCY PERSONAL FINANCE ARCHITECTURE
# ============================================================

status: canonical-draft
system: life-os
layer: architecture
domain: personal-finance-lite
owner: Boss
prepared_by: Zero

purpose:
Defines how LifeOS personal-finance-lite supports multiple currencies.

summary:
LifeOS stores the original expense currency as source currency,
and may also compute a display currency for summary and review purposes.
This separation allows understandable private-life finance support
without turning LifeOS into a business accounting engine.

architectural_role:
- store source amount and source currency
- store optional display amount and display currency
- support budget review in a chosen comparison currency
- preserve conversion trace and timing reference

boundaries:
- source currency is the factual original currency
- display currency is the user-facing summary currency
- conversion is for review and visibility, not accounting truth
- exchange-rate handling must remain bounded and explainable

core_components:
- default currency resolver
- expense source/display currency handler
- budget comparison currency handler
- conversion reference boundary
- multi-currency summary generator
