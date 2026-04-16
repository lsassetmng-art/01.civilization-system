# ============================================================
# NAMECARD PAYLOAD FIELD MAP META NOTE
# ============================================================

status: draft
layer: meta
system: applications
application: NameCardManager
meta_scope: payload_field_map
owner: Boss
prepared_by: Zero

purpose:
Captures meta notes for payload field mapping.

# ============================================================
# 1. CURRENT DECISION
# ============================================================

Current design decision:
- application-side source data and ERP-facing output are distinct
- shared BusinessOS capability owns final publication transformation
- publication-safe normalized output is preferred over raw record dump

# ============================================================
# 2. OPEN DETAIL AREAS
# ============================================================

May be detailed later:
- exact required/optional flags per field
- exact summary truncation rules
- exact redact/omit rules by publication policy
- exact ERP payload type variants

