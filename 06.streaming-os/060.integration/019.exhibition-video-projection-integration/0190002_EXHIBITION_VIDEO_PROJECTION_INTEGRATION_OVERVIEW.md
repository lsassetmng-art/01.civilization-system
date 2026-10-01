# ============================================================
# EXHIBITION VIDEO PROJECTION INTEGRATION OVERVIEW
# ============================================================

status: canonical-draft
system: streaming-os
domain: exhibition-video-projection-integration
owner: Boss
prepared_by: Zero

purpose:
Defines the integration overview for projecting
StreamingOS video assets into CivilizationOS exhibitions.

summary:
This domain defines a read-only, rights-aware,
version-aware projection boundary for exhibition use.

StreamingOS remains the canonical source for:
- video asset identity
- canonical version
- publication state
- rights state
- playback eligibility
- duration and asset-kind pricing inputs

CivilizationOS Exhibition Builder may consume:
- canonical source references
- eligible projection fields
- immutable submission-time projection snapshots

CivilizationOS must not replace or mutate
StreamingOS canonical ownership,
publication,
rights,
entitlement,
or playback truth.

Runtime eligibility must be revalidated
before scheduling and before exhibition opening.
