# ============================================================
# PRODUCT PORTFOLIO MANAGER MINIMAL ROLLBACK NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines a minimal rollback philosophy
for a future broad reflection insertion pass.

rollback_principles:
- rollback only if insertion degraded clarity
- rollback should be local to the broad target file
- local ProductPortfolioManager design set should remain untouched
- prefer reverting the inserted navigation block only,
  not broad rewriting of unrelated target sections

rollback_triggers:
- inserted block duplicates an existing app entry in a conflicting way
- inserted block makes the broad file harder to read
- inserted block accidentally implies implementation work started
- inserted block weakens source-of-truth boundaries
- inserted block uses the wrong insertion depth for the target

formal_conclusion:
Rollback in a broad reflection pass should be small,
targeted,
and meaning-preserving.
