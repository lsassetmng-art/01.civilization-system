# ============================================================
# NAMECARDMANAGER COMMON COMPONENT DECISION NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Captures the common component adoption decision note
for NameCardManager.

# ============================================================
# 1. CURRENT DECISION
# ============================================================

Current decision:
- NameCardManager adopts existing BusinessOS and additive common components where already appropriate.
- PersonaOS common usage is selective and does not force non-applicable presentation/runtime common components.
- Some residuals stay app-specific intentionally.
- Some residuals are identified as future commonization targets.

# ============================================================
# 2. COMMONIZATION TARGETS
# ============================================================

The following are worth future commonization review:
- contact profile screen
- responsibility scope presentation
- card capture support as Attachment / Evidence extension

# ============================================================
# 3. NON-GOAL
# ============================================================

This note does not force implementation.
It fixes design-level adoption and commonization direction only.

