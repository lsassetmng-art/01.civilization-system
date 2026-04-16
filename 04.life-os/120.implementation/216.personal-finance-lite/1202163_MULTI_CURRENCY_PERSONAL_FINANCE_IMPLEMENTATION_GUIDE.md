# ============================================================
# MULTI CURRENCY PERSONAL FINANCE IMPLEMENTATION GUIDE
# ============================================================

status: canonical-draft
system: life-os
layer: implementation
domain: personal-finance-lite
owner: Boss
prepared_by: Zero

purpose:
Provides implementation guidance for multi-currency support in LifeOS.

implementation_guidance:
- preserve source currency as original fact
- treat display currency as summary-facing projection
- keep conversion trace available
- avoid accounting-grade complexity
- prefer readable private-life summaries over ledger-style views
