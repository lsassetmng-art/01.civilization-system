# ============================================================
# ESTIMATE CREATOR CONSTITUTION
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. CONSTITUTIONAL ROLE
# ============================================================

EstimateCreator is a BusinessOS application for
rough estimate creation and estimate-related collaboration.

EstimateCreator is not the default authoritative ERP estimate issuer.

# ============================================================
# 2. DEFAULT ESTIMATE CLASS
# ============================================================

The default class of an EstimateCreator estimate is:

- rough_estimate

This classification must remain explicit in model,
runtime, integration, and interface.

# ============================================================
# 3. FORMAL ESTIMATE PRINCIPLE
# ============================================================

The normal authoritative formal estimate
must be created and governed in ERP.

EstimateCreator may allow local formal usage
only as an operational exception.

When local formal usage is allowed,
auditability, revision traceability,
and approval visibility are mandatory.

# ============================================================
# 4. ERP PUBLICATION PRINCIPLE
# ============================================================

EstimateCreator must not own direct ERP-authoritative issuance logic
as its private isolated mechanism.

ERP publication must be performed through
shared BusinessOS publication capability.

EstimateCreator may prepare and submit publication requests,
but publication execution authority belongs to the shared publication path.

# ============================================================
# 5. SHARING PRINCIPLE
# ============================================================

EstimateCreator supports app-internal sharing
only to preconfigured users.

Shareable objects are limited to:

- opportunity memo
- meeting memo
- rough estimate

Unbounded public sharing is prohibited.

# ============================================================
# 6. OFFLINE PRINCIPLE
# ============================================================

Offline usage is allowed for drafting and preparation.

Offline usage must never silently create false authority.

Therefore offline mode may support:

- draft creation
- local editing
- local queueing
- local cache reading

Offline mode must not silently claim completion for:

- live approval
- live ERP publication
- live latest inventory truth confirmation

# ============================================================
# 7. INVENTORY REFERENCE PRINCIPLE
# ============================================================

Inventory information displayed by EstimateCreator
is reference information only.

The final authoritative inventory truth remains outside EstimateCreator
and must be obtained from the connected ERP authority.

# ============================================================
# 8. PREMIUM FEATURE PRINCIPLE
# ============================================================

Premium features are optional business enhancements,
not architectural forks.

Premium features must remain gated additions
on top of the same canonical application model.

Premium features include:

- structured meeting note format
- QA management
- estimate templates

# ============================================================
# 9. AUDIT PRINCIPLE
# ============================================================

The application must preserve auditable records for:

- estimate creation
- estimate modification
- memo modification
- share actions
- approval-related actions
- ERP publication actions
- sync actions
- premium feature related business actions where applicable

# ============================================================
# 10. FAIL CLOSED PRINCIPLE
# ============================================================

Whenever EstimateCreator cannot verify required authority,
required freshness,
required identity,
or required online confirmation,
it must fail closed.


# ============================================================
# 11. ENTRY PATH CONSTITUTION
# ============================================================

EstimateCreator supports the following equally valid primary entry paths:

- standalone launch
- deeplink launch

Neither entry path is subordinate in constitutional status.

# ============================================================
# 12. SHARED AUTH CONTEXT CONSTITUTION
# ============================================================

Standalone launch uses the application login entry.

Deeplink launch may skip redundant login UI
only when authenticated BusinessOS session context
from the calling application is valid and reusable.

This shared-session reuse must not bypass
authorization, visibility, approval,
publication, or premium entitlement checks.

# ============================================================
# 13. DEEPLINK SAFETY CONSTITUTION
# ============================================================

Deeplink parameters may provide launch context,
but must not be treated as authority by themselves.

Raw credentials must not be transported as deeplink business parameters.

If shared session context is missing, expired, or invalid,
the application must safely fall back to login
or fail closed according to policy.

