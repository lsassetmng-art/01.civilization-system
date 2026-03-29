# ============================================================
# CONSTRUCTION STATUS DISPLAY MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-cost-display-ui
component: construction-status-display

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED STATUS BLOCKS
# ============================================================

required_status_blocks:
- construction_state
- started_at
- expected_ready_at
- activation_pending_notice
- review_pending_notice
- replacement_in_progress_notice
- suspension_notice
- open_state
- backlink_to_target_lot


# ============================================================
# 2. DISPLAY RULES
# ============================================================

display_rules:
- under construction must show time remaining or expected ready point
- review pending must not imply usability
- activation pending must appear distinct from under construction
- suspended must show blocked-use state clearly


# ============================================================
# 3. FINAL RULE
# ============================================================

Construction status display must explain
whether the facility is building,
waiting,
or actually open.
