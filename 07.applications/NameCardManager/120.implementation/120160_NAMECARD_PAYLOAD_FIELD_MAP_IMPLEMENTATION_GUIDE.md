# ============================================================
# NAMECARD PAYLOAD FIELD MAP IMPLEMENTATION GUIDE
# ============================================================

status: draft
layer: implementation
system: applications
application: NameCardManager
implementation_scope: payload_field_map
owner: Boss
prepared_by: Zero

purpose:
Provides implementation guidance for payload field mapping.

# ============================================================
# 1. IMPLEMENTATION DIRECTION
# ============================================================

Implementation should:
- keep application-side field collection separate from ERP output shaping
- send normalized source data into shared publication capability
- let shared capability own final ERP payload transformation

# ============================================================
# 2. VALIDATION DIRECTION
# ============================================================

Validate before shared publication handoff:
- requester identity
- source record existence
- company context
- publication policy code
- required contact fields where applicable
- protected field eligibility

# ============================================================
# 3. TRANSFORMATION DIRECTION
# ============================================================

Transformation should:
- normalize contact fields
- summarize long-form business notes where needed
- avoid raw dump of local-only fields
- preserve source_record_id traceability

# ============================================================
# 4. UI / DEBUG DIRECTION
# ============================================================

Where preview is shown, UI may show:
- source fields selected for publication
- publication-safe normalized view
- omitted or blocked field notice where policy requires

