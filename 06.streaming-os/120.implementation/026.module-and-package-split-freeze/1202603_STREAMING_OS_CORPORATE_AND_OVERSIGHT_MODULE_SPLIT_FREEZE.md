# ============================================================
# STREAMING OS CORPORATE AND OVERSIGHT MODULE SPLIT FREEZE
# ============================================================

status: canonical-draft
system: streaming-os
domain: module-and-package-split-freeze
owner: Boss
prepared_by: Zero

recommended_modules:
- streaming-channel
- streaming-corporate-oversight

responsibility_freeze:

streaming-channel:
- channel identity
- channel profile
- public channel-facing projections
- channel-level settings queries/commands

streaming-corporate-oversight:
- official company oversight
- affiliated streamer reference handling
- company-side dashboards
- ownership/affiliation distinction handling

package_rule:
- company oversight packages must not redefine historical stream ownership
- affiliation handling must remain separate from official ownership logic

