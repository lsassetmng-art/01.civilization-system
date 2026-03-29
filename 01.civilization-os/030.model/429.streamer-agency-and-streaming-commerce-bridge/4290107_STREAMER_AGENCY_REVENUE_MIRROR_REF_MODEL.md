# ============================================================
# STREAMER AGENCY REVENUE MIRROR REF MODEL
# ============================================================

status: canonical
layer: model
scope: streamer-agency-and-streaming-commerce-bridge
component: streamer-agency-revenue-mirror-ref

owner: Boss
prepared_by: Zero


# MIRROR FIELDS

mirror_fields:
- source_os
- source_revenue_type
- source_reference_id
- source_finalization_status
- mirrored_company_id
- mirrored_sales_amount
- mirrored_at


# SOURCE REVENUE TYPES

source_revenue_types:
- channel_revenue
- live_event_revenue
- event_ticket_revenue
- event_limited_sale_revenue
- event_video_sales_revenue


# FINAL RULE

Mirrored revenue
must remain reference-based and non-authoritative in Civilization.
