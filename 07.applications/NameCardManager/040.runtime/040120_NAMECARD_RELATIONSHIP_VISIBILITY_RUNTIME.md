# ============================================================
# NAMECARD RELATIONSHIP VISIBILITY RUNTIME
# ============================================================

status: draft
layer: runtime
system: applications
application: NameCardManager
runtime: relationship_visibility
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior for surfacing visible relationships.

# ============================================================
# 1. RUNTIME GOAL
# ============================================================

When a name card has relevant relationships, the application
should surface them in a readable and controlled way.

# ============================================================
# 2. RUNTIME SOURCES
# ============================================================

Relationship visibility may derive from:
- explicit manual relationship registration
- same company grouping
- same department grouping
- order history relation
- project/deal relation
- introducer relation
- decision-maker / working-contact distinction

# ============================================================
# 3. REQUIRED BEHAVIOR
# ============================================================

The runtime should:
- load visible related entries for a selected card
- show readable labels for relationship type
- prioritize important relationships
- avoid unreadable clutter
- respect authorization and visibility constraints

# ============================================================
# 4. PRIORITY BEHAVIOR
# ============================================================

Higher display priority may be given to:
- same-company direct contacts
- decision makers
- current working contacts
- order-related contacts
- project-related contacts

# ============================================================
# 5. FAILURE BEHAVIOR
# ============================================================

If relationship evidence is incomplete:
- do not invent confirmed relationship
- allow limited or cautious visibility where policy allows
- preserve explicit/manual relationships over weak inference

