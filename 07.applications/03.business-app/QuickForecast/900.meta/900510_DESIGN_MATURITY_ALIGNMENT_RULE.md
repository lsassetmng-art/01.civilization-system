# ============================================================
# DESIGN MATURITY ALIGNMENT RULE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines stable maturity wording.

canonical_maturity_phrase:
implementation-ready design

canonical_boundary_phrase:
design-only boundary

rule:
Use "implementation-ready design"
when describing current design maturity.

Use "design-only boundary"
when clarifying that implementation has not started.

avoid:
- implementation complete
- already implemented
- build-ready product
when only design completion is true.
