# ============================================================
# LIFE OS MULTI CURRENCY SUPPORT
# ============================================================

status: canonical-draft
system: life-os
layer: constitution
domain: core
owner: Boss
prepared_by: Zero

purpose:
Defines the constitutional multi-currency support principle of LifeOS.

summary:
LifeOS personal-finance-lite must support multi-currency handling.
Original expense currency and user-facing display currency
must be separated clearly.

constitutional_rules:
- multi-currency support is required for personal-finance-lite
- source currency is the original factual currency
- display currency is the user-facing summary currency
- source and display currency must not be confused
- conversion behavior must remain explainable
- LifeOS must not become a business accounting engine
- budget review under mixed-currency conditions must remain understandable

required_scope:
- source currency storage
- display currency handling
- comparison currency handling
- currency-aware summary generation
- traceable conversion reference

boundary_rules:
- business accounting responsibility remains outside LifeOS
- exchange-rate use must remain bounded
- conversion is for life support visibility, not accounting truth

conclusion:
LifeOS must support multi-currency private-life finance handling
as a constitutional premise for future design and implementation.
