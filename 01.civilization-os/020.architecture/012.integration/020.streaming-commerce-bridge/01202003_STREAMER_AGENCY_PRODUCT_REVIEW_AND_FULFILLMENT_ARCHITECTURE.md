# ============================================================
# STREAMER AGENCY PRODUCT REVIEW AND FULFILLMENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: streamer-agency-and-streaming-commerce-bridge
component: streamer-agency-product-review-and-fulfillment

owner: Boss
prepared_by: Zero


# PURPOSE

Define the dual-review publication rule
and fulfillment architecture
for streamer-agency-related physical goods.


# PUBLICATION PRINCIPLE

Physical goods must not be listed publicly
without both:

- AI review
- human review

AI review is pre-screening.
Human review is final decision.


# AI REVIEW SCOPE

AI review may check:

- prohibited goods
- prohibited expression
- rights inconsistency
- listing completeness
- suspicious pricing
- duplicate or scam-like listing
- shipping infeasibility indicators


# HUMAN REVIEW SCOPE

Human review must decide:

- final publication approval
- rights legitimacy confirmation
- fulfillment readiness
- inventory readiness
- packaging and shipping readiness
- social and brand risk


# FULFILLMENT FLOW

draft
-> ai_review_pending
-> ai_review_passed
-> human_review_pending
-> human_review_passed
-> listed
-> ordered
-> inventory_allocated
-> packed
-> shipped
-> delivered
-> returned_or_refunded_where_needed


# FINAL RULE

Physical product publication
must require AI review and human review,
and fulfillment execution must be explicit.
