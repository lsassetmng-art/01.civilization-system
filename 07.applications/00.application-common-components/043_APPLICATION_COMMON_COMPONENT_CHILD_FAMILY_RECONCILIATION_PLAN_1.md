# ============================================================
# APPLICATION COMMON COMPONENT CHILD FAMILY RECONCILIATION PLAN 1
# ============================================================

status: canonical-plan
layer: application-common-components
domain: child-family-reconciliation-plan
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This file defines the first selective child-family reconciliation plan
after the stabilized post-wave-4b state.

The purpose is not to create another broad parent promotion wave.
The purpose is to organize retained child-family sets
under already-stabilized parent families.

# ============================================================
# 1. TARGET CHILD FAMILY SETS
# ============================================================

target_child_family_sets:
- Knowledge Child Governance / Graph / Navigation / Scenario Family Set
- ERP Child Finance-Operation / Gateway / Resend Family Set
- People Child Certification / Responsibility / Selector / Profile Family Set

# ============================================================
# 2. CHILD FAMILY RECONCILIATION MAP
# ============================================================

child_family_reconciliation_map:

  - child_family_set_name: Knowledge Child Governance / Graph / Navigation / Scenario Family Set
    parent_family:
      - Knowledge / Portal / Scenario Common
    includes:
      - Knowledge Disclaimer and Safety Profile Common
      - Knowledge Source and Review Common
      - Knowledge Learning Path Common
      - Knowledge Timeline and Event Common
      - Character Profile Common
      - Entity and Relation Graph Common
      - DB Driven Copy Delivery Common
      - DB Driven Navigation Tree Common
      - Scenario Playback Structure Common
      - Scenario to Knowledge Reference Common
      - Fixed Knowledge Access for AI Worker Common
    goal:
      Clarify which child families remain
      governance children,
      graph/profile children,
      portal/navigation children,
      scenario children,
      and worker-access children
      under the stabilized parent family.
    output_target:
      - child cluster names
      - retained child responsibilities
      - no new parent promotion in this step

  - child_family_set_name: ERP Child Finance-Operation / Gateway / Resend Family Set
    parent_family:
      - ERP Boundary / Reflection / Finance Operation Common
    includes:
      - Bank Transaction Import / Match Candidate Core
      - Manual Payment / Receipt Confirmation Core
      - Receipt Issuance Core
      - Collection Action / Follow-up History Core
      - Priority Queue / Work Ranking Core
      - Explicit External Publication Gateway Surface
      - ERP Resend Control Surface
    goal:
      Clarify which child families remain
      finance-operation children,
      gateway/result children,
      resend/recovery children,
      and operational priority/follow-up children
      under the stabilized parent family.
    output_target:
      - child cluster names
      - retained child responsibilities
      - no new parent promotion in this step

  - child_family_set_name: People Child Certification / Responsibility / Selector / Profile Family Set
    parent_family:
      - People / Employee / Certification Common
    includes:
      - Certification / License Ledger Viewer
      - Responsibility Scope Presentation
      - Organization-aware Person Selector
      - Character Profile Common
    goal:
      Clarify which child families remain
      certification children,
      responsibility children,
      selector children,
      and profile-reference children
      under the stabilized parent family.
    output_target:
      - child cluster names
      - retained child responsibilities
      - no new parent promotion in this step

# ============================================================
# 3. DECISION RULES
# ============================================================

decision_rules:
- do not reopen parent-family naming unless absolutely necessary
- child-family work must stay under existing stabilized parents
- prefer child-cluster naming over raw long lists where reuse is obvious
- do not create duplicate parent-like names at child level
- keep governance children distinct from UI-only children where needed

# ============================================================
# 4. RECOMMENDED NEXT ACTION
# ============================================================

recommended_next_action:
1. reconcile knowledge child-family set
2. reconcile ERP child-family set
3. reconcile people child-family set
4. record retained child clusters
5. decide whether any child clusters deserve later limited reflection

# ============================================================
# 5. FINAL JUDGMENT
# ============================================================

final_judgment:
The next work should be selective child-family reconciliation,
not another broad parent promotion wave.

# ============================================================
