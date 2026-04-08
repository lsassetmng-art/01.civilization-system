# ============================================================
# IMPORT EXPORT RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

import_rules:
- ERP-owned fields are refreshed from ERP path
- protected local fields remain unchanged

export_rules:
- only mapped outbound fields are publishable
- rejected export must remain reviewable and retryable
