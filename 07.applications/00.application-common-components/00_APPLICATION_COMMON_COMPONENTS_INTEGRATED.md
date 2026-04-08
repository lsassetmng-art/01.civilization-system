# ============================================================
# APPLICATION COMMON COMPONENTS
# PersonaOS / BusinessOS / Cross-Application Reuse Catalog
# ============================================================

status: canonical
type: integrated-common-catalog
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This document defines the reusable common-component catalog
for applications under CivilizationSystem.

Its purpose is to:
- identify reusable components early
- separate common responsibility from app-specific responsibility
- improve consistency across apps
- make future app design faster and cleaner

Principles:
- PersonaOS is the canonical owner of persona meaning, secretary experience, and presentation semantics
- BusinessOS is the canonical owner of business operations, delivery, sharing, sync, publication, and company AI operation
- applications keep only app-specific UI, entry flow, and feature-specific presentation

# ============================================================
# 1. PERSONAOS-SIDE COMMON COMPONENTS
# ============================================================

## 1-1. Consultation Common

purpose:
Defines the shared meaning boundary of consultation features.

contains:
- consultation tier
- consultation scope
- advisory-only boundary
- consultation output boundary

## 1-2. Secretary Interaction Common

purpose:
Defines the shared meaning of secretary-facing interaction.

contains:
- secretary profile common
- secretary switch common
- visible role presentation common
- summary bubble common
- dominant summary common

## 1-3. Notification Semantics Common

purpose:
Defines shared notification meaning and wording semantics.

contains:
- notification priority
- basic notification
- advanced notification
- quiet hours
- grouped summary
- daily summary
- contextual wording
- secretary tone mapping
- reminder semantics
- urgency semantics

## 1-4. Background Common

purpose:
Defines shared meaning for background presentation switching.

contains:
- background selection
- background preference
- available / unlocked background
- explicit background switching

## 1-5. VisualRuntime Common

purpose:
Defines the canonical runtime semantics for persona and background rendering.

contains:
- canonical rendering semantics
- surface contract
- fallback semantics
- runtime lifecycle semantics
- session disposal semantics

## 1-6. Summary / Digest Common

purpose:
Defines reusable summary and digest semantics.

contains:
- one-item dominant summary
- grouped digest summary
- daily digest semantics
- secretary recap wording
- summary priority semantics

## 1-7. Reminder Common

purpose:
Defines reusable reminder semantics.

contains:
- reminder timing semantics
- snooze semantics
- dismiss semantics
- recurring reminder semantics
- priority escalation semantics

## 1-8. Presence / Mood Presentation Common

purpose:
Defines shared presentation semantics for visible persona state.

contains:
- visible mood state
- role-based expression mapping
- calm / urgent presentation style
- presence wording

## 1-9. Companion Conversation Framing Common

purpose:
Defines reusable conversation framing for companion / assistant style applications.

contains:
- entry framing
- assistant response posture
- supportive wording boundary
- secretary-like framing

## 1-10. Preference Common

purpose:
Defines shared preference meaning for persona-facing apps.

contains:
- tone preference
- summary preference
- notification preference
- background preference
- secretary display preference

# ============================================================
# 2. BUSINESSOS-SIDE COMMON COMPONENTS
# ============================================================

## 2-1. Submission Common

purpose:
Defines common submission semantics for business applications.

contains:
- external API submission only
- explicit submission only
- auto-submission prohibition
- auth context common
- business draft alignment
- formal draft principle

## 2-2. ERP Publication Capability

purpose:
Defines common ERP publication capability.

contains:
- ERP publication request
- approval-needed publication
- publication result state
- no direct app-to-ERP publish

## 2-3. Online Sync Common

purpose:
Defines common online sync foundation for BusinessOS applications.

contains:
- local store
- pending operation queue
- sync coordinator
- push-pull sync
- conflict detection
- conflict resolution

## 2-4. App-internal Sharing Common

purpose:
Defines explicit sharing semantics inside application scope.

contains:
- explicit share
- explicit unshare
- target user selection
- shared state handling

## 2-5. Business AI Worker

purpose:
Defines shared operation layer for company-facing work AI.

contains:
- worker template
- worker employment
- worker assignment / dispatch
- company-grown knowledge
- company-local naming
- usage log
- authority boundary

## 2-6. External Notification Delivery Common

purpose:
Defines shared external delivery capability for notifications and business alerts.

contains:
- LINE delivery
- Slack delivery
- SMS delivery
- Email delivery
- webhook delivery
- delivery target binding
- retry policy
- delivery failure state
- delivery audit log
- explicit send policy
- notification channel preference
- channel fallback rule

## 2-7. Channel Routing Common

purpose:
Defines shared routing logic for delivery and channel selection.

