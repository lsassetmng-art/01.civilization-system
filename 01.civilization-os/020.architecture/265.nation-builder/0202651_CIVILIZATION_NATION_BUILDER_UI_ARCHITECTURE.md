# ============================================================
# CIVILIZATION NATION BUILDER UI ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official UI architecture for nation builder
inside CivilizationOS.

This UI architecture covers:
- staged nation draft editing
- visual territory/context navigation
- facility and infrastructure placement UI
- validation and contradiction display
- approval / publication / activation surfaces


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Nation builder UI must not behave as a direct
active-nation truth editor.

It must behave as a staged builder UI for:
- draft creation
- structured editing
- validation
- approval
- publication
- activation

Core principle:

the UI edits nation draft state,
not active nation truth directly


# ============================================================
# 2. UI LAYOUT PRINCIPLE
# ============================================================

The recommended nation builder layout is:

left panel:
- stage navigation
- builder sections
- validation summary anchors

center panel:
- main editing surface
- form editor
- placement editor
- visual map/grid editor

right panel:
- validation result
- warnings
- contradiction report
- impact summary
- publish/approval readiness summary


# ============================================================
# 3. PRIMARY BUILDER SECTIONS
# ============================================================

Minimum UI sections:
- basic identity
- territory
- population
- currency
- regime bundle
- facility placement
- infrastructure placement
- validation
- approval
- publication / activation


# ============================================================
# 4. VISUAL EDITOR PRINCIPLE
# ============================================================

Nation builder UI should support a visual editor
for placing facilities and infrastructure.

This editor should allow:
- palette selection
- map/grid placement
- move
- remove
- rotate where meaningful
- connect infrastructure
- open object detail panel
- open design selection panel


# ============================================================
# 5. VALIDATION UI PRINCIPLE
# ============================================================

Validation UI must distinguish:
- blocking error
- warning
- missing required element
- contradiction
- activation risk

The user must be able to jump
from validation issue to editing surface.


# ============================================================
# 6. REVISION UI PRINCIPLE
# ============================================================

For revising existing nations,
the UI should support:
- current vs draft comparison
- changed fields summary
- changed facility/infrastructure summary
- changed regime summary

Diff visibility is recommended.


# ============================================================
# 7. FINAL ARCHITECTURAL RULE
# ============================================================

Nation builder UI in CivilizationOS must be:
- staged
- draft-aware
- visually editable
- validation-aware
- activation-safe
