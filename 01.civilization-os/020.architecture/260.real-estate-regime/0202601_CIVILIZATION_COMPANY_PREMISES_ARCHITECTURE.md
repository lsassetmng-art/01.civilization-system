# ============================================================
# CIVILIZATION COMPANY PREMISES ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official architecture for Civilization company premises.

This architecture defines how Civilization-internal companies
connect to land, buildings, units, rights, occupancy, and legal address.

This architecture explicitly assumes:
- Civilization companies are internal to Civilization
- Civilization companies do not use ERP
- ERP is for real-world companies only


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

A Civilization company must be locatable in the world.

At minimum, a company may need:
- registered premises
- operating premises
- owned premises
- leased premises
- allocated premises
- granted premises

Core principle:

company existence and company premises are distinct
but linked through valid property rights or occupancy


# ============================================================
# 2. REGISTERED PREMISES
# ============================================================

Registered premises are the formal legal address
used for company registration and formal existence inside Civilization.

Registered premises must define:
- which property object is the legal base
- which right or occupancy allows that registration
- effective period
- status

A company may not be treated as fully established
without valid registered premises where policy requires.


# ============================================================
# 3. OPERATING PREMISES
# ============================================================

Operating premises are the actual places
where the company carries out activity.

Examples:
- office
- retail store
- factory site
- workshop
- game studio
- logistics site
- port-side facility

Operating premises may differ from registered premises.


# ============================================================
# 4. VALID PREMISES BASES
# ============================================================

A company may connect to premises through:

- ownership_right
- lease_right
- occupancy_right
- state_allocation_right
- imperial_grant_right
- other nation-allowed business use right

The actual legality must be nation-regime-governed.


# ============================================================
# 5. MULTI-PREMISES RULE
# ============================================================

A company may have:
- one registered premises
- multiple operating premises
- multiple property links across different regions or nations
if nation and company rules allow it.


# ============================================================
# 6. GAMEOS RELATION
# ============================================================

When a Civilization company sells games in GameOS,
seller existence may later depend on:
- valid company existence
- valid registered premises
- valid operating or publishing premises where policy requires
- valid nation/legal standing

GameOS seller eligibility must refer to Civilization company truth,
not BusinessOS and not ERP.


# ============================================================
# 7. ERP NON-RELATION RULE
# ============================================================

Civilization company premises are not ERP entities.

No ERP requirement exists for:
- company existence
- registered premises
- operating premises
- rent collection
- property ownership inside Civilization

ERP is outside this architecture.


# ============================================================
# 8. FINAL ARCHITECTURAL RULE
# ============================================================

Civilization company premises must be modeled explicitly.

Core summary:

- registered premises and operating premises are distinct
- valid company premises require valid property right or occupancy basis
- Civilization companies are internal to Civilization
- GameOS seller linkage refers to Civilization company truth
- ERP is not part of this company premises architecture
