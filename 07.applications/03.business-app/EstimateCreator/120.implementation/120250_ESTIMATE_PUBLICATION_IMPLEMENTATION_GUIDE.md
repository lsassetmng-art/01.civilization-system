# ============================================================
# ESTIMATE PUBLICATION IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Publication implementation must connect EstimateCreator
to the shared BusinessOS ERP publication path.

# ============================================================
# 2. REQUIRED IMPLEMENTATION BEHAVIOR
# ============================================================

Implementation should support:

- publication readiness validation
- request payload assembly
- request submission to shared path
- result state persistence
- publication badge/state refresh

# ============================================================
# 3. REQUIRED PAYLOAD CHARACTERISTICS
# ============================================================

Representative fields:

- source_system = business_os
- source_app = estimate_creator
- estimate_class = rough_estimate
- company_id
- estimate_id
- revision_no
- requesting_user_id

# ============================================================
# 4. PROHIBITION
# ============================================================

Implementation must not create a private authoritative ERP issuance path
inside the app.

