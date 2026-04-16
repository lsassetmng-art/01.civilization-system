# ============================================================
# AUTO GENERATION DECISION FLOW
# ============================================================

flow:
readiness result available
-> full_ready => auto-generation
-> full_ready_with_warning => auto-generation with warnings
-> manual_required => manual confirmation
-> blocked => stop
