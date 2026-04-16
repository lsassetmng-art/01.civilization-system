# ============================================================
# PROJECT FLOW DB OWNER REVIEW UNLOCK MATRIX
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Provides a practical matrix for what is unlocked by DB-owner review result.

unlock_matrix:

schema_confirmation:
- unlocked_on: pass_or_partial_if_explicitly_confirmed
- remains_blocked_on: hold_or_unconfirmed_partial

migration_hardening_order:
- unlocked_on: pass_or_partial_if_explicitly_confirmed
- remains_blocked_on: hold_or_unconfirmed_partial

constraint_hardening:
- unlocked_on: pass_or_partial_if_explicitly_confirmed
- remains_blocked_on: hold_or_unconfirmed_partial

trigger_rollout:
- unlocked_on: pass_or_partial_if_explicitly_confirmed
- remains_blocked_on: hold_or_unconfirmed_partial

rls_direction:
- unlocked_on: pass_or_partial_if_explicitly_confirmed
- remains_blocked_on: hold_or_unconfirmed_partial

important_rule:
Partial result never unlocks unspecified DB areas automatically.
