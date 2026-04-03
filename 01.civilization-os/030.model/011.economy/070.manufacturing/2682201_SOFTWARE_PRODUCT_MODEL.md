# ============================================================
# SOFTWARE PRODUCT MODEL
# ============================================================

status: canonical
layer: model
scope: industry-pack
component: software-product

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PRODUCT ROLE
# ============================================================

Software product is a releasable application or extension package
with explicit access and maintenance posture.


# ============================================================
# 2. PRODUCT FIELDS
# ============================================================

Recommended fields:
- product_id
- software_mode
- release_channel
- access_scope_profile
- maintenance_profile
- version_state
- linked_businessos_flag


# ============================================================
# 3. FINAL RULE
# ============================================================

Software product must remain version-aware and access-aware.
