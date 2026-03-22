# ============================================================
# CIVILIZATION MODEL EVOLUTION RULE
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0070
scope: civilization.model.evolution-rule
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define how models are added, split, merged,
deprecated, and expanded.


# ============================================================
# RULES
# ============================================================

1.
new model only if existing models cannot represent
the concept cleanly

2.
prefer extending data semantics before adding models

3.
prefer adding relations before adding duplicate models

4.
prefer splitting a model only when the concept has
independent semantics

5.
deprecated models remain reserved in the registry


# ============================================================
# SPLIT RULE
# ============================================================

Split a model when one concept actually contains
two independent conceptual structures.

Example

organization
may stay one model

but if organizational_unit develops completely different
rules, it may split into a separate model.


# ============================================================
# MERGE RULE
# ============================================================

Merge models when multiple models represent
the same abstraction at different names.

Example

trade_market and commerce_market
should probably merge if semantics overlap.


# ============================================================
# END
# ============================================================
