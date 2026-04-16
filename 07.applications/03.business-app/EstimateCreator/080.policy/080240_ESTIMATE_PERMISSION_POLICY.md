
# ============================================================
# ESTIMATE PERMISSION POLICY
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This policy defines permission boundaries
for EstimateCreator objects and actions.

# ============================================================
# 2. PRIMARY ROLES
# ============================================================

Primary roles include:

- owner
- editor
- viewer
- share_target
- publication_operator
- premium_holder
- customer_readonly_viewer

# ============================================================
# 3. GENERAL RULES
# ============================================================

Permission rules:

- owner may view and edit owned estimate objects
- editor may edit only where explicitly allowed
- viewer may read only where explicitly allowed
- share_target visibility must remain bounded
- publication_operator may request publication only where permitted
- premium_holder status does not override object permission
- customer_readonly_viewer may only view via readonly delivery surface

# ============================================================
# 4. READONLY LINK RULE
# ============================================================

Readonly delivery link access must never expose:

- estimate edit
- memo edit
- share actions
- publication actions
- QA write
- template edit
- premium write actions

# ============================================================
# 5. DEEPLINK RULE
# ============================================================

Deeplink may provide context,
but must not elevate permission.

Readonly deeplink context must remain readonly.

# ============================================================
# 6. SHARE RULE
# ============================================================

Share visibility must not implicitly grant owner-level capability.

Shared users may be limited to:
- view only
or
- limited edit
according to explicit policy and object type.

# ============================================================
# 7. CUSTOMER VIEW RULE
# ============================================================

Customer-facing readonly viewing is not app-internal sharing.

It is a distinct permission route
with stricter capability limits.

