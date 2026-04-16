# ============================================================
# ESTIMATE CREATOR OVERVIEW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

EstimateCreator is a BusinessOS application for
rough estimate creation,
sales opportunity support,
offline field use,
shared collaboration inside BusinessOS,
and ERP-connected approval/publication.

EstimateCreator is not the primary ERP itself.

Its primary role is:

- create rough estimates quickly
- support sales activities in the field
- allow offline drafting and later sync
- share estimate-related content with preconfigured users
- send approved rough estimates to ERP through shared BusinessOS publication capability
- optionally allow local formal usage when business operation requires it

# ============================================================
# 2. CORE POSITIONING
# ============================================================

EstimateCreator is positioned as:

BusinessOS-side simplified ERP front application.

Primary principle:

- rough estimate is the default
- formal estimate source of truth is normally ERP
- local formal usage is allowed only as an operational exception
- ERP publication is handled through shared BusinessOS capability
- sharing / sync / ERP publication follow the same common pattern as NameCardManager

# ============================================================
# 3. PRIMARY OBJECTS
# ============================================================

EstimateCreator handles the following primary objects:

- rough estimate
- estimate line item
- opportunity memo
- meeting memo
- estimate approval state
- estimate ERP publication request/result
- estimate share target
- estimate sync state
- estimate pending operation
- estimate inventory reference result

# ============================================================
# 4. SHAREABLE OBJECTS
# ============================================================

Objects shareable inside BusinessOS application scope:

- opportunity memo
- meeting memo
- rough estimate

Sharing is limited to preconfigured users
using the same common sharing pattern as NameCardManager.

# ============================================================
# 5. ERP RELATION
# ============================================================

EstimateCreator does not directly implement
full ERP-native authoritative estimate issuance.

Instead it supports:

- approval preparation
- rough estimate publication request
- ERP publication result tracking
- latest inventory reference inquiry
- simplified ERP-compatible input

ERP publication classification:

- rough_estimate

# ============================================================
# 6. OFFLINE POSITION
# ============================================================

EstimateCreator supports offline usage for field work.

Allowed offline:

- login with valid cached auth context
- draft creation
- memo editing
- line editing
- template usage from local cache
- local queueing of sync/share/publication preparation

Not allowed offline:

- live ERP publication execution
- live latest inventory confirmation
- final approval execution requiring server truth
- contract/license refresh

# ============================================================
# 7. PREMIUM FEATURES
# ============================================================

Paid option price:
500 JPY

Premium features:

- structured meeting note format
- QA management
- estimate templates
- app default template expansion
- user preregistered reusable templates

# ============================================================
# 8. COMMON CAPABILITIES
# ============================================================

EstimateCreator reuses common BusinessOS capabilities for:

- user-target sharing
- online synchronization
- pending operation replay
- ERP publication
- audit/history handling style alignment
- shared state/status conventions

# ============================================================
# 9. DESIGN CONCLUSION
# ============================================================

EstimateCreator is an independent application under 07.applications.

It provides a fast, shareable, offline-capable rough estimate workflow,
while preserving the principle that authoritative formal estimate issuance
normally belongs to ERP.


# ============================================================
# DUAL ENTRY AND SHARED AUTH CONTEXT
# ============================================================

EstimateCreator supports both:

- standalone launch
- deeplink launch

These are equally valid primary entry paths.

Authentication behavior differs by entry path:

- standalone launch uses EstimateCreator login entry
- deeplink launch reuses authenticated BusinessOS session context
  from the calling application and does not require redundant login
  when that shared session is valid

Deeplink launch must not bypass:

- session validation
- authorization checks
- company/workspace context validation
- premium entitlement checks where required

Deeplink must not carry raw credentials as business parameters.


# ============================================================
# MULTILINGUAL / MULTICURRENCY / CUSTOMER DELIVERY EXTENSION
# ============================================================

EstimateCreator additionally supports:

- multilingual UI
- locale-aware customer delivery output
- multicurrency display support
- customer preferred locale
- customer preferred currency
- estimate delivery actions
- readonly customer delivery link
- proposal history
- customer response recording
- delivery/open badges and logs

These capabilities strengthen EstimateCreator
without turning it into a full customer portal or CPQ system.


# ============================================================
# CUSTOMER DELIVERY / TEMPLATE / LOCALE STRENGTHENING SUMMARY
# ============================================================

EstimateCreator is additionally strengthened by:

- multilingual UI
- customer preferred locale
- customer preferred currency
- locale-aware output
- PDF export
- email send
- readonly customer delivery link
- delivery history
- open log tracking
- manual customer response recording
- locale-specific templates
- industry-specific templates
- proposal summary templates
- business delivery/open/status badges


# ============================================================
# IOS / ANDROID / TABLET SUPPORT
# ============================================================

EstimateCreator officially supports:

- iPhone
- Android phone
- iPad / iOS tablet
- Android tablet

Business rules, payloads, and state semantics remain shared.

Only device presentation and interaction density
may differ between phone and tablet surfaces.



# ============================================================
# PERMISSION / REVISION / DELIVERY TRACEABILITY STRENGTHENING
# ============================================================

EstimateCreator is additionally strengthened by:

- explicit permission scope modeling
- readonly customer-view boundary
- revision snapshots
- delivery artifacts
- delivery state transitions
- response-basis traceability
- resend-safe delivery audit history
- phone / tablet platform support discipline

