# ============================================================
# POCKET SECRETARY IDEAL TO EXISTING MAPPING
# ============================================================

status: draft
type: implementation-mapping
application: PocketSecretary
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

purpose:
Map the ideal PocketSecretary design
to the current existing implementation,
so that implementation alignment can proceed
without ambiguity.

mapping_status_values:
- aligned
- partial
- mismatched
- missing
- stub

priority_values:
- P0
- P1
- P2
- P3

# ============================================================
# 1. MAPPING TABLE
# ============================================================

mappings:

  - mapping_id: MAP-001
    domain: dashboard_home
    ideal:
      Dashboard is the canonical home.
      It must show one primary summary,
      persona display,
      today support info,
      entry buttons,
      and avatar presence.
    existing:
      - DashboardActivity
      - activity_dashboard.xml
      - DashboardActivity.java.bak
      - TodaySummaryActivity
      - AllFeaturesActivity
    mapping_status: partial
    gap:
      - exact dashboard contract not fully reflected in current runtime
      - current dashboard is thinner than ideal
      - bak contains recoverable home signals
    action:
      - keep current renderer host
      - restore useful bak meanings
      - add summary/persona/today/entry contract
    priority: P0

  - mapping_id: MAP-002
    domain: summary_priority
    ideal:
      One primary summary selected by canonical priority:
      schedule, todo, important notification,
      travel expense, general guidance.
    existing:
      - TodayEngine
      - UpcomingEventPicker
      - local todo domain
      - local notification domain
    mapping_status: partial
    gap:
      - exact selector flow not fully fixed in implementation
      - travel expense source still placeholder
    action:
      - implement selector using fixed source model
    priority: P0

  - mapping_id: MAP-003
    domain: secretary_wording
    ideal:
      Stable meaning with secretary-specific expression.
    existing:
      - core/secretary/*
      - secretary-related UI flows
    mapping_status: partial
    gap:
      - minimum wording dictionary not fully connected in implementation
    action:
      - add wording resolver
      - connect minimum dictionary
    priority: P1

  - mapping_id: MAP-004
    domain: persona_switching
    ideal:
      Persona / secretary switching is explicit and stable.
    existing:
      - PersonaSelectActivity
      - PersonaSelectBottomSheet
      - CurrentPersonaStore
    mapping_status: partial
    gap:
      - dashboard exact reflection path needs final alignment
    action:
      - bind dashboard refresh to current persona selection
    priority: P1

  - mapping_id: MAP-005
    domain: background_switching
    ideal:
      Background switching is explicit and reflected on home.
    existing:
      - BackgroundSelectActivity
      - BackgroundStore
    mapping_status: partial
    gap:
      - dashboard reflection path needs final alignment
    action:
      - wire dashboard background refresh behavior
    priority: P1

  - mapping_id: MAP-006
    domain: consultation
    ideal:
      Personal consultation must be reachable and usable.
    existing:
      - ConsultActivity
      - ConsultEngine
      - consult/*
      - SecretaryChatActivity
    mapping_status: partial
    gap:
      - SecretaryChatActivity is weaker / more stub-like than ConsultActivity
      - role split needs clarification
    action:
      - treat ConsultActivity as main consultation path
      - keep SecretaryChatActivity secondary until aligned
    priority: P1

  - mapping_id: MAP-007
    domain: notification
    ideal:
      Notification semantics must feed home summary and remain usable.
    existing:
      - NotificationCenterActivity
      - notification/*
      - NotificationHelper
      - BootReceiver / NotificationReceiver
    mapping_status: partial
    gap:
      - exact important-notification feed into home selector not fully aligned
    action:
      - connect important notification source to summary selector
    priority: P1

  - mapping_id: MAP-008
    domain: deep_link
    ideal:
      Exact payload contract for EstimateCreator / NameCardManager,
      with auth inheritance boundary and fail-closed behavior.
    existing:
      - install guidance concept
      - deep link design files
      - current runtime partial or not yet fully connected
    mapping_status: missing
    gap:
      - exact runtime implementation is not yet complete
    action:
      - implement contract-shaped launcher
    priority: P1

  - mapping_id: MAP-009
    domain: company_secretary
    ideal:
      personal_ai is default;
      company_ai is enterprise additive and explicit.
    existing:
      - Business AI Worker design side
      - PocketSecretary company secretary boundary design
    mapping_status: missing
    gap:
      - front behavior is designed but runtime is not yet aligned
    action:
      - add explicit business/company support entry
    priority: P2

  - mapping_id: MAP-010
    domain: business_erp_boundary
    ideal:
      Draft/request/business publication boundaries are explicit.
    existing:
      - draft/work-in-progress concepts
      - enterprise/business design side
    mapping_status: partial
    gap:
      - full front runtime path still incomplete
    action:
      - keep additive after base home stabilization
    priority: P2

  - mapping_id: MAP-011
    domain: platform_support
    ideal:
      PocketSecretary is designed for iPhone / Android.
    existing:
      - platform support additive design
      - current implementation mainly Android-side
    mapping_status: partial
    gap:
      - implementation is Android-centered
      - cross-platform adapter detail not yet expanded
    action:
      - preserve cross-platform design contract
      - defer runtime iPhone-specific completion
    priority: P3

# ============================================================
# 2. IMPLEMENTATION INTERPRETATION
# ============================================================

interpretation:
- P0 = must align before broad implementation proceeds
- P1 = strong next alignment target
- P2 = additive after core secretary-home stabilization
- P3 = design-fixed but runtime-later acceptable

# ============================================================
# 3. ONE-LINE JUDGMENT
# ============================================================

judgment:
PocketSecretary already has substantial existing implementation.
The correct path is not rebuild-from-zero,
but ideal-to-existing mapping followed by prioritized alignment.

