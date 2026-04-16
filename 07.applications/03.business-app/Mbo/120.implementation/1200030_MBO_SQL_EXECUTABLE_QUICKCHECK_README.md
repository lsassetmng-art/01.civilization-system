# ============================================================
# MBO SQL EXECUTABLE QUICKCHECK README
# ============================================================

status: canonical
application: Mbo
layer: implementation
owner: Boss
prepared_by: Zero
reviewer: Sato

purpose:
Explains how to use the executable quick-check SQL pack.

recommended_use_order:
- apply integrated SQL
- apply sample test data pack
- run executable quick-check SQL
- review result output
- optionally run negative tests inside rollback block

what_it_checks:
- table existence
- row counts
- constraints/indexes/triggers presence
- helper views
- validation views
- sample data integrity
- updated_at trigger smoke test
- dashboard aggregate base output

note:
RLS helper output depends on request.jwt.claims context.
Without application auth context, helper function results may be null.

