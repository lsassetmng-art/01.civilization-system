# ============================================================
# REAL ESTATE OPERATION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: real-estate-operation-ui-implementation
component: real-estate-operation-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for real-estate operation UI inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- REAL_ESTATE_OPERATION_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Real-estate UI must implement:

- real_estate_overview_screen
- real_estate_manage_screen
- real_estate_issue_screen
- real_estate_history_screen
- real_estate_permission_screen

Optional where supported:

- real_estate_linked_screen
- real_estate_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Real-estate overview must prioritize
asset posture and occupancy posture.

Initial priority:

1. property identity
2. property type
3. occupancy posture
4. listing or lease posture
5. maintenance warning summary
6. revenue or utilization summary
7. KPI strip
8. recent issue summary
9. recent history summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Real-estate manage must default to:

- summary_tab

Fallback order:

- property_and_unit_tab
- occupancy_and_contract_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. property_and_unit_tab
3. occupancy_and_contract_tab
4. listing_and_market_tab
5. maintenance_and_condition_tab
6. tenant_and_resident_tab
7. issue_tab
8. money_visibility_tab
9. automation_tab
10. kpi_tab
11. history_tab
12. permission_tab
13. linked_tab

Occupancy, contract posture, and condition posture
must become visible early.


# ============================================================
# 6. PROPERTY AND UNIT TAB IMPLEMENTATION
# ============================================================

Property and unit tab must expose
asset and unit structure posture.

It should load:

- property group
- unit count
- property type
- occupancy suitability posture
- underuse indicators
- overuse indicators
- reallocation need

Property changes must remain explicit
and should not silently mutate
tenant or resident truth.


# ============================================================
# 7. OCCUPANCY AND CONTRACT TAB IMPLEMENTATION
# ============================================================

Occupancy and contract tab is a high-priority surface.

It must expose:

- occupancy posture
- vacancy posture
- active contract posture
- contract expiry or renewal posture
- assignment mismatch indicators
- unresolved allocation burden

Changes should refresh:

- occupancy and contract section
- overview occupancy summary
- issue indicators when relevant


# ============================================================
# 8. LISTING AND MARKET TAB IMPLEMENTATION
# ============================================================

Listing and market tab must expose
property-market posture.

It should load:

- listing visibility
- availability posture
- sale or lease offering posture
- marketability visibility
- blocked publication indicators
- seller-operation linkage where supported

This tab may route into
canonical Marketplace seller flow
for property-related sale contexts,
but must not duplicate Marketplace core.


# ============================================================
# 9. MAINTENANCE AND CONDITION TAB IMPLEMENTATION
# ============================================================

Maintenance and condition tab must expose
asset quality and repair burden.

It should load:

- maintenance burden
- repair backlog
- habitability or usability posture
- degradation indicators
- urgent repair visibility
- correction urgency

Condition changes should refresh:

- maintenance section
- overview condition summary
- issue indicators


# ============================================================
# 10. TENANT AND RESIDENT TAB IMPLEMENTATION
# ============================================================

Tenant and resident tab must expose
occupant context posture.

It should load:

- tenant grouping
- resident grouping where applicable
- support burden
- occupancy mismatch indicators
- unresolved support indicators
- reassignment need

Support routes should preserve
property orientation and returnability.


# ============================================================
# 11. MONEY VISIBILITY TAB IMPLEMENTATION
# ============================================================

Money visibility tab must expose
revenue and utilization posture
without redefining accounting truth.

It should load:

- lease posture
- sale posture where applicable
- utilization posture
- underperforming asset indicators
- correction need
- monetization note where applicable

Money actions must remain explicit.


# ============================================================
# 12. AUTOMATION TAB IMPLEMENTATION
# ============================================================

Real-estate automation must remain visible.

It should expose:

- automation enabled
- active policy profile
- automation visibility posture
- threshold summary
- recent automated changes

Automation must not hide
occupancy instability,
contract burden,
or maintenance degradation.


# ============================================================
# 13. ISSUE TAB IMPLEMENTATION
# ============================================================

Real-estate issue tab must centralize
asset-operation and occupancy problems.

Typical issue groups include:

- vacancy imbalance
- occupancy mismatch
- contract instability
- maintenance overload
- habitability concern
- listing blockage
- urgent intervention trigger

Issue handling must remain explicit
and severity-aware.


# ============================================================
# 14. ROLE APPLICATION RULE
# ============================================================

Recommended role behavior:

manager:
- all tabs visible
- mutation allowed where permitted

owner_or_asset_operator:
- all core tabs visible
- selected high-impact actions may be constrained

tenant_operator:
- occupancy visibility
- limited contract visibility
- issue visibility
- summary visibility

resident:
- limited resident-facing visibility only
- no core asset mutation visibility

Restrictions should preserve operational readability.


# ============================================================
# 15. LINKED FACILITY RULE
# ============================================================

Linked routes may include:

- residence
- company premises
- community support
- security
- Marketplace seller entry where supported

Linked routing must preserve
source real-estate orientation.


# ============================================================
# 16. FINAL RULE
# ============================================================

Real-estate implementation must remain:

- asset-visible
- occupancy-visible
- contract-visible
- condition-visible
- issue-visible
- summary-first
- clearly separable from residence-only or Marketplace-only truth

# ============================================================
# SUPPLEMENT A. REAL-ESTATE-DESIGN MARKETPLACE RULE
# ============================================================

Real-estate-related design sale
must route through canonical Marketplace.

Representative design-sale examples include:

- building exterior design
- housing interior design
- housing exterior design
- property-themed design variation items

Real-estate design sale is Marketplace-centered.

It must not create
a separate real-estate-design payment core
or separate Marketplace core.


# ============================================================
# SUPPLEMENT B. MARKETPLACE-ONLY DESIGN SALE POSITION
# ============================================================

Where design-sale behavior is exposed,
the seller-side operation belongs to
canonical Marketplace seller operation.

Real-estate operation UI may expose
entry into that seller flow,
but design sale itself remains
Marketplace seller truth.

This keeps:

- asset / contract / occupancy truth
separate from
- design listing / publication / sale truth.

