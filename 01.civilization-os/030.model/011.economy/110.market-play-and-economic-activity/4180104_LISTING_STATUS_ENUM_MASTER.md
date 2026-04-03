# ============================================================
# LISTING STATUS ENUM MASTER
# ============================================================

status: canonical
layer: model
scope: company-builder-enum-master-phase1
component: listing-status-enum-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENUM VALUES
# ============================================================

listing_status_enum:
- unlisted
- otc_traded
- listed_domestic
- listed_international
- suspended_listing
- delisted
- ipo_preparation


# ============================================================
# 2. FINAL RULE
# ============================================================

Listing status
defines public market visibility
and securities-facing posture.
