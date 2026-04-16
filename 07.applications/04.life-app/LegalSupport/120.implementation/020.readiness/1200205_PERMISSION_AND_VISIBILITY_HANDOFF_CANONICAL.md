# ============================================================
# PERMISSION AND VISIBILITY HANDOFF CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: implementation-prep-only
schema_name: life

role_matrix_summary:

  owner:
    expected_capabilities:
      - create
      - edit
      - archive
      - share
      - export
      - manage sensitive items

  viewer:
    expected_capabilities:
      - read allowed items only
    forbidden_capabilities:
      - edit
      - comment
      - share change
      - export control changes

  delegated_editor:
    expected_capabilities:
      - edit within allowed scope
      - update tasks/documents when allowed
    forbidden_capabilities:
      - share setting changes
      - permission regrant
      - forced access to highly_sensitive owner-only items

visibility_rules:
  - share_scope and confidentiality_level are separate dimensions
  - highly_sensitive can override role-based visibility
  - included_sections limits what shared users can see
  - exclude_sensitive_items limits shared/exported exposure
  - export output can be stricter than in-app visibility

implementation_watchpoints:
  - never assume viewer can comment
  - never assume shared case implies all documents visible
  - never assume export includes all sections
  - permissions object is computed, not source-of-truth storage
