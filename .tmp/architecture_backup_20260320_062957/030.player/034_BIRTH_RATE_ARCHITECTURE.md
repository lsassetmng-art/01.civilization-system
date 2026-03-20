# ============================================================
# BIRTH RATE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Birth rate expresses how frequently childbirth emerges across the society.

purpose:
- influence population continuity
- connect family, economy, loyalty, and stability
- support long-horizon civilization simulation

drivers:
- economic stability
- household viability
- health
- security
- loyalty
- law and welfare conditions

rules:
- birth rate is not direct child creation
- actual childbirth always requires explicit childbirth events
- population trend may be modeled statistically, but person-level birth must be event-based

event_flow:
- birth_rate_context_recalculated
- childbirth_eligibility_evaluated
- childbirth_event_created
- household_population_updated

constitution_alignment:
- no direct population mutation
- explicit event required for person-level change

final_rule:
Birth rate may shape probability, but childbirth must always be explicit.
