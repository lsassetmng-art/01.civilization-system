# ============================================================
# GENERATION READINESS ASSESSMENT RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
application: App Development Studio

purpose:
Defines how imported or authored design inputs are judged for generation readiness.

assessment_dimensions:
- completeness
- granularity
- ambiguity
- dependency resolution
- reusable component readiness
- connection readiness
- output readiness

runtime_steps:
1. parse design context
2. score readiness dimensions
3. collect gaps
4. collect ambiguities
5. determine overall decision
