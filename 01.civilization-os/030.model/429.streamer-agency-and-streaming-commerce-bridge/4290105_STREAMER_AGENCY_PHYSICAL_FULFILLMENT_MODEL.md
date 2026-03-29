# ============================================================
# STREAMER AGENCY PHYSICAL FULFILLMENT MODEL
# ============================================================

status: canonical
layer: model
scope: streamer-agency-and-streaming-commerce-bridge
component: streamer-agency-physical-fulfillment

owner: Boss
prepared_by: Zero


# FULFILLMENT TARGETS

fulfillment_targets:
- civilization_marketplace_physical_goods
- streaming_live_event_limited_physical_goods_when_agency_linked


# NON_TARGETS

non_fulfillment_targets:
- live_ticket
- event_video_sale
- digital_cheer_item
- channel_revenue
- live_stream_revenue


# FINAL RULE

Only agency-related physical goods
may enter fulfillment flow.
