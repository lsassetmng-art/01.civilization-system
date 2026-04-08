# ============================================================
# JAVA SKELETON RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
application: App Development Studio

purpose:
Defines how the MVP Java skeleton should be used at runtime.

runtime_shape:
- UI collects input
- application services validate and orchestrate
- domain policy/runtime objects decide control
- infrastructure gateways persist and execute
- API DTOs map request/response shapes

runtime_rules:
- controllers or UI handlers should not embed policy logic
- repositories should not perform UI-oriented shaping
- policy resolution should happen before execution surfaces
