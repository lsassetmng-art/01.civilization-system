# ============================================================
# ASSET PUBLISH DDL READINESS MEMO
# ============================================================

status: canonical-readiness-memo
layer: implementation
domain: asset-publish
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Summarizes K2 readiness for future DDL drafting.

tables_in_scope:
- archive_assets
- clip_assets
- external_publish_jobs

meaning_level_ready_items:
- archive identity semantics are closed
- clip identity and lineage/provenance semantics are closed
- publication/review/governance boundary is closed
- external publish control-plane meaning is closed
- publish source family boundary is closed

still_precision_open:
- exact SQL type names
- exact polymorphic source storage strategy
- exact default clauses
- exact FK action clauses
- exact check syntax
- exact index method and partial-index strategy
- exact policy/projection SQL

ddl_risk_notes:
- do not collapse archive and clip identity
- do not collapse publication/review/governance states
- do not expose external publish job as viewer-facing content
- do not widen publish_source_type beyond the closed family set

recommended_future_order:
1. decide SQL precision items with Sato(DB reviewer)
2. draft archive/clip base table DDL
3. draft external publish job DDL
4. draft minimal indexes
5. draft projection/policy strategy
6. review against K2 decision pack
