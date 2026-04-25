# ============================================================
# APPLICATION COMMON COMPONENT RECONCILIATION WAVE 4 PLAN
# ============================================================

status: canonical-plan
layer: application-common-components
domain: reconciliation-wave-plan
wave: 4
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This file defines reconciliation wave 4
for the next major adopted-but-not-fully-reconciled cluster
after the stabilized post-wave-3b state.

This is not fixed promotion yet.
This is reconciliation planning first.

# ============================================================
# 1. WAVE 4 TARGETS
# ============================================================

wave_4_targets:
- Knowledge / Portal / Scenario Common
- ERP Boundary / Reflection / Finance Operation Common
- People / Employee / Certification Common

# ============================================================
# 2. RECONCILIATION MAP
# ============================================================

reconciliation_map:

  - candidate_name: Knowledge / Portal / Scenario Common
    likely_merge_with:
      - Common Knowledge Access Gateway
      - Caller and Scope Resolution Common
      - Knowledge Disclaimer and Safety Profile Common
      - Knowledge Source and Review Common
      - Knowledge Learning Path Common
      - Knowledge Timeline and Event Common
      - Character Profile Common
      - Entity and Relation Graph Common
      - AI Helpdesk Entry Common
      - DB Driven Copy Delivery Common
      - DB Driven Navigation Tree Common
      - Scenario Playback Structure Common
      - Scenario to Knowledge Reference Common
      - Fixed Knowledge Access for AI Worker Common
    intended_family_direction:
      - knowledge-portal-scenario family
    merge_goal:
      Establish one reusable parent family for
      knowledge access,
      caller/scope routing,
      source/review governance,
      profile/graph/timeline knowledge structure,
      portal entry/navigation/copy delivery,
      scenario playback,
      scenario-to-knowledge bridge,
      and fixed worker knowledge access.
    fixed_promotion_ready_now:
      no
    reason_not_ready:
      overlap spans gateway, governance, entity graph, portal entry, and scenario bridge layers

  - candidate_name: ERP Boundary / Reflection / Finance Operation Common
    likely_merge_with:
      - Shared ERP Reflection Request Core
      - Authority Badge / Master Boundary Display Core
      - Bank Transaction Import / Match Candidate Core
      - Manual Payment / Receipt Confirmation Core
      - Receipt Issuance Core
      - Collection Action / Follow-up History Core
      - Priority Queue / Work Ranking Core
      - Explicit External Publication Gateway Surface
      - External Publication Result Viewer
      - ERP Resend Control Surface
    intended_family_direction:
      - ERP-boundary-reflection-finance-operation family
    merge_goal:
      Establish one reusable parent family for
      ERP boundary visibility,
      reflection/publication request/result handling,
      resend/failure visibility,
      finance operation support,
      bank match / manual confirmation / receipt issuance,
      and work-priority operational handling.
    fixed_promotion_ready_now:
      no
    reason_not_ready:
      overlap spans ERP boundary meaning, finance operations, publication gateways, and resend/result surfaces

  - candidate_name: People / Employee / Certification Common
    likely_merge_with:
      - Person / Employee Summary Card
      - Certification / License Ledger Viewer
      - Responsibility Scope Presentation
      - Organization-aware Person Selector
      - Contact Profile Screen Common
      - Character Profile Common
    intended_family_direction:
      - people-employee-certification family
    merge_goal:
      Establish one reusable parent family for
      person/employee summary,
      organization-aware selection,
      certification/license visibility,
      responsibility scope presentation,
      and people-profile reference structure.
    fixed_promotion_ready_now:
      no
    reason_not_ready:
      overlap spans employee/business scope, generic contact/profile scope, and certification/responsibility layers

# ============================================================
# 3. WAVE 4 OUTPUT GOAL
# ============================================================

wave_4_output_goal:
- choose reconciled family names
- identify absorbed names
- identify retained child subfamilies
- prepare a reduced wave_4b fixed-promotion subset candidate set

# ============================================================
# 4. WAVE 4 DECISION RULES
# ============================================================

decision_rules:
- prefer parent meaning families over connector-local or screen-local fragments
- keep knowledge governance distinct from pure portal display mechanics where needed
- keep ERP boundary meaning above resend/result/UI-only surfaces
- keep people/employee/company-scoped meaning separate from purely fictional or lore-only profile meaning when needed
- do not promote before overlap is resolved

# ============================================================
# 5. RECOMMENDED NEXT ACTION
# ============================================================

recommended_next_action:
For each wave 4 target:
1. choose one reconciled family name
2. list absorbed existing names
3. define owner side
4. define retained child subfamilies
5. define wave_4b fixed-promotion candidate subset

# ============================================================
# 6. FINAL JUDGMENT
# ============================================================

final_judgment:
Wave 4 should be handled as reconciliation first,
not direct promotion.

# ============================================================
