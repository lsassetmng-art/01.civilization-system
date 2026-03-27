# ============================================================
# COMPANY ORGANIZATION MODEL
# ============================================================

status: canonical
layer: model
scope: company-builder
component: company-organization

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official organization model
for companies inside Civilization.

It covers minimum role structure required
for governance, operation, and site responsibility.


# ============================================================
# 2. CORE RULE
# ============================================================

Every established company must have
at least one representative role.

Site-bearing companies must also support
site-level responsibility assignment.


# ============================================================
# 3. MINIMUM ORGANIZATION ROLES
# ============================================================

Official minimum roles:

- representative
- executive_role_set
- site_manager_set

These are the minimum structure
for user-creatable company governance.


# ============================================================
# 4. REPRESENTATIVE
# ============================================================

representative is mandatory.

A representative should contain:
- role_code
- actor_ref
- authority_scope
- active_state
- assigned_at

representative is the company-level responsible principal.


# ============================================================
# 5. EXECUTIVE ROLE SET
# ============================================================

executive roles are optional but supported.

Examples:
- finance_responsible
- operations_responsible
- education_responsible
- creative_responsible
- doctrine_responsible

These should vary by company type.


# ============================================================
# 6. SITE MANAGER SET
# ============================================================

A site manager should exist
for meaningful operational sites.

Examples:
- branch_manager
- retail_store_manager
- school_site_manager
- temple_site_manager
- gallery_site_manager

This role binds organization to company_site.


# ============================================================
# 7. RELIGIOUS CORPORATION SPECIAL RULE
# ============================================================

religious_corporation may additionally distinguish:
- believers
- clergy
- administrators

These are not required for all company types,
but are part of the supported organization model
for religion-centered entities.


# ============================================================
# 8. EMPLOYMENT CONNECTION
# ============================================================

Employee or worker structures may connect here later.

This model only fixes the minimum organizational layer,
not the full labor model.


# ============================================================
# 9. FINAL RULE
# ============================================================

A company must not be treated as a pure shell.

It must have at least a representative,
and site-bearing companies should support site responsibility roles.