contains:
- channel selection rule
- priority-based routing
- user preference routing
- company policy routing
- fallback route
- delivery suppression rule

## 2-8. Approval / Review Surface Common

purpose:
Defines shared semantics for review and approval states.

contains:
- review-needed state
- approval-required state
- review result state
- hold / rejected / approved semantics

## 2-9. Draft / Work-in-progress Common

purpose:
Defines shared draft and unfinished-work semantics.

contains:
- draft state
- draft completeness
- unsent work state
- review-before-send state
- restore / resume state

## 2-10. Attachment / Evidence Common

purpose:
Defines reusable attachment and evidence handling semantics.

contains:
- attachment metadata
- evidence linkage
- proof file handling
- preview / secure access semantics

## 2-11. Activity Log / Audit Trail Common

purpose:
Defines reusable operation-history and audit semantics.

contains:
- who did what
- when changed
- share history
- submission history
- delivery history
- review history

## 2-12. Assignment / Work Queue Common

purpose:
Defines reusable assignment and work-queue semantics.

contains:
- assigned user
- work queue state
- pending / in-progress / completed
- reassignment semantics

## 2-13. Contact / Destination Common

purpose:
Defines reusable recipient / destination semantics.

contains:
- destination identity
- contact channel binding
- preferred route
- reachable state
- organization-linked contact

## 2-14. Template / Generated Output Common

purpose:
Defines reusable template and generated business output semantics.

contains:
- template selection
- generated wording
- formal output mode
- company style adaptation

## 2-15. Install Guidance / Cross-app Launch Common

purpose:
Defines reusable cross-application launch and install guidance semantics.

contains:
- deep link launch
- app install guidance
- unavailable feature fallback
- cross-app handoff semantics

# ============================================================
# 3. LINE / SLACK / SMS POSITIONING
# ============================================================

LINE / Slack / SMS are not notification meaning themselves.

They should be split into two layers:

PersonaOS side:
- urgency meaning
- quiet-hours meaning
- summary meaning
- secretary wording
- companion-facing tone

BusinessOS side:
- external delivery channel
- channel routing
- delivery target binding
- retry and failure handling
- delivery log and audit

Principle:
- PersonaOS defines what the notification means
- BusinessOS defines where and how it is delivered

# ============================================================
# 4. WHAT BELONGS TO COMMON VS APP-SPECIFIC
# ============================================================

Common components should contain:
- meaning
- boundaries
- authority principles
- common models
- common operation layers
- common runtime semantics
- common policy semantics

App-specific responsibility should contain:
- screen layout
- button placement
- entry flow
- final wording presentation
- plan unlock UI
- app-specific guidance
- app-specific review surface

Principle:
Common components are the canonical source of meaning.
Applications own presentation and flow.

# ============================================================
# 5. REUSE DECISION RULE
# ============================================================

When designing a new app, determine in this order:

1. is this a canonical meaning definition?
2. is this a reusable authority / operation / delivery / sync capability?
3. is this likely to be reused across multiple apps?
4. is this not just UI but reusable meaning or capability?
5. should this belong to PersonaOS common or BusinessOS common?
6. keep only the residual part inside the app itself

# ============================================================
# 6. PRIMARY REUSE TARGETS
# ============================================================

PersonaOS-side reuse targets:
- PocketSecretary
- companion apps
- avatar apps
- assistant apps
- future secretary-facing applications

BusinessOS-side reuse targets:
- PocketSecretary Enterprise
- EstimateCreator
- NameCardManager
- ERP-related apps
- future business apps

External Notification Delivery reuse targets:
- PocketSecretary Enterprise
- EstimateCreator
- NameCardManager
- approval request apps
- business alert apps
- future delivery-enabled apps

# ============================================================
# 7. SUMMARY
# ============================================================

The application common-component catalog is fixed as follows.

PersonaOS-side common:
- Consultation Common
- Secretary Interaction Common
- Notification Semantics Common
- Background Common
- VisualRuntime Common
- Summary / Digest Common
- Reminder Common
- Presence / Mood Presentation Common
- Companion Conversation Framing Common
- Preference Common

BusinessOS-side common:
- Submission Common
- ERP Publication Capability
- Online Sync Common
- App-internal Sharing Common
- Business AI Worker
- External Notification Delivery Common
- Channel Routing Common
- Approval / Review Surface Common
- Draft / Work-in-progress Common
- Attachment / Evidence Common
- Activity Log / Audit Trail Common
- Assignment / Work Queue Common
- Contact / Destination Common
- Template / Generated Output Common
- Install Guidance / Cross-app Launch Common

This structure enables all future apps to reuse common meaning first,
and keep only screen-specific and flow-specific differences inside each app.

# ============================================================
