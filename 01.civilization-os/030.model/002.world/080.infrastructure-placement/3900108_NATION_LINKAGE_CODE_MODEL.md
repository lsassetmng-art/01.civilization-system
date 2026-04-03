# ============================================================
# NATION LINKAGE CODE MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-to-nation-linkage
component: nation-linkage-code

owner: Boss
prepared_by: Zero


# ============================================================
# 1. EXECUTION CODES
# ============================================================

execution_codes:
- NLF-001 nation_link_applied
- NLF-002 nation_link_recalculated
- NLF-003 nation_link_rollup_applied
- NLF-004 nation_link_skipped_inactive
- NLF-005 nation_link_removed
- NLF-006 nation_link_replacement_applied
- NLF-007 optional_port_reserved_only


# ============================================================
# 2. FINAL RULE
# ============================================================

Nation linkage codes must remain stable
for logs, UI summaries, and future implementation.
