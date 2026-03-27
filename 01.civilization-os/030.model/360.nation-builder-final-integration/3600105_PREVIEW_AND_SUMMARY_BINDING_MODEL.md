# ============================================================
# PREVIEW AND SUMMARY BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: nation-builder-final-integration
component: preview-and-summary-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PREVIEW BLOCKS
# ============================================================

preview_blocks:
- nation_identity_card
- governance_snapshot
- culture_snapshot
- economy_snapshot
- risk_snapshot
- signature_jobs_snapshot
- quick_reference_preview
- society_matrix_preview
- ui_tone_preview
- implementation_readiness_preview


# ============================================================
# 2. REQUIRED BINDINGS
# ============================================================

required_bindings:
- nation_identity_card -> nation_master
- governance_snapshot -> power_structure_builder + legislature_builder + executive_builder
- culture_snapshot -> integrated_master
- economy_snapshot -> nation_master
- risk_snapshot -> event_modifier_master
- signature_jobs_snapshot -> job_master
- quick_reference_preview -> country_quick_reference
- society_matrix_preview -> civilization_society_matrix
- implementation_readiness_preview -> implementation_bridge_master


# ============================================================
# 3. FINAL RULE
# ============================================================

Preview must summarize the nation
without becoming the source of truth.
