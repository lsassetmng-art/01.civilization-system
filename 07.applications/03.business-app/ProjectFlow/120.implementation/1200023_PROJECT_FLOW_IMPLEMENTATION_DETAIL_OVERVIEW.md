# ============================================================
# PROJECT FLOW IMPLEMENTATION DETAIL OVERVIEW
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-detail design entry points
without starting development.

detail_targets:
- screen state design
- screen event design
- repository interface shaping
- gateway interface shaping
- use case grouping
- migration split planning
- validation responsibility split
- error handling responsibility split

principles:
- keep implementation detail aligned with canonical architecture
- do not collapse BusinessOS integration boundary
- preserve smartphone and PC functional parity
- keep read-model views separate from source-of-truth ownership
