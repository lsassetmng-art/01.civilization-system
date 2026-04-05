# ============================================================
# NAMECARD RELATIONSHIP VISIBILITY POLICY
# ============================================================

status: draft
layer: policy
system: applications
application: NameCardManager
policy: relationship_visibility
owner: Boss
prepared_by: Zero

purpose:
Defines policy rules for showing visible relationships in
NameCardManager.

# ============================================================
# 1. CORE POLICY
# ============================================================

- Related information may be shown where relevant.
- Relationship visibility must remain understandable.
- Relationship visibility must respect authorization boundaries.
- Weak inference must not be shown as confirmed fact.

# ============================================================
# 2. ALLOWED RELATIONSHIP SOURCES
# ============================================================

Allowed sources include:
- manually registered relationship
- same-company relation
- same-department relation
- order history relation
- project/deal relation
- introducer relation
- working-contact / decision-maker distinction

# ============================================================
# 3. CONFIDENCE POLICY
# ============================================================

- manual relationship may be treated as explicit
- inferred relationship must remain distinguishable from confirmed
- uncertain relation must not be overrepresented as fact

# ============================================================
# 4. VISIBILITY POLICY
# ============================================================

- show related entries only within authorized visibility scope
- do not expose hidden protected notes through relationship UI
- do not leak restricted ERP-only meaning into unauthorized screens

# ============================================================
# 5. PRESENTATION POLICY
# ============================================================

- relationship UI must prefer readability over density
- high-value relations may be emphasized
- low-confidence relations may be shown with reduced emphasis or withheld

