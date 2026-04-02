# ============================================================
# CIVILIZATION NATION BUILDER ZONING EDITOR ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official zoning editor architecture
inside CivilizationOS nation builder UI.

This architecture covers:
- zone creation/editing in nation draft
- visual zoning assignment by region/district
- allowed company type configuration
- allowed site/store type configuration
- restriction rule configuration
- zoning validation


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

The zoning editor must edit draft zoning state,
not active zoning truth directly.

Core principle:

zone configuration belongs to nation draft
until validated, published, and activated


# ============================================================
# 2. EDITOR SCOPE
# ============================================================

The zoning editor must support:
- creating a zone
- assigning zone type to region/district scope
- setting allowed company types
- setting allowed site/store types
- setting restriction rules
- activating or deactivating draft zone entries


# ============================================================
# 3. VISUAL EDITOR PRINCIPLE
# ============================================================

The zoning editor should support a visual region/district editor.

Recommended functions:
- click/select target region or district
- assign zone type
- paint or batch-assign zone type where useful
- inspect zone rule summary
- inspect conflicts and uncovered areas


# ============================================================
# 4. RULE PANEL PRINCIPLE
# ============================================================

For each selected zone,
the UI should provide a rule panel for:
- allowed company types
- allowed site/store types
- restriction rules
- zone status

This must remain editable in draft mode.


# ============================================================
# 5. VALIDATION PRINCIPLE
# ============================================================

The zoning editor must support validation for:
- incomplete zone definitions
- contradictory zone rules
- invalid zone assignments
- incompatible restriction combinations
- inactive or unresolved zones referenced by openings

Validation results should be navigable from the editor.


# ============================================================
# 6. FINAL ARCHITECTURAL RULE
# ============================================================

The zoning editor in CivilizationOS nation builder must be:
- draft-aware
- visual
- rule-aware
- validation-aware
- publish-safe
