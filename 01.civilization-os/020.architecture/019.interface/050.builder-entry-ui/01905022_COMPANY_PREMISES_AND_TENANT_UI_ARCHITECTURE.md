# ============================================================
# COMPANY PREMISES AND TENANT UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: company-premises-and-tenant-ui
component: company-premises-and-tenant-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for company premises, office sites,
branch facilities, tenant spaces,
multi-tenant buildings,
and company-occupancy operation in Civilization.

This document covers the UI family
where site structure, floor allocation,
tenant composition, shared-facility usage,
and company-occupancy truth dominate.

This document must align with:

- Civilization Facility UI Architecture
- Company Builder Architecture
- company site / premises / tenant / store-opening-related architectures
- Facility Type Master Architecture
- tenancy, occupancy, access,
  staffing, and site-structure-related lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
lease-law internals,
office-contract internals,
company-governance internals,
rent formulas,
or lower tenancy-record truth.


# ============================================================
# 2. POSITION
# ============================================================

Company premises and tenant UI
is the canonical UI family
for company-occupancy-oriented facilities in Civilization.

This family applies when the primary truth is:

- company site operation
- office premises operation
- branch occupancy
- tenant allocation inside buildings
- shared-space usage
- floor or section assignment
- company-local access and occupancy continuity
- multi-tenant building coordination
- organization-to-space relation management

Company-premises UI is not identical to:

- real-estate portfolio UI
- residence UI
- retail store-operation UI
- generic government office UI
- pure builder placement UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- company-premises UI structure
- premises- and tenant-operation screen responsibility
- relation between setup, operation, auto, and intervention
- site / floor / tenant / shared-space surface composition
- relation between premises truth and linked real-estate / company / retail truth

This document must not redefine:

- lease-contract internals
- real-estate portfolio internals
- lower rent or fee formulas
- lower company-governance internals
- lower tenancy-record truth
- lower access-right internals

Those remain owned by
existing company premises architectures,
real-estate architectures,
model documents,
policy documents,
runtime documents,
and lower interface layers.


# ============================================================
# 4. COMPANY PREMISES SERVICE TRUTH
# ============================================================

Company premises and tenant UI belongs to
the company_premises_tenant_and_office family.

This family may include:

- company headquarters
- branch office
- office floor
- premises site
- tenant space
- multi-tenant office building context
- creator-owned company premises
- company-managed office complex
  where company-occupancy truth dominates

Company-premises UI must resolve from
canonical_ui_target
and dominant company-occupancy truth,
not from building shell alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Company-premises UI must allow
the operator to understand and manage
a live company-occupancy institution
as part of the persistent Civilization world.

Company-premises UI must expose:

- what site or premises structure exists
- which organizations occupy which spaces
- how floors, sections, or rooms are allocated
- how shared spaces are being used
- how occupancy, access, and support burden are behaving
- what instability, overload, or tenant issues are emerging
- what interventions are required

Company-premises UI must not collapse
into abstract room bookkeeping only.


# ============================================================
# 6. COMPANY PREMISES UI LIFECYCLE
# ============================================================

The canonical company-premises UI lifecycle is:

post-placement setup
-> site and premises identity setup
-> floor / section / shared-space setup
-> tenant or branch allocation setup
-> access and operations setup
-> ongoing premises operation
-> auto premises operation where supported
-> observation
-> issue detection
-> intervention
-> continued premises operation

This lifecycle must support
persistent site continuity
and organization-linked occupancy flow.


# ============================================================
# 7. COMPANY PREMISES UI MODES
# ============================================================

Company-premises UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- owner_mode where appropriate
- manager_mode
- tenant_mode where appropriate
- facilities_mode where appropriate
- access_mode where appropriate
- shared_space_mode where appropriate

Public-facing surfaces may connect
to building directories or entry logic,
but are not the main subject
of this operation UI architecture.


# ============================================================
# 8. COMPANY PREMISES COMMON SURFACES
# ============================================================

Company-premises UI must inherit
the common facility UI frame
and must expose premises-specialized surfaces.

Canonical company-premises surfaces include:

- premises summary surface
- site identity and premises-role surface
- site / floor / section structure surface
- tenant and organization allocation surface
- shared-space and common-facility surface
- access and movement surface
- staffing and support-operations surface
- occupancy and usage visibility surface
- fee / cost visibility surface where applicable
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and premises event surface
- permission and role surface
- linked real-estate / retail / company / support-facility surface


# ============================================================
# 9. PREMISES SUMMARY SURFACE
# ============================================================

The premises summary surface must provide
fast understanding of current premises state.

This should expose visibility into:

- site or premises type
- occupancy posture
- tenant or branch posture
- shared-space posture
- support or access burden
- active issues
- active alerts
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for premises-management entry.


# ============================================================
# 10. SITE IDENTITY AND PREMISES-ROLE SURFACE
# ============================================================

This surface defines
what kind of company premises exists.

It should expose:

- site classification
- headquarters / branch / office / mixed posture
- operating organization context
- district or jurisdiction context
- premises-scope visibility
- linked company identity
- special usage visibility where relevant

This surface must clarify
company-occupancy truth clearly.


# ============================================================
# 11. SITE / FLOOR / SECTION STRUCTURE SURFACE
# ============================================================

This surface covers
how the premises is physically organized.

