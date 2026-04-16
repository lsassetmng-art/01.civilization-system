# ============================================================
# END OF LIFE PLANNER DOCUMENT CONSISTENCY CHECK
# ============================================================

status: canonical-draft
phase: L14-document-consistency-check
app: EndOfLifePlanner
scope:
  - Ledger は対象外
  - EndOfLifePlanner 配下の設計文書本体のみを確認

phase_field_check:
  - missing phase: 0000000_END_OF_LIFE_PLANNER_INDEX.md
  - missing phase: 0000001_END_OF_LIFE_PLANNER_OVERVIEW.md
  - missing phase: 0000002_END_OF_LIFE_PLANNER_CANONICAL.md
  - missing phase: 010.constitution/010.core/0100002_CONSTITUTION_CORE_INDEX.md
  - missing phase: 010.constitution/010.core/0100003_CONSTITUTION_CORE_OVERVIEW.md
  - missing phase: 010.constitution/010.core/0100004_END_OF_LIFE_PLANNER_CORE_PRINCIPLES.md
  - missing phase: 010.constitution/0100000_CONSTITUTION_INDEX.md
  - missing phase: 010.constitution/0100001_END_OF_LIFE_PLANNER_CONSTITUTION_OVERVIEW.md
  - missing phase: 020.architecture/010.core/0200002_ARCHITECTURE_CORE_INDEX.md
  - missing phase: 020.architecture/010.core/0200003_ARCHITECTURE_CORE_OVERVIEW.md
  - missing phase: 020.architecture/010.core/0200004_END_OF_LIFE_PLANNER_SYSTEM_ARCHITECTURE.md
  - missing phase: 020.architecture/0200000_ARCHITECTURE_INDEX.md
  - missing phase: 020.architecture/0200001_END_OF_LIFE_PLANNER_ARCHITECTURE_OVERVIEW.md
  - missing phase: 030.model/010.core/0300002_MODEL_CORE_INDEX.md
  - missing phase: 030.model/010.core/0300003_MODEL_CORE_OVERVIEW.md
  - missing phase: 030.model/010.core/0300004_END_OF_LIFE_PLANNER_DOMAIN_MODEL.md
  - missing phase: 030.model/0300000_MODEL_INDEX.md
  - missing phase: 030.model/0300001_END_OF_LIFE_PLANNER_MODEL_OVERVIEW.md
  - missing phase: 040.runtime/010.core/0400002_RUNTIME_CORE_INDEX.md
  - missing phase: 040.runtime/010.core/0400003_RUNTIME_CORE_OVERVIEW.md
  - missing phase: 040.runtime/010.core/0400004_END_OF_LIFE_PLANNER_RUNTIME_BEHAVIOR.md
  - missing phase: 040.runtime/0400000_RUNTIME_INDEX.md
  - missing phase: 040.runtime/0400001_END_OF_LIFE_PLANNER_RUNTIME_OVERVIEW.md
  - missing phase: 050.flow/010.core/0500002_FLOW_CORE_INDEX.md
  - missing phase: 050.flow/010.core/0500003_FLOW_CORE_OVERVIEW.md
  - missing phase: 050.flow/010.core/0500004_END_OF_LIFE_PLANNER_USER_FLOW.md
  - missing phase: 050.flow/0500000_FLOW_INDEX.md
  - missing phase: 050.flow/0500001_END_OF_LIFE_PLANNER_FLOW_OVERVIEW.md
  - missing phase: 060.integration/010.core/0600002_INTEGRATION_CORE_INDEX.md
  - missing phase: 060.integration/010.core/0600003_INTEGRATION_CORE_OVERVIEW.md
  - missing phase: 060.integration/010.core/0600004_END_OF_LIFE_PLANNER_INTEGRATION_BOUNDARY.md
  - missing phase: 060.integration/0600000_INTEGRATION_INDEX.md
  - missing phase: 060.integration/0600001_END_OF_LIFE_PLANNER_INTEGRATION_OVERVIEW.md
  - missing phase: 070.operations/010.core/0700002_OPERATIONS_CORE_INDEX.md
  - missing phase: 070.operations/010.core/0700003_OPERATIONS_CORE_OVERVIEW.md
  - missing phase: 070.operations/010.core/0700004_END_OF_LIFE_PLANNER_OPERATIONS_GUIDE.md
  - missing phase: 070.operations/0700000_OPERATIONS_INDEX.md
  - missing phase: 070.operations/0700001_END_OF_LIFE_PLANNER_OPERATIONS_OVERVIEW.md
  - missing phase: 080.policy/010.core/0800002_POLICY_CORE_INDEX.md
  - missing phase: 080.policy/010.core/0800003_POLICY_CORE_OVERVIEW.md
  - missing phase: 080.policy/010.core/0800004_END_OF_LIFE_PLANNER_POLICY_SET.md
  - missing phase: 080.policy/0800000_POLICY_INDEX.md
  - missing phase: 080.policy/0800001_END_OF_LIFE_PLANNER_POLICY_OVERVIEW.md
  - missing phase: 090.interface/010.core/0900002_INTERFACE_CORE_INDEX.md

implementation_boundary_check:
  - boundary noted: 090.interface/090040_END_OF_LIFE_PLANNER_ELDERLY_ACCESSIBILITY_UI_NOTE.md
  - boundary noted: 130.development/130001_END_OF_LIFE_PLANNER_DEVELOPMENT_OVERVIEW.md
  - boundary noted: 130.development/130020_END_OF_LIFE_PLANNER_IMPLEMENTATION_READINESS_JUDGMENT.md
  - boundary noted: 130.development/130090_END_OF_LIFE_PLANNER_FINAL_STAMPING_NOTE.md
  - boundary noted: 130.development/130100_END_OF_LIFE_PLANNER_DESIGN_FINAL_READY_NOTE.md
  - boundary noted: 920.meta/920001_END_OF_LIFE_PLANNER_HANDOFF_OVERVIEW.md
  - boundary noted: 920.meta/920010_END_OF_LIFE_PLANNER_NEXT_CHAT_HANDOFF.md
  - boundary noted: 920.meta/920030_END_OF_LIFE_PLANNER_FINAL_HANDOFF_CONSOLIDATION.md
  - boundary noted: 920.meta/920060_END_OF_LIFE_PLANNER_IMPLEMENTATION_PREPARATION_HANDOFF.md

handoff_presence_check:
  - 920.meta/920010_END_OF_LIFE_PLANNER_NEXT_CHAT_HANDOFF.md: present
  - 920.meta/920030_END_OF_LIFE_PLANNER_FINAL_HANDOFF_CONSOLIDATION.md: present
  - 920.meta/920050_END_OF_LIFE_PLANNER_FINAL_READY_HANDOFF_NOTE.md: present
  - 920.meta/920060_END_OF_LIFE_PLANNER_IMPLEMENTATION_PREPARATION_HANDOFF.md: present

counts:
  total_files: 155
  index_files: 43
  overview_files: 43

consistency_summary:
  - Document structure consistency recheck completed.
  - Ledger registration / portfolio reflection remains out of scope.
  - EndOfLifePlanner is implementation-preparation-complete and implementation-not-started.
