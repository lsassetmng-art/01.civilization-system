# ============================================================
# ESTIMATE CREATOR ARCHITECTURE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. ARCHITECTURAL POSITION
# ============================================================

EstimateCreator is an application-layer business tool
under 07.applications.

It is built from:

- application-specific business objects
- shared BusinessOS collaboration capabilities
- shared BusinessOS synchronization capabilities
- shared BusinessOS ERP publication capabilities
- ERP-side authoritative services for inventory and approval-linked publication outcomes

# ============================================================
# 2. MAJOR COMPONENTS
# ============================================================

EstimateCreator consists of the following major components:

1. Login and Local Auth Context
2. Estimate Workspace
3. Opportunity Memo Workspace
4. Meeting Memo Workspace
5. Estimate Pricing Workspace
6. Share Target Selector
7. Local Protected Storage
8. Sync Coordinator Adapter
9. ERP Publication Request Adapter
10. Inventory Reference Adapter
11. Premium Feature Gate
12. Audit / History Recorder

# ============================================================
# 3. COMMON CAPABILITY DEPENDENCIES
# ============================================================

EstimateCreator depends on BusinessOS common capabilities for:

- user-target sharing
- online sync
- pending operation replay
- ERP publication execution path
- shared status conventions
- relationship visibility conventions

These common capabilities must be reused rather than reimplemented privately.

# ============================================================
# 4. LOCAL OWNED BUSINESS DOMAIN
# ============================================================

EstimateCreator owns local business behavior for:

- estimate drafting
- line item editing
- memo creation
- memo editing
- local revision preparation
- estimate presentation
- premium template usage
- QA handling
- estimate-to-publication request preparation

# ============================================================
# 5. NON-OWNED AUTHORITATIVE DOMAINS
# ============================================================

EstimateCreator does not own authoritative truth for:

- ERP final formal estimate authority
- ERP final inventory truth
- ERP enterprise workflow source of truth
- global publication infrastructure
- enterprise-wide unrestricted sharing

# ============================================================
# 6. OFFLINE ARCHITECTURE
# ============================================================

Offline operation is enabled through:

- local protected storage
- cached auth context
- cached catalog data
- pending operation queue
- later sync replay

Offline mode is a preparation mode,
not a final authoritative completion mode.

# ============================================================
# 7. PREMIUM FEATURE PLACEMENT
# ============================================================

Premium feature logic is placed as gated capability
within the same canonical application structure.

Premium feature gate applies to:

- structured meeting note features
- QA management
- reusable estimate templates

Premium gating must not fork canonical data authority rules.

# ============================================================
# 8. ARCHITECTURAL CONCLUSION
# ============================================================

EstimateCreator architecture is defined as:

application-specific estimate workflow
plus common BusinessOS sharing / sync / ERP publication capabilities
plus ERP-referenced external authority for authoritative outcomes.


# ============================================================
# 9. ENTRY ARCHITECTURE
# ============================================================

EstimateCreator architecture supports two first-class entry paths:

1. Standalone Entry
2. Deeplink Entry

These entry paths converge into shared canonical workspace logic.

# ============================================================
# 10. SHARED AUTH COMPONENTS
# ============================================================

The architecture includes the following entry-related components:

- Standalone Entry
- Deeplink Entry
- Shared Auth Context Receiver
- Launch Context Resolver
- Session Validation Adapter
- Unified Workspace Router

# ============================================================
# 11. ENTRY BEHAVIOR
# ============================================================

Standalone Entry flow:

- app launch
- login entry
- session establishment
- workspace routing

Deeplink Entry flow:

- deeplink receive
- shared auth context resolve
- session validation
- launch context resolution
- workspace routing

The deeplink path must not directly bypass shared validation components.


# ============================================================
# DEVICE ARCHITECTURE
# ============================================================

EstimateCreator architecture supports:

- iOS runtime
- Android runtime
- phone presentation
- tablet presentation

Device-specific UI adaptation must not fork
business meaning, payload contract, or state model.

Phone and tablet must share the same canonical business logic.

