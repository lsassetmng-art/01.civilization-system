# ============================================================
# K1 K6 DDL RECONNECT MASTER MEMO
# ============================================================

status: canonical-master-memo
layer: meta
domain: ddl-reconnect-and-review-handoff
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Defines the master reading for reconnecting K1 through K6 DDL-facing work.

fixed_rule:
- PersonaOS owns persona mutable canonical truth.
- StreamingOS DDL-facing fields must be read as:
  - reference fields
  - signed snapshot fields
  - applied snapshot fields
  - request event refs
  - result event refs
  - local non-canonical operational fields
- No DDL packet may be read as persona core duplication.

reconnect_meaning:
Existing DDL draft packets are not discarded.
They are re-read under the fixed persona-boundary premise and may proceed
through normal review, reflection, intake, and approval decision flow.
