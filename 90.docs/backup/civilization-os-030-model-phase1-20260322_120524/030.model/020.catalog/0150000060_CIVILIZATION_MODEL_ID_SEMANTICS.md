# ============================================================
# CIVILIZATION MODEL ID SEMANTICS
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0060
scope: civilization.model.id-semantics
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define what a model id means semantically.


# ============================================================
# SEMANTIC RULE
# ============================================================

A model id identifies a conceptual slot,
not a data row.

A model id means:

- this concept exists
- this concept belongs to one official domain
- this concept has one stable name
- this concept may evolve in description
- this concept must not change identity


# ============================================================
# SEMANTIC STABILITY
# ============================================================

country
must always mean the sovereign national entity concept

bank
must always mean the bank concept

loan
must always mean the loan concept

If meaning changes radically,
create a new id.


# ============================================================
# END
# ============================================================