It should expose:

- site grouping
- floor structure
- section or room grouping
- underused or overloaded areas
- structure imbalance visibility
- unsupported areas
- reallocation pressure

This is a visibility and management surface.

It does not redefine
lower building-structure truth.


# ============================================================
# 12. TENANT AND ORGANIZATION ALLOCATION SURFACE
# ============================================================

This surface covers
who occupies the premises.

It should expose:

- tenant posture
- branch allocation posture
- organization-to-space mapping
- unstable or mismatched occupancy
- underuse or over-concentration
- reassignment need
- linked business-use visibility

This surface is central
to premises continuity.

It does not redefine
lower tenancy-record truth.


# ============================================================
# 13. SHARED-SPACE AND COMMON-FACILITY SURFACE
# ============================================================

This surface covers
spaces that are jointly used.

It should expose:

- shared-space posture
- common-facility load
- usage imbalance
- conflict or contention visibility
- unsupported common areas
- correction need
- shared-resource burden

This surface must remain explicit
and quickly readable.


# ============================================================
# 14. ACCESS AND MOVEMENT SURFACE
# ============================================================

This surface covers
movement and access continuity
inside the premises.

It should expose:

- access posture
- restricted or controlled areas
- movement bottlenecks where supported
- entry burden visibility
- unstable access areas
- correction need

This surface may connect to
security or building systems,
but must preserve
premises-local operational truth.


# ============================================================
# 15. STAFFING AND SUPPORT-OPERATIONS SURFACE
# ============================================================

This surface covers
human support capacity
for the premises.

It should expose:

- staffing sufficiency
- facilities-support burden
- reception or support burden where relevant
- unsupported operational areas
- shift imbalance where relevant
- manual reassignment need

This surface may connect to
larger company staffing systems,
but must preserve
site-local operational visibility.


# ============================================================
# 16. OCCUPANCY AND USAGE VISIBILITY SURFACE
# ============================================================

This surface covers
how the premises is actually being used.

It should expose:

- occupancy posture
- space-utilization visibility
- underuse or overuse
- peak burden visibility
- mismatch between intended and actual use
- correction urgency

This surface bridges
premises layout
and premises operation.


# ============================================================
# 17. FEE / COST VISIBILITY SURFACE
# ============================================================

Where applicable,
the UI should expose
premises-related money posture.

This surface may include:

- usage-fee posture
- shared-cost visibility
- burden concentration visibility
- underperforming area visibility
- correction need visibility

This document does not define
money formulas.

It defines the UI responsibility
to expose premises-visible cost posture where needed.


# ============================================================
# 18. AUTOMATION AND POLICY SURFACE
# ============================================================

Where premises domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current premises-operation posture
- allocation / access / support automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals

Automation must remain visible
and reviewable.


# ============================================================
# 19. KPI AND REPORT SURFACE
# ============================================================

Company-premises KPI visibility is mandatory.

Typical KPI groups include:

- occupancy posture
- space-utilization posture
- tenant or branch stability posture
- shared-space burden
- support-staff sufficiency
- access stability
- issue posture
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 20. ISSUE AND ALERT SURFACE
# ============================================================

Company-premises operation requires
explicit issue visibility.

Typical issue families include:

- occupancy mismatch
- tenant instability
- shared-space contention
- support-staff shortage
- access instability
- underuse or overload
- premises-usage inconsistency visibility
- urgent intervention trigger

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 21. INTERVENTION STRUCTURE
# ============================================================

Company-premises intervention must be explicit.

Typical intervention families include:

- floor or section reallocation
- tenant reassignment
- shared-space correction
- access correction
- staffing reassignment
- support escalation
- temporary operating-posture correction where supported
- linked real-estate or company routing

Intervention must connect
to visible premises conditions.

Intervention must not feel like
editing hidden occupancy variables only.


# ============================================================
# 22. COMPANY PREMISES / REAL ESTATE / RETAIL RELATION
# ============================================================

Company-premises UI is related to
real estate,
retail,
and company systems,
but is not identical to them.

Company-premises truth covers:

- site structure
- tenant and organization occupancy
- shared-space continuity
- access and usage reality

Real-estate truth covers:

- asset and contract control
- portfolio and property management

Retail truth covers:

- store-local assortment and commerce operation

Company-premises UI may link to those surfaces,
but organization-occupancy truth must remain primary
when premises routing is selected.


# ============================================================
# 23. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
company-premises UI-edited truths such as:

- site grouping
- floor and section grouping
- tenant grouping
- shared-space grouping
- access grouping
- issue grouping
- intervention target entities where needed

090.interface should define
company-premises UI contracts such as:

- premises summary exposure
- site / floor / section surfaces
- tenant and organization allocation surfaces
- shared-space and common-facility surfaces
- access and movement surfaces
- occupancy and usage visibility surfaces
- issue and intervention exposure contracts


# ============================================================
# 24. FINAL RULE
# ============================================================

Company premises and tenant UI in Civilization must remain:

- company-occupancy-truth aligned
- site-visible
- tenant-visible
- shared-space-visible
- access-visible
- usage-visible
- issue-visible
- intervention-capable
- world-linked
- clearly separated from real-estate-only or retail-only truth

Company-premises UI must treat company sites
as live organizational-space reality,
not only as tenancy bookkeeping.
