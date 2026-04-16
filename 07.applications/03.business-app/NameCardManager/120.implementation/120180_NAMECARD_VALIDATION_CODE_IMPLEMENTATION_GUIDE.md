# ============================================================
# NAMECARD VALIDATION CODE IMPLEMENTATION GUIDE
# ============================================================

status: draft
layer: implementation
system: applications
application: NameCardManager
implementation_scope: validation_code
owner: Boss
prepared_by: Zero

purpose:
Provides implementation guidance for validation code usage.

# ============================================================
# 1. IMPLEMENTATION DIRECTION
# ============================================================

Implementation should:
- validate request prerequisites early
- return canonical validation code before deeper processing where possible
- separate validation result from later execution result

# ============================================================
# 2. UI DIRECTION
# ============================================================

UI should:
- surface actionable validation failures clearly
- distinguish missing prerequisite from processing failure
- guide user toward correction when validation fails

# ============================================================
# 3. API DIRECTION
# ============================================================

API may return:
- success=false
- validation_code
- error_code only when execution path has already failed or progressed
- field-level hints where useful

