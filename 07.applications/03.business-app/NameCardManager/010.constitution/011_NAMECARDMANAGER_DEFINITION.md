# ============================================================
# NAMECARDMANAGER DEFINITION
# ============================================================

status: canonical
layer: constitution
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines the formal application definition of NameCardManager.

# ============================================================
# 1. DEFINITION
# ============================================================

NameCardManager is a business card management application
operating in the BusinessOS business domain inside Civilization,
within a world whose core is PersonaOS.

It is not a simple business card storage application.
It manages business-card-linked business context including:
- person understanding
- responsibility scope
- business and order history
- relationship visibility

BusinessOS exists inside Civilization as a business domain,
but is not treated as a mere fully subordinate object.
It contains its own business activity, enterprise functions,
and enterprise products.

NameCardManager belongs to that BusinessOS business domain.

# ============================================================
# 2. POSITIONING
# ============================================================

- PersonaOS is the core.
- Civilization is the living environment of Persona.
- BusinessOS is the business domain inside Civilization.
- NameCardManager is a BusinessOS application.
- ERP-wide publication is handled through shared BusinessOS capability.

# ============================================================
# 3. SOURCE OF TRUTH
# ============================================================

- BusinessOS is the source of truth.
- Local storage is not canonical truth.
- Local storage exists as offline work area and cache.
- Long-term consistency is aligned to BusinessOS.

# ============================================================
# 4. SHARING MODEL
# ============================================================

There are only two sharing paths.

1. App-internal sharing
- explicit only
- limited to configured targets
- revocable

2. ERP-wide publication
- explicit only
- approval-governed
- executed through shared BusinessOS ERP publication capability
- not ordinary-user revocable after publication

# ============================================================
# 5. FUNCTIONAL SCOPE
# ============================================================

NameCardManager manages:
- basic name card information
- person notes
- responsibility scope notes
- business/order history
- relationship visibility
- app-internal share state
- ERP publication state
- audit/history/approval traces

