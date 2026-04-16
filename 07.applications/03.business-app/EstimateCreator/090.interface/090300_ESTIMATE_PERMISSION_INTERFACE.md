
# ============================================================
# ESTIMATE PERMISSION INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This interface document defines how permission differences
must appear in UI.

# ============================================================
# 2. UI PERMISSION STATES
# ============================================================

Representative permission UI states include:

- full_edit
- limited_edit
- readonly
- readonly_customer_view
- publication_allowed
- publication_denied
- premium_allowed
- premium_locked

# ============================================================
# 3. UI RULES
# ============================================================

The UI must clearly distinguish:

- hidden because not allowed
- visible but locked
- visible and readonly
- fully editable

# ============================================================
# 4. READONLY CUSTOMER VIEW
# ============================================================

Readonly customer view should:

- show estimate content
- show delivery-ready presentation
- hide internal operation actions
- hide share/publication/premium write actions
- avoid internal-only business wording where possible

# ============================================================
# 5. SHARED USER VIEW
# ============================================================

Shared internal users may see:

- bounded estimate content
- bounded memo content
- bounded action set

The interface must not imply owner-level authority
when the permission is shared-limited.

