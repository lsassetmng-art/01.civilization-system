
# ============================================================
# ESTIMATE PERMISSION SCOPE MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_permission_scope defines who may perform
which actions on which estimate-related objects.

# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

- permission_scope_id
- object_type
- object_id
- subject_type
- subject_id
- permission_role
- permission_state
- readonly
- created_at
- updated_at

# ============================================================
# 3. OBJECT TYPES
# ============================================================

Representative object_type values:

- estimate_record
- opportunity_memo
- meeting_memo
- estimate_delivery_record
- estimate_share_link_record
- estimate_qa_record
- estimate_template

# ============================================================
# 4. SUBJECT TYPES
# ============================================================

Representative subject_type values:

- owner_user
- shared_user
- publication_operator
- customer_link_viewer
- workspace_user

# ============================================================
# 5. PERMISSION ROLES
# ============================================================

Representative permission_role values:

- owner
- editor
- viewer
- share_target
- publication_operator
- premium_holder
- customer_readonly_viewer

# ============================================================
# 6. PERMISSION STATE
# ============================================================

Representative permission_state values:

- active
- revoked
- expired
- restricted

# ============================================================
# 7. RULE
# ============================================================

Readonly customer delivery access must map to:

- subject_type: customer_link_viewer
- permission_role: customer_readonly_viewer
- readonly: true

This role must never grant write actions.

