# ============================================================
# ROLLBACK POLICY
# ============================================================

status: canonical-draft
layer: policy
application: App Development Studio

rollback_principles:
- rollback source should be identifiable
- rollback should not be assumed possible without source
- rollback may require approval
- rollback result should be verified

rollback_sources:
- file snapshot
- bundle snapshot
- Git restore point
- linked rollback candidate
