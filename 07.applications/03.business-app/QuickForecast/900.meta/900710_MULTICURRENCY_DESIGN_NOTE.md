# ============================================================
# MULTICURRENCY DESIGN NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes multicurrency design direction.

summary:
QuickForecast multicurrency support is not simple display switching only.
It includes:
- source currency handling
- base currency comparison
- display currency rendering
- exchange rate traceability
- proposal monetary basis visibility
- multicurrency profit preview

important_decision:
Display currency and canonical money meaning remain separate.
