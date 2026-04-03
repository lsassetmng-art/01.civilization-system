# ============================================================
# FIELD MAP QUICK INFO DISPLAY MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-cost-display-ui
component: field-map-quick-info-display

owner: Boss
prepared_by: Zero


# ============================================================
# 1. QUICK INFO FIELDS
# ============================================================

quick_info_fields:
- facility_name
- facility_type
- open_state
- construction_state
- operator_name
- quick_cost_hint
- quick_time_hint
- restriction_or_review_badge
- service_entry_hint


# ============================================================
# 2. DISPLAY RULES
# ============================================================

display_rules:
- quick info should be concise and map-friendly
- quick info may omit maintenance unless selected in expanded mode
- quick info should distinguish open from construction states
- quick info may backlink to full detail or construction status


# ============================================================
# 3. FINAL RULE
# ============================================================

Quick info exists
to support map decisions quickly
without replacing detail surfaces.
