# ============================================================
# STREAMING OS CREATOR AND VIEWER MODULE SPLIT FREEZE
# ============================================================

status: canonical-draft
system: streaming-os
domain: module-and-package-split-freeze
owner: Boss
prepared_by: Zero

recommended_modules:
- streaming-creator-platform
- streaming-viewer-discovery
- streaming-viewer-continuity

responsibility_freeze:

streaming-creator-platform:
- creator self-page queries
- studio draft commands
- upload preparation commands
- publish preparation commands
- creator settings commands/queries
- creator analytics view projections

streaming-viewer-discovery:
- home/discovery queries
- search queries
- channel/creator watch-entry queries
- waiting-room/live/archive/clip entry projections

streaming-viewer-continuity:
- history commands/queries
- follow/subscription commands/queries
- playlist commands/queries
- watch queue commands/queries

package_rule:
- creator private state handling must remain outside public channel presentation package
- viewer continuity must remain outside recommendation engine internals

