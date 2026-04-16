# ============================================================
# MULTI DEVICE IMPLEMENTATION
# iPhone / Android / Tablet
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines implementation direction for multi-device support.

implementation_principles:
- shared canonical business flow across all devices
- shared state and repository structure
- adaptive presentation by width / size class
- no device-specific business rule divergence
- touch-first implementation across phone and tablet

implementation_rules:
- smartphone is the baseline implementation target
- tablet support expands layout density and visibility
- proposal, profit, and detail screens must support wider review patterns
- source / translated / multicurrency comparison may be shown together on larger screens
- no hover-dependent essential interaction
