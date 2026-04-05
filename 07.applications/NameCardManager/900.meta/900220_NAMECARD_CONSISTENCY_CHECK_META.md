# ============================================================
# NAMECARD CONSISTENCY CHECK META
# ============================================================

status: draft
layer: meta
system: applications
application: NameCardManager
meta_scope: consistency_check
owner: Boss
prepared_by: Zero

purpose:
Provides consistency check checkpoints for NameCardManager.

# ============================================================
# 1. STRUCTURE CHECK
# ============================================================

checkpoints:
- root overview exists
- root index exists
- integrated document exists
- each layer directory exists
- each populated layer has overview
- each populated layer has index

# ============================================================
# 2. DOCUMENT COVERAGE CHECK
# ============================================================

confirm:
- constitution exists
- architecture exists
- model family is present
- runtime exists
- flow exists
- integration exists
- operations exists
- policy exists
- interface exists
- security exists
- infrastructure exists
- implementation exists
- development exists
- meta exists

# ============================================================
# 3. ERP BOUNDARY CHECK
# ============================================================

confirm:
- NameCardManager does not claim direct ERP transmission ownership
- shared BusinessOS ERP publication capability is referenced
- approval boundary is distinct from publication result
- revoke of published ERP-wide state is not exposed to ordinary user

# ============================================================
# 4. STATE CHECK
# ============================================================

confirm:
- sync state exists
- UI state exists
- approval state exists
- publication state exists
- error code exists
- validation code exists
- audit action code exists

# ============================================================
# 5. INTEGRATED DOCUMENT CHECK
# ============================================================

confirm:
- integrated document includes root overview/index
- integrated document includes each main design file
- integrated document ordering is stable
- integrated document does not omit newly added files

# ============================================================
# 6. MODEL/INTERFACE CONSISTENCY CHECK
# ============================================================

confirm:
- UI state model aligns with UI label documents
- validation code model aligns with validation policy/implementation
- error code model aligns with error policy/implementation
- payload field map aligns with shared ERP publication integration
- API field schema aligns with API contract docs

# ============================================================
# 7. OPEN REVIEW POINTS
# ============================================================

review_targets:
- naming stability
- numbering stability
- overlap reduction
- shared capability wording consistency
- approval/publication wording consistency

