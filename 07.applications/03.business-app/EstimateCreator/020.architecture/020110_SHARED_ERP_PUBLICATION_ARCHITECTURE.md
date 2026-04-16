# ============================================================
# ESTIMATE CREATOR SHARED ERP PUBLICATION ARCHITECTURE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines how EstimateCreator publishes estimate-related data
to ERP through the shared BusinessOS publication path.

# ============================================================
# 2. PRINCIPLE
# ============================================================

EstimateCreator must not directly behave as a private ERP publication engine.

Instead:

- EstimateCreator creates publication-ready payload intent
- shared BusinessOS publication capability receives the request
- publication execution occurs in the shared path
- execution result is returned back to EstimateCreator state

# ============================================================
# 3. PRIMARY PUBLICATION OBJECT
# ============================================================

Primary ERP publication object:

- rough estimate

Secondary supporting objects may be attached when policy allows:

- opportunity memo summary
- meeting memo summary

# ============================================================
# 4. REQUIRED PUBLICATION ATTRIBUTES
# ============================================================

Publication requests must carry explicit metadata including:

- source_system = business_os
- source_app = estimate_creator
- estimate_class = rough_estimate
- revision reference
- requesting user context
- company context
- approval-related state when required

# ============================================================
# 5. RESULT HANDLING
# ============================================================

EstimateCreator must persist publication result state separately from
local draft state.

Typical result states include:

- publication_pending
- publication_accepted
- publication_rejected
- publication_failed

# ============================================================
# 6. OFFLINE RESTRICTION
# ============================================================

Offline mode may prepare publication intent,
but must not mark ERP publication as completed.

