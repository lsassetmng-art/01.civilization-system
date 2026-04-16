# ============================================================
# NAMECARDMANAGER COMMON COMPONENT ADOPTION
# ============================================================

status: canonical
layer: integration
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines which common components NameCardManager adopts,
which remain planned or candidate, and which new commonization
targets should be considered.

# ============================================================
# 1. ADOPTION GOAL
# ============================================================

NameCardManager should maximize reuse of already-defined
common components where appropriate,
while keeping truly app-specific behavior local.

# ============================================================
# 2. CURRENTLY ADOPTED COMMON COMPONENTS
# ============================================================

The following common components are adopted as current usage.

## BusinessOS common
- Submission Common
- ERP Publication Capability
- Online Sync Common
- App-internal Sharing Common
- Business AI Worker
- External Notification Delivery Common
- Channel Routing Common
- Approval / Review Surface Common
- Draft / Work-in-progress Common
- Activity Log / Audit Trail Common
- Contact / Destination Common

## ShiftManager additive common
- Visibility Scope Evaluation Common
- Publish Target Confirmation Common

# ============================================================
# 3. PLANNED COMMON COMPONENT USAGE
# ============================================================

The following common components are planned for future usage alignment.

## PersonaOS common
- Notification Semantics Common
- Summary / Digest Common

## BusinessOS common
- Attachment / Evidence Common
- Install Guidance / Cross-app Launch Common

# ============================================================
# 4. CANDIDATE COMMON COMPONENT USAGE
# ============================================================

The following common components remain candidate only.

## PersonaOS common
- Consultation Common
- Reminder Common
- Companion Conversation Framing Common
- Preference Common

## BusinessOS common
- Assignment / Work Queue Common
- Template / Generated Output Common

## ShiftManager additive common
- Publication / Versioned Snapshot Common
- Rule-based Draft Generation Common
- Generation Warning / Shortage Review Common

# ============================================================
# 5. NOT-APPLICABLE COMMON COMPONENTS
# ============================================================

The following common components are currently treated as not applicable.

## PersonaOS common
- Secretary Interaction Common
- Background Common
- VisualRuntime Common
- Presence / Mood Presentation Common

## ShiftManager additive common
- Schedule / Time-slot Planning Common

# ============================================================
# 6. APP-SPECIFIC RESIDUALS
# ============================================================

The following residuals remain app-specific at current phase.

- card scan flow
- contact profile screen
- relationship graph UI
- responsibility scope presentation
- person-specific detail layout

# ============================================================
# 7. COMMONIZATION DECISION
# ============================================================

## Keep app-specific for now
- card scan flow
- relationship graph UI
- person-specific detail layout

Reason:
These are strongly specialized to NameCardManager behavior
and should not be generalized too early.

## Consider commonization
- contact profile screen
- responsibility scope presentation

Reason:
These are likely reusable across contact-, customer-, lead-,
vendor-, and business-facing applications.

## Partial commonization candidate
- card scan flow lower-level capture support

Potential reusable subparts:
- front/back capture support
- review / retry support
- protected image staging

This should be considered as an extension of
Attachment / Evidence Common rather than a full scan-flow common.

# ============================================================
# 8. ADOPTION RULES
# ============================================================

- Prefer already-defined common components before adding new app-local logic.
- Do not force commonization for strongly app-specific interaction.
- Keep ERP publication routed through shared BusinessOS capability.
- Keep sync, sharing, audit, and approval behavior aligned with common layers.

# ============================================================
# 9. NEXT COMMONIZATION TARGETS
# ============================================================

Recommended next commonization targets:
- Contact Profile Screen Common
- Responsibility Scope Presentation Common
- Attachment / Evidence Common extension for card capture support

