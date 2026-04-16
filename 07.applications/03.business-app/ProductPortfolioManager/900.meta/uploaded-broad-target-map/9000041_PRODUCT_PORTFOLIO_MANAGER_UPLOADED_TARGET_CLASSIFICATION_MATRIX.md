# ============================================================
# PRODUCT PORTFOLIO MANAGER UPLOADED TARGET CLASSIFICATION MATRIX
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Classifies uploaded broad canonical files
by reflection suitability and insertion depth.

uploaded_target_matrix:

  - target_file: /mnt/data/003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md
    target_class: class_a_master_index
    recommended_insert_depth: medium
    reflection_priority: very_high
    why:
      Broad CivilizationOS canonical suitable for application discovery and summary reflection.

  - target_file: /mnt/data/000000_FOUNDATION_CANONICAL.md
    target_class: class_b_integrated_navigation
    recommended_insert_depth: short
    reflection_priority: high
    why:
      Foundation-level canonical should stay terse but can reference the app as a business-judgment application.

  - target_file: /mnt/data/9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md
    target_class: class_b_integrated_navigation
    recommended_insert_depth: short
    reflection_priority: high
    why:
      System-rules integrated file can reference ProductPortfolioManager as a governed application pattern.

  - target_file: /mnt/data/900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md
    target_class: class_d_portal_or_surface_index
    recommended_insert_depth: medium_to_long
    reflection_priority: very_high
    why:
      Portal/index reflection note is discovery-oriented and well-suited to richer summary text.

  - target_file: /mnt/data/014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md
    target_class: class_d_portal_or_surface_index
    recommended_insert_depth: short_to_medium
    reflection_priority: medium
    why:
      Best used as an application-consumer reflection note, not as an app summary canonical.

  - target_file: /mnt/data/ERP_DESIGN_BIBLE_FULL.md
    target_class: class_c_restart_handoff
    recommended_insert_depth: short
    reflection_priority: medium
    why:
      ERP-side file should receive only a consumer-boundary note.

  - target_file: /mnt/data/ERP_ENTERPRISE_SCOPE_v1.md
    target_class: class_c_restart_handoff
    recommended_insert_depth: short
    reflection_priority: medium
    why:
      Scope file may note ProductPortfolioManager as downstream ERP fact consumer.

  - target_file: /mnt/data/ERP_SYSTEM_FULL_DUMP.txt
    target_class: reference_dump_only
    recommended_insert_depth: none
    reflection_priority: low
    why:
      Dump-style file is not a natural human-facing navigation target.

  - target_file: /mnt/data/ERP_AUDIT_DUMP.txt
    target_class: reference_dump_only
    recommended_insert_depth: none
    reflection_priority: low
    why:
      Audit dump is not a primary navigation surface.

  - target_file: /mnt/data/ERP_GOVERNANCE_DUMP.txt
    target_class: reference_dump_only
    recommended_insert_depth: none
    reflection_priority: low
    why:
      Governance dump is not a primary app-reflection surface.

  - target_file: /mnt/data/ERP_FOUNDATION_DUMP.txt
    target_class: reference_dump_only
    recommended_insert_depth: none
    reflection_priority: low
    why:
      Dump-style foundation text should not receive navigation inserts.

  - target_file: /mnt/data/PERSONA_OS_INTEGRATED_CANONICAL.md
    target_class: cross_system_reference_only
    recommended_insert_depth: none_or_very_short
    reflection_priority: low
    why:
      ProductPortfolioManager is not primarily PersonaOS-facing.

  - target_file: /mnt/data/STREAMING_OS_INTEGRATED_CANONICAL.md
    target_class: cross_system_reference_only
    recommended_insert_depth: none_or_very_short
    reflection_priority: low
    why:
      ProductPortfolioManager is not primarily StreamingOS-facing.

formal_conclusion:
The strongest current reflection targets are:
- 003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md
- 900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md
- 000000_FOUNDATION_CANONICAL.md
- 9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md
