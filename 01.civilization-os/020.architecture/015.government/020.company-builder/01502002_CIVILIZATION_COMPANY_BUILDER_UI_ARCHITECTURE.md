# ============================================================
# CIVILIZATION COMPANY BUILDER UI ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official UI architecture for company builder
inside CivilizationOS.


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Company builder UI must not behave as a direct
active-company truth editor.

It must behave as a staged builder UI for:
- draft creation
- company type selection
- common setup
- type-specific setup
- validation
- approval
- publication
- activation


# ============================================================
# 2. UI LAYOUT PRINCIPLE
# ============================================================

Recommended layout:

left panel:
- draft list
- stage navigation
- section navigation
- validation anchors

center panel:
- company editor
- type-specific configuration UI
- upload UI
- contract/portfolio UI

right panel:
- validation result
- warnings
- contradiction report
- publish/approval readiness
- summary / diff / impact


# ============================================================
# 3. COMMON UI SECTIONS
# ============================================================

Minimum common UI sections:
- identity
- company type
- legal category
- location / nation / premises
- brand / icon
- publication
- validation
- approval
- activation


# ============================================================
# 4. TYPE-SPECIFIC UI PRINCIPLE
# ============================================================

The builder must support type-specific configuration surfaces.

Examples:
- development upload UI
- retail contract UI
- arts content import UI
- investment fund UI
- education program UI
- religious corporation doctrine/recruitment UI

These must not be forced into one generic form only.


# ============================================================
# 5. FINAL ARCHITECTURAL RULE
# ============================================================

Company builder UI in CivilizationOS must be:
- staged
- template-aware
- type-specific
- validation-aware
- activation-safe
