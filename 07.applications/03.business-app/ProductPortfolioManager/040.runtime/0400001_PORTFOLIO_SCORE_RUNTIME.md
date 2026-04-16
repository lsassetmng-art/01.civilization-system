# ============================================================
# PORTFOLIO SCORE RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

runtime_steps:
1. load product reference scope
2. fetch authoritative business indicators
3. resolve scoring formula version
4. calculate or hydrate score records
5. persist score snapshot
6. expose score explanation metadata

runtime_rules:
- score version must be explicit
- source metrics must be attributable
- failures must not fabricate values
