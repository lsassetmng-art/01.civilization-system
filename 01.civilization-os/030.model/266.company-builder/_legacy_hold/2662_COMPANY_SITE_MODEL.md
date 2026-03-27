# ============================================================
# COMPANY SITE MODEL
# ============================================================

status: canonical
layer: model
scope: company-builder
component: company-site

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official model
for company_site.

company_site is the real operational site object
used by a company inside a nation.

A company may have one or many sites.

This model supports:
- headquarters
- branches
- stores
- studios
- schools
- temples
- galleries
- other operational locations


# ============================================================
# 2. CORE RULE
# ============================================================

company_site must be separated from company_core.

company_core defines the company identity.
company_site defines where and how the company exists physically
or operationally inside the nation.


# ============================================================
# 3. OFFICIAL FIELD SET
# ============================================================

A company_site should contain:

- company_site_id
- company_id
- site_code
- site_type
- site_name
- home_nation_id
- zone_map_ref
- zone_cell_ref
- property_ref
- tenant_unit_ref
- occupancy_mode
- opening_state
- public_visibility
- site_role_summary
- operating_notes
- created_at
- updated_at


# ============================================================
# 4. SITE TYPE MODEL
# ============================================================

Official site_type examples:
- headquarters
- branch
- retail_store
- office
- studio
- school_site
- temple_site
- gallery_site
- workshop
- service_site

Branch support is mandatory.

A company may have:
- one headquarters
- multiple branches
- multiple heterogeneous sites


# ============================================================
# 5. BRANCH RULE
# ============================================================

A branch is an official first-class site.

It is not a hidden attribute of headquarters.

branch should be used when:
- the company expands geographically
- the company adds administrative reach
- the company adds operational sub-sites
- the company extends nation-level presence

Branch creation must follow the same
zone compatibility and occupancy rules
as other site types.


# ============================================================
# 6. NATION AND ZONE BINDING
# ============================================================

company_site must bind to nation and zone context.

Fields:
- home_nation_id
- zone_map_ref
- zone_cell_ref

zone_cell_ref is required for compatibility-aware opening.

A site must not open if:
- zone compatibility fails
- site type is disallowed in the target zone
- company type is disallowed in the target zone


# ============================================================
# 7. PROPERTY / TENANT RELATION
# ============================================================

company_site supports structured occupancy.

Fields:
- property_ref
- tenant_unit_ref
- occupancy_mode

Official occupancy_mode examples:
- owned
- leased
- tenant
- shared_space
- allocated_use

Relation model:
property
-> tenant_unit
-> company_site

A site may bind directly to owned property
or indirectly via tenant_unit depending on case.


# ============================================================
# 8. OPENING STATE
# ============================================================

Recommended opening_state values:
- planned
- compatibility_passed
- opening_pending
- opened
- blocked
- closed

Opening principles:
- no pre-approval required by default
- compatibility check required
- post-opening nation notification required


# ============================================================
# 9. PUBLIC VISIBILITY
# ============================================================

public_visibility controls whether the site
is visible in public company discovery or profiles.

Recommended values:
- public
- limited
- hidden

Examples:
- retail_store may be public
- headquarters may be limited
- strategic support site may be hidden


# ============================================================
# 10. SITE ROLE SUMMARY
# ============================================================

site_role_summary describes the function of the site.

Examples:
- administrative_core
- customer_facing_sales
- production_support
- education_delivery
- doctrine_and_ritual
- exhibition_and_screening
- logistics_support

This helps analytics and public descriptions.


# ============================================================
# 11. TYPE-SPECIFIC NOTES
# ============================================================

## headquarters
Primary anchor site of the company.

## branch
Secondary or regional extension site.

## retail_store
Public-facing commercial site.

## office
Administrative or professional operations site.

## studio
Creative production site.

## school_site
Education delivery site.

## temple_site
Religious and ritual operations site.

## gallery_site
Exhibition and cultural access site.


# ============================================================
# 12. MULTI-SITE RULE
# ============================================================

A company may operate multiple sites simultaneously.

Examples:
- headquarters + branch
- headquarters + branch + retail_store
- headquarters + studio + gallery_site
- headquarters + temple_site + service_site

Multi-site structure is fully supported
and should be expected in growth scenarios.


# ============================================================
# 13. VALIDATION CONNECTION
# ============================================================

company_site validation should include:
- site_type present
- company binding present
- nation binding present
- zone binding present
- compatibility passed
- occupancy relation consistent

Examples of blocking conditions:
- branch without company binding
- temple_site in disallowed zone
- tenant mode without tenant_unit_ref
- owned mode without property_ref


# ============================================================
# 14. FINAL RULE
# ============================================================

company_site is the official real-site model
for companies in Civilization.

It must be:
- company-bound
- nation-bound
- zone-aware
- occupancy-explicit
- branch-capable
- multi-site capable
