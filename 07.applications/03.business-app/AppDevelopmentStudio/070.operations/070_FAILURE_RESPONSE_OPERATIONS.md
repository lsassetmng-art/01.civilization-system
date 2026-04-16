# ============================================================
# FAILURE RESPONSE OPERATIONS
# ============================================================

status: canonical-draft
layer: operations
application: App Development Studio

failure_response_scope:
- failed generation
- failed apply
- failed SQL execution
- failed Git push
- failed build
- failed verification

recommended_actions:
- record error summary
- expose rollback path if any
- link failure to bug record when relevant
