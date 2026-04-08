# ============================================================
# READINESS THRESHOLD RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
application: App Development Studio

purpose:
Defines threshold evaluation at runtime.

runtime_steps:
1. compute dimension scores
2. load threshold profile
3. compare scores to thresholds
4. decide full_ready/full_ready_with_warning/manual_required/blocked
