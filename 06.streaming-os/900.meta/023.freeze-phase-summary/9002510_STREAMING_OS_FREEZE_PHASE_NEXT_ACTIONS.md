# ============================================================
# STREAMING OS FREEZE PHASE NEXT ACTIONS
# ============================================================

status: canonical-meta
system: streaming-os
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document lists the most natural
next actions after the current freeze-phase progress.

# ============================================================
# 2. RECOMMENDED NEXT ACTION ORDER
# ============================================================

recommended_order:
- step_01_final_verification_pass
- step_02_executable_sql_polish
- step_03_rls_policy_sql_draft
- step_04_transport_binding_decision
- step_05_runtime_binding_decision
- step_06_screen_spec_freeze
- step_07_implementation_kickoff_split

# ============================================================
# 3. HIGHEST VALUE IMMEDIATE ACTIONS
# ============================================================

highest_value_immediate_actions:
- verify root overview / index / integrated consistency
- verify new domain numbering and naming consistency
- convert executable DDL freeze docs into direct-run SQL batches
- draft RLS policy SQL from the frozen role matrix
- decide whether API transport is REST-style,
  RPC-style,
  or mixed
- decide queue / scheduler runtime binding target

# ============================================================
# 4. THINGS THAT SHOULD NOT BE REOPENED WITHOUT STRONG REASON
# ============================================================

do_not_reopen_lightly:
- creator / viewer / moderation / notification / corporate separation
- exact API catalog existence
- executable DDL family grouping
- runtime job family grouping
- access-control actor class split
- major module / package split

