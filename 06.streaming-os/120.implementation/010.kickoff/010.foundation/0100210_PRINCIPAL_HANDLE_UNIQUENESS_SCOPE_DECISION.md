# ============================================================
# PRINCIPAL HANDLE UNIQUENESS SCOPE DECISION
# ============================================================

status: canonical-decision
layer: implementation
domain: foundation
system: StreamingOS
prepared_by: Zero
owner: Boss

decision_id:
K1-001

decision:
Handle uniqueness is global at StreamingOS business level.

decision_statement:
- handle is unique across streaming_principals
- handle is not scoped by company_id
- handle is not scoped by channel_id
- handle is not scoped by principal_type

reasoning:
- public lookup stability is improved
- canonical identity discovery remains simple
- cross-surface ambiguity is reduced
- API validation remains simpler and clearer

implications:
- principal handle validation must be global
- SQL unique strategy later aligns to global uniqueness
- migration/import paths must resolve collisions before final write

non_decision:
- exact SQL unique index clause is still implementation-stage detail
- case sensitivity rule may still need wording precision if not yet fixed elsewhere

canonical_effect:
The K1 principal payload and table-column exactness should be interpreted
with global business-level handle uniqueness.
