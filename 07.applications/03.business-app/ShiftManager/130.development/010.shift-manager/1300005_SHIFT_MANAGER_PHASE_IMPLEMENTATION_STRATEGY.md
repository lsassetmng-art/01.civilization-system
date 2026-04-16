# ============================================================
# SHIFT MANAGER PHASE IMPLEMENTATION STRATEGY
# ============================================================

status: development-extension
type: phase-implementation-strategy
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the practical phase-by-phase
implementation strategy for ShiftManager.

# ============================================================
# 2. IMPLEMENTATION PRINCIPLE
# ============================================================

implementation_principles:
- implement from core safety to advanced convenience
- preserve draft/publication boundary at all times
- preserve read-only blocking when inactive
- preserve publication-only ERP export
- preserve draft-only generation and scheduled generation
- keep PC and smartphone on the same core feature set
- keep multilingual support as display/output layer only

# ============================================================
# 3. PHASE ORDER
# ============================================================

phase_order:
phase_1:
- bootstrap
- subscription / feature gate
- draft schedule core
- assignment core
- read-only enforcement

phase_2:
- validate-for-publication
- publish / republish
- share rules
- share preview
- my shifts today/week

phase_3:
- generation rules
- auto-generate
- generation result / warning

phase_4:
- scheduled auto-generation
- requested day-off
- difference / confirmation
- headquarters lightweight visibility

phase_5:
- PDF export
- notification
- ERP export / retry

# ============================================================
# 4. DEVELOPMENT PRIORITY RULE
# ============================================================

priority_rule:
Implement in this order:
1. business-safe core
2. publication-safe core
3. generation convenience
4. headquarters/staff convenience
5. export/output/integration completion

# ============================================================
# 5. DO-NOT-BREAK RULES
# ============================================================

do_not_break_rules:
- do not let draft logic leak into publication export
- do not let device type decide business capability
- do not let language setting affect internal codes
- do not auto-publish generated drafts
- do not bypass share/view scope rules
- do not let inactive state retain mutation authority

# ============================================================
# 6. CONCLUSION
# ============================================================

ShiftManager development should proceed
in controlled phases from safe core to advanced operation support.

