# ============================================================
# STREAMING OS MODERATION AND NOTIFICATION MODULE SPLIT FREEZE
# ============================================================

status: canonical-draft
system: streaming-os
domain: module-and-package-split-freeze
owner: Boss
prepared_by: Zero

recommended_modules:
- streaming-review-pipeline
- streaming-moderation
- streaming-notification

responsibility_freeze:

streaming-review-pipeline:
- review queue handling
- ai review job handling
- human review task handling
- dimension result handling
- re-review/restoration review handling

streaming-moderation:
- report intake
- comment moderation
- appeal handling
- moderation restoration handling
- ban/restriction-facing projections

streaming-notification:
- platform event production
- notification record handling
- delivery state handling
- review alert handling
- escalation alert handling

package_rule:
- moderation state handling must remain separate from notification delivery
- review decision recording must remain separate from alert fanout

