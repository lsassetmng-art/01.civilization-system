# ============================================================
# STREAMING OS CONSOLIDATED PACKAGE SPLIT FREEZE
# ============================================================

status: canonical-draft
system: streaming-os
domain: module-and-package-split-freeze
owner: Boss
prepared_by: Zero

# ============================================================
# 1. CONSOLIDATED RECOMMENDED MODULE SET
# ============================================================

recommended_module_set:
- streaming-core-principal
- streaming-core-session
- streaming-core-asset
- streaming-core-publish
- streaming-core-monetization
- streaming-core-reaction-ranking-ad
- streaming-review-pipeline
- streaming-moderation
- streaming-notification
- streaming-channel
- streaming-corporate-oversight
- streaming-creator-platform
- streaming-viewer-discovery
- streaming-viewer-continuity
- streaming-api-contracts

# ============================================================
# 2. PACKAGE HIERARCHY STYLE
# ============================================================

recommended_package_hierarchy:
- domain
  - command
  - query
  - projection
  - runtime
  - integration
  - validation

example:
- streaming.creator.command
- streaming.creator.query
- streaming.creator.projection
- streaming.notification.runtime
- streaming.moderation.validation

# ============================================================
# 3. FREEZE RULES
# ============================================================

freeze_rules:
- avoid giant shared service packages
- avoid putting creator, viewer, moderation, notification in one mixed platform package
- avoid mixing command and projection logic without explicit reason
- keep transport adapters outside core domain packages
- keep persistence adapter details outside canonical command/query packages

# ============================================================
# 4. CANONICAL FIXED STATEMENT
# ============================================================

StreamingOS implementation packaging
shall remain domain-first,
responsibility-explicit,
and resistant to mixed ambiguous package growth.

