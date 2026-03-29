# ============================================================
# BUSINESS WORKSPACE MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the official workspace model of BusinessOS.

BusinessOS is primarily user-scoped.
A workspace is a user-centered business app context,
not a company truth container.

BusinessOS may support app-level paid features.
Some apps may send real operational data to ERP.
When sending to ERP, BusinessOS attaches company context
because ERP is company-scoped.

BusinessOS itself does not treat company as
the default top-level truth holder.


# ============================================================
# 1. ROLE
# ============================================================

A workspace is the primary operating context
for BusinessOS apps.

It groups:
- user-owned app data
- app settings
- app memberships where relevant
- ERP-send capability flags where relevant

A workspace is not equivalent to:
- legal company truth
- ERP company-scoped truth context
- enterprise master truth


# ============================================================
# 2. CORE FIELDS
# ============================================================

recommended_fields:
- workspace_id
- owner_user_id
- workspace_code
- workspace_name
- workspace_status
- default_app_scope
- erp_send_capable_flag
- created_at
- updated_at


# ============================================================
# 3. ERP CONTEXT
# ============================================================

A workspace may optionally carry ERP-send context hints,
but these are not default truth identity.

optional_fields:
- default_company_id_for_erp_send
- erp_mapping_profile_id
- erp_send_policy_id

These fields are used only when:
- a BusinessOS app sends real data to ERP
- the ERP payload must be company-scoped


# ============================================================
# 4. FINAL RULE
# ============================================================

BusinessOS workspace truth is user/workspace-scoped.

Core summary:

- workspace is a user-centered app container
- workspace is not a company-scope root truth holder
- company context is attached only for ERP-send flows
