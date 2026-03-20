# ============================================================
# USER INTERFACE LAYER ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:

UI layer organizes access to all game domains.

major_surfaces:
- life_dashboard
- study_and_exam
- job_and_income
- relationship_and_family
- company_management
- nation_management
- law_editor
- official_gazette
- diplomacy_panel
- war_status
- event_log

principles:
- surfaces must reflect player role as human entity
- high-level decisions first
- no hidden critical actions
