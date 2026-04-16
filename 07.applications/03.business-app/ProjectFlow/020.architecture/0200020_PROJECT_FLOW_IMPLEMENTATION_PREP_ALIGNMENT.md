# ============================================================
# PROJECT FLOW IMPLEMENTATION PREP ALIGNMENT
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Aligns implementation-detail preparation with architecture decisions.

alignment_rules:
- use case grouping must follow domain boundaries
- screen state design must not re-own business truth
- repository and gateway boundaries must remain separate
- migration split must preserve additive introduction path
- implementation detail must not bypass shared BusinessOS architecture
