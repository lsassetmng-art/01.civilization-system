# ============================================================
# NAMECARD UI LABEL IMPLEMENTATION GUIDE
# ============================================================

status: draft
layer: implementation
system: applications
application: NameCardManager
implementation_scope: ui_label
owner: Boss
prepared_by: Zero

purpose:
Provides implementation guidance for badge labels and short UI messages.

# ============================================================
# 1. IMPLEMENTATION DIRECTION
# ============================================================

Implementation should:
- map UI state codes to canonical badge labels
- map validation codes to canonical validation messages
- map error codes to canonical error messages
- preserve consistent wording across list/detail/settings screens

# ============================================================
# 2. PRESENTATION DIRECTION
# ============================================================

Prefer:
- short badge text on list screen
- slightly longer detail text on detail screen
- short corrective wording for validation failures
- distinct wording for approval, rejection, conflict, and failure

# ============================================================
# 3. DO NOT COLLAPSE
# ============================================================

Do not collapse:
- approval pending into published wording
- rejected into publish failed wording
- restricted into hidden wording
- conflict into generic failure wording

