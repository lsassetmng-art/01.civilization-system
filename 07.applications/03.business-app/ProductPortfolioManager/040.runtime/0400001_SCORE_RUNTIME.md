# ============================================================
# SCORE RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

runtime_flow:
1. identify portfolio target scope
2. fetch or hydrate metric snapshot
3. resolve score version
4. calculate or load score values
5. persist score result
6. expose explanation metadata
7. surface classification suggestions where applicable

runtime_rules:
- score values must remain attributable
- score refresh time must be visible
- failures must not fabricate values
