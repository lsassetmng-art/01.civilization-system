# ============================================================
# NAMECARDMANAGER IMAGE HANDLING IMPLEMENTATION GUIDE
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Fixes exact image lifecycle direction for front/back business card handling.

flow:
- capture
- local staging
- review
- commit metadata
- upload / reference finalize
- cleanup staging

rules:
- front and back are independently replaceable
- mime whitelist is required
- size limit is required
- staging cleanup is required after commit or terminal cancel
- failed upload must not silently mark image committed
- record update and image metadata update must be consistent from UI perspective
- OCR is out of initial scope
