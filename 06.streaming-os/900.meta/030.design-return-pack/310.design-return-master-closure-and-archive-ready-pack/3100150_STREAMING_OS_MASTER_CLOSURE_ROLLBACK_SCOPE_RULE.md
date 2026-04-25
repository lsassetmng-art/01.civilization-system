# ============================================================
# STREAMING OS MASTER CLOSURE ROLLBACK SCOPE RULE
# ============================================================

status: canonical-rule
layer: meta
domain: design-return-master-closure-and-archive-ready-pack
system: StreamingOS
prepared_by: Zero
owner: Boss

rollback_triggers:
- newly discovered invariant break risk
- newly discovered hidden blocking contradiction
- newly discovered ownership or mutation-path contradiction
- newly discovered cross-domain meaning conflict
- newly discovered persona-boundary contradiction
- newly discovered archive or closure dependency contradiction

rollback_scope_rule:
- note-only issue -> local correction only
- bounded non-structural issue -> bounded governance correction only
- structural/invariant-breaking issue -> scoped rollback to affected decision layer
- ownership/model contradiction -> rollback to targeted redesign scope

forbidden:
- whole-package rollback without concrete evidence
- treating invariant-breaking contradiction as documentation-only cleanup
