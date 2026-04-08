# ============================================================
# AUTO OR MANUAL DECISION RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
application: App Development Studio

purpose:
Defines final routing after readiness assessment.

decision_states:
- full_ready
- full_ready_with_warning
- manual_required
- blocked

routing:
- full_ready -> auto-generation path
- full_ready_with_warning -> auto-generation with warnings path
- manual_required -> manual confirmation path
- blocked -> stop and show reasons
