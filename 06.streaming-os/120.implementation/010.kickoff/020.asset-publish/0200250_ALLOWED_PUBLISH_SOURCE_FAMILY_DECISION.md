# ============================================================
# ALLOWED PUBLISH SOURCE FAMILY DECISION
# ============================================================

status: canonical-decision
layer: implementation
domain: asset-publish
system: StreamingOS
prepared_by: Zero
owner: Boss

decision_id:
K2-003

decision:
Allowed publish_source_type family set at K2 meaning level is fixed to:

allowed_publish_source_type:
- session
- archive_asset
- clip_asset

semantic_rule:
- session source means publish is initiated from a streaming session root
- archive_asset source means publish is initiated from an archived asset root
- clip_asset source means publish is initiated from a clip asset root

not_allowed_at_k2:
- creator_studio_draft
- playlist
- watch_queue_item
- notification
- report/appeal/review objects
- ranking result
- ad object
- corporate oversight object

publish_source_id_rule:
- publish_source_id is polymorphic only within the allowed source family set
- polymorphism is controlled by publish_source_type
- publish_source_id meaning must not extend beyond the allowed set at K2

canonical_effect:
K2 external publish payload and table-column exactness must be read
with this closed source-family boundary.
