# ============================================================
# STREAMING OS F4 RUNTIME QUEUE SCHEDULER FREEZE RESULT V1
# ============================================================

status: frozen
phase: F4
scope: runtime
prepared_by: Zero
owner: Boss

decision:
Runtime meaning is frozen.
Queue families, job families, retry windows, and scheduler intent are fixed.

canonical_queue_count:
- 37

queue_families:

core:
- streaming.session.lifecycle
- streaming.asset.archive.generate
- streaming.asset.clip.derive
- streaming.publish.dispatch
- streaming.publish.retry
- streaming.monetization.tip.execute
- streaming.monetization.autotip.evaluate
- streaming.reaction.rollup
- streaming.ranking.generate
- streaming.ad.display.record

creator_and_viewer:
- streaming.creator.summary.refresh
- streaming.creator.draft.autosave
- streaming.creator.upload.recovery
- streaming.creator.publish.validation
- streaming.creator.analytics.refresh
- streaming.viewer.feed.refresh
- streaming.viewer.search.compaction
- streaming.viewer.watch.rollup
- streaming.viewer.follow.refresh
- streaming.viewer.playlist.reindex
- streaming.viewer.queue.repair

moderation_and_notification:
- streaming.review.queue.dispatch
- streaming.review.ai.execute
- streaming.review.human.assign
- streaming.review.rereview.restart
- streaming.review.restoration.followup
- streaming.moderation.report.intake
- streaming.moderation.comment.transition
- streaming.notify.event.fanout
- streaming.notify.delivery
- streaming.notify.retry
- streaming.notify.review.alert
- streaming.notify.escalation.alert

corporate:
- streaming.corporate.channel.refresh
- streaming.corporate.oversight.refresh
- streaming.corporate.affiliation.sync
- streaming.corporate.stream.visibility

ownership_rules:
- runtime_worker is default owner
- integration_service participates only where external dispatch / consume is needed
- end-user actors are not queue owners
- runtime must not steal canonical ownership

trigger_principles:
- event-driven first
- periodic reconciliation second
- repair sweep third

retry_principles:
- retry recoverable failures only
- retry must be explicit and bounded
- exhaustion must be deterministic
- dead-letter must be auditable
- no infinite retry
- no implicit retry
- no silent post-dead-letter resurrection

priority_classes:
- high
- medium
- low

note_on_core_priority:
- core queue urgency is fixed semantically
- exact high / medium / low label assignment for all core queues may still be refined

internal_only_runtime_boundary:
- queue push
- scheduler trigger
- delayed retry execution
- dead-letter handling
- internal review execution
- internal publish dispatch
- internal fanout and sync execution

closed_scope:
- queue family meaning
- job family meaning
- ownership principles
- retry meaning
- dead-letter meaning
- scan / reconciliation intent
- internal-only runtime boundary

open_refinement_only:
- exact worker product
- exact scheduler product
- exact broker binding
- exact metric / trace names
- exact dead-letter storage naming
