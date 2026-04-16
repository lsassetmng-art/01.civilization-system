# ============================================================
# RELEASE SLICE CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: implementation-prep-only
schema_name: life

release_slices:

  release_1_core_preparation:
    scope:
      - case create/list/detail/update/archive
      - fact timeline basic
      - stakeholder basic
      - document metadata basic
      - consultation note basic
      - task basic
      - deadline basic
    excludes:
      - family sharing
      - export pack
      - cross-app reference
    reason:
      - single-user core value first

  release_2_family_and_export:
    scope:
      - viewer
      - delegated_editor
      - share setting
      - included_sections
      - exclude_sensitive_items
      - redaction_level
      - export pack record
    excludes:
      - cross-app reference
    reason:
      - safety-critical sharing added after core stabilizes

  release_3_reference_linking:
    scope:
      - inheritance summary reference
      - end of life summary reference
      - money summary reference
    reason:
      - cross-app complexity is deferred until app core is stable

release_rule:
  - do not pull release_3 complexity into release_1
  - do not introduce sharing before confidentiality handling is respected
