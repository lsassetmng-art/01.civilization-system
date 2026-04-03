# ============================================================
# STREAMER AGENCY DUAL REVIEW LISTING MODEL
# ============================================================

status: canonical
layer: model
scope: streamer-agency-and-streaming-commerce-bridge
component: streamer-agency-dual-review-listing

owner: Boss
prepared_by: Zero


# REVIEW STATES

review_states:
- draft
- ai_review_pending
- ai_review_passed
- ai_review_rejected
- human_review_pending
- human_review_passed
- human_review_rejected
- listed
- suspended
- delisted
- archived


# PUBLIC LISTING RULE

public_listing_allowed_only_if:
- ai_review_passed
- human_review_passed


# FINAL RULE

Physical goods listing
must require AI and human approval.
