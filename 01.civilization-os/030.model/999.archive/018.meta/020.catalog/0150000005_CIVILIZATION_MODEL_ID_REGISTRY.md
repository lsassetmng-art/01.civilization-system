# ============================================================
# CIVILIZATION MODEL ID REGISTRY
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0005
scope: civilization.model.id-registry
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the official meaning and usage
of CivilizationOS model ids.


# ============================================================
# ID FORMAT
# ============================================================

SSDDDDMMMM

SS
system id

DDDD
domain id

MMMM
model id


# ============================================================
# SYSTEM ID
# ============================================================

01
Civilization System


# ============================================================
# DOMAIN ID RANGE
# ============================================================

0000
reserved root

0001-0120
official 120 domains


# ============================================================
# MODEL ID RANGE
# ============================================================

0000
domain root document or domain anchor

0001-0030
official domain models

0031-0099
reserved expansion space

0100-0999
future reserved

1000-9999
never use unless canonical rule changes


# ============================================================
# EXAMPLES
# ============================================================

0100010001
world.planet

0100030001
nation.country

0100310001
banking.bank

0100910001
public_health.public_health_system


# ============================================================
# STABILITY RULE
# ============================================================

ids are immutable

ids are never recycled

deprecated ids remain reserved

split models create new ids

merged models keep one survivor id
and reserve the others


# ============================================================
# DOMAIN ROOT RULE
# ============================================================

Each domain may use MMMM = 0000
for the domain anchor concept.

Example

0100310000
banking domain root

0100310001
bank

0100310002
bank_license

0100310003
bank_account


# ============================================================
# REGISTRY ROLE
# ============================================================

This registry exists to support:

- stable design references
- future event references
- future policy references
- future entity mapping
- future knowledge graph mapping


# ============================================================
# END
# ============================================================
