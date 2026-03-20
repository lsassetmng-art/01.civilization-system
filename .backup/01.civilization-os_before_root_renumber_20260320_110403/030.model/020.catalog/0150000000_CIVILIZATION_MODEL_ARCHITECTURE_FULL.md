# ============================================================
# CIVILIZATION MODEL ARCHITECTURE FULL
# ============================================================


=============================================================
FILE: 0150000000_CIVILIZATION_MODEL_ARCHITECTURE_FULL.md
=============================================================

=============================================================
FILE: 0150000000_CIVILIZATION_MODEL_UNIVERSE_MAP.md
=============================================================
# ============================================================
# CIVILIZATION MODEL UNIVERSE MAP
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0000
scope: civilization.model.universe
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the official conceptual model universe
for CivilizationOS.

This file is the top map for all model design.

CivilizationOS does not model every real-world institution
as a separate model.

CivilizationOS models:

- stable conceptual structures
- reusable civilization abstractions
- cross-domain primitives
- domain-level model groups

CivilizationOS does not model:

- every tax type as an independent model
- every country-specific制度 as an independent model
- every organizational subtype as an independent model

Those belong to data, not model count.


# ============================================================
# TARGET SCALE
# ============================================================

official_domain_count:
120

official_models_per_domain:
30

official_total_models:
3600


# ============================================================
# CORE PRINCIPLE
# ============================================================

model = concept structure  
data = real-world content

Examples

taxation is a model domain.

income_tax
corporate_tax
consumption_tax
carbon_tax

are data patterns and rule variants,
not necessarily separate top-level models.

organization is a model.

company
school
hospital
ministry
ngo

are organization variants or specialized structures.


# ============================================================
# CIVILIZATION PRIMITIVES
# ============================================================

All civilization models derive from these primitives.

space
person
social_structure
resource
event
rule
state

These are not the full 3600 models.

They are the foundation from which
the 3600-model universe is organized.


# ============================================================
# UNIVERSE AXES
# ============================================================

CivilizationOS is organized by three axes.

1. spatial axis
world
region
nation
subnational
local

2. social-functional axis
government
economy
finance
organization
infrastructure
knowledge
health
security

3. dynamic axis
events
policy
state transition
simulation


# ============================================================
# DOMAIN GROUPS
# ============================================================

The 120 domains are grouped into 12 macro layers.

L1 person and social base  
L2 world and physical environment  
L3 spatial governance and territory  
L4 public governance and law  
L5 economy and production  
L6 finance and capital  
L7 exchange and market structure  
L8 organization and work  
L9 infrastructure and utilities  
L10 knowledge and culture  
L11 health and life  
L12 security and global stability


# ============================================================
# MODEL COUNT RULE
# ============================================================

Each domain targets 30 models.

The 30-model rule exists to prevent:

- concept explosion
- institution duplication
- country-specific fragmentation
- uncontrolled model inflation

If a domain appears to need 200 models,
that domain is probably mixing:

- conceptual model
- data schema
- policy variant
- country variant
- event instance

These must be separated.


# ============================================================
# MODEL VS DATA RULE
# ============================================================

Examples

organization
is a model.

Apple
Toyota
WHO
Tokyo University
Shibuya General Hospital

are data instances.

tax_rule
is a model.

Japan consumption tax 10%
US federal corporate tax
EU carbon border rule

are data/rule instances.

market
is a model.

NYSE
NASDAQ
JPX
LME

are data instances.


# ============================================================
# OUTPUT OF THIS LAYER
# ============================================================

This layer must eventually define:

- 120 official domains
- 3600 official models
- model ids
- model relations
- naming rules
- extension rules
- dependency rules


# ============================================================
# END
# ============================================================

=============================================================
FILE: 0150000005_CIVILIZATION_MODEL_ID_REGISTRY.md
=============================================================
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

=============================================================
FILE: 0150000005_CIVILIZATION_MODEL_ID_REGISTRY_FULL.md
=============================================================
# ============================================================
# CIVILIZATION MODEL REGISTRY
# ============================================================

status: canonical
system: civilization
total_domains: 120
models_per_domain: 30
total_models: 3600

format:

SSDDDDMMMM

01 civilization
DDDD domain
MMMM model


MODEL CATALOG


# DOMAIN 0001 world
0100010001 world_model_0001
0100010002 world_model_0002
0100010003 world_model_0003
0100010004 world_model_0004
0100010005 world_model_0005
0100010006 world_model_0006
0100010007 world_model_0007
0100010008 world_model_0008
0100010009 world_model_0009
0100010010 world_model_0010
0100010011 world_model_0011
0100010012 world_model_0012
0100010013 world_model_0013
0100010014 world_model_0014
0100010015 world_model_0015
0100010016 world_model_0016
0100010017 world_model_0017
0100010018 world_model_0018
0100010019 world_model_0019
0100010020 world_model_0020
0100010021 world_model_0021
0100010022 world_model_0022
0100010023 world_model_0023
0100010024 world_model_0024
0100010025 world_model_0025
0100010026 world_model_0026
0100010027 world_model_0027
0100010028 world_model_0028
0100010029 world_model_0029
0100010030 world_model_0030

# DOMAIN 0002 region
0100020001 region_model_0001
0100020002 region_model_0002
0100020003 region_model_0003
0100020004 region_model_0004
0100020005 region_model_0005
0100020006 region_model_0006
0100020007 region_model_0007
0100020008 region_model_0008
0100020009 region_model_0009
0100020010 region_model_0010
0100020011 region_model_0011
0100020012 region_model_0012
0100020013 region_model_0013
0100020014 region_model_0014
0100020015 region_model_0015
0100020016 region_model_0016
0100020017 region_model_0017
0100020018 region_model_0018
0100020019 region_model_0019
0100020020 region_model_0020
0100020021 region_model_0021
0100020022 region_model_0022
0100020023 region_model_0023
0100020024 region_model_0024
0100020025 region_model_0025
0100020026 region_model_0026
0100020027 region_model_0027
0100020028 region_model_0028
0100020029 region_model_0029
0100020030 region_model_0030

# DOMAIN 0003 nation
0100030001 nation_model_0001
0100030002 nation_model_0002
0100030003 nation_model_0003
0100030004 nation_model_0004
0100030005 nation_model_0005
0100030006 nation_model_0006
0100030007 nation_model_0007
0100030008 nation_model_0008
0100030009 nation_model_0009
0100030010 nation_model_0010
0100030011 nation_model_0011
0100030012 nation_model_0012
0100030013 nation_model_0013
0100030014 nation_model_0014
0100030015 nation_model_0015
0100030016 nation_model_0016
0100030017 nation_model_0017
0100030018 nation_model_0018
0100030019 nation_model_0019
0100030020 nation_model_0020
0100030021 nation_model_0021
0100030022 nation_model_0022
0100030023 nation_model_0023
0100030024 nation_model_0024
0100030025 nation_model_0025
0100030026 nation_model_0026
0100030027 nation_model_0027
0100030028 nation_model_0028
0100030029 nation_model_0029
0100030030 nation_model_0030

# DOMAIN 0004 subnational_government
0100040001 subnational_government_model_0001
0100040002 subnational_government_model_0002
0100040003 subnational_government_model_0003
0100040004 subnational_government_model_0004
0100040005 subnational_government_model_0005
0100040006 subnational_government_model_0006
0100040007 subnational_government_model_0007
0100040008 subnational_government_model_0008
0100040009 subnational_government_model_0009
0100040010 subnational_government_model_0010
0100040011 subnational_government_model_0011
0100040012 subnational_government_model_0012
0100040013 subnational_government_model_0013
0100040014 subnational_government_model_0014
0100040015 subnational_government_model_0015
0100040016 subnational_government_model_0016
0100040017 subnational_government_model_0017
0100040018 subnational_government_model_0018
0100040019 subnational_government_model_0019
0100040020 subnational_government_model_0020
0100040021 subnational_government_model_0021
0100040022 subnational_government_model_0022
0100040023 subnational_government_model_0023
0100040024 subnational_government_model_0024
0100040025 subnational_government_model_0025
0100040026 subnational_government_model_0026
0100040027 subnational_government_model_0027
0100040028 subnational_government_model_0028
0100040029 subnational_government_model_0029
0100040030 subnational_government_model_0030

# DOMAIN 0005 government
0100050001 government_model_0001
0100050002 government_model_0002
0100050003 government_model_0003
0100050004 government_model_0004
0100050005 government_model_0005
0100050006 government_model_0006
0100050007 government_model_0007
0100050008 government_model_0008
0100050009 government_model_0009
0100050010 government_model_0010
0100050011 government_model_0011
0100050012 government_model_0012
0100050013 government_model_0013
0100050014 government_model_0014
0100050015 government_model_0015
0100050016 government_model_0016
0100050017 government_model_0017
0100050018 government_model_0018
0100050019 government_model_0019
0100050020 government_model_0020
0100050021 government_model_0021
0100050022 government_model_0022
0100050023 government_model_0023
0100050024 government_model_0024
0100050025 government_model_0025
0100050026 government_model_0026
0100050027 government_model_0027
0100050028 government_model_0028
0100050029 government_model_0029
0100050030 government_model_0030

# DOMAIN 0006 legislative
0100060001 legislative_model_0001
0100060002 legislative_model_0002
0100060003 legislative_model_0003
0100060004 legislative_model_0004
0100060005 legislative_model_0005
0100060006 legislative_model_0006
0100060007 legislative_model_0007
0100060008 legislative_model_0008
0100060009 legislative_model_0009
0100060010 legislative_model_0010
0100060011 legislative_model_0011
0100060012 legislative_model_0012
0100060013 legislative_model_0013
0100060014 legislative_model_0014
0100060015 legislative_model_0015
0100060016 legislative_model_0016
0100060017 legislative_model_0017
0100060018 legislative_model_0018
0100060019 legislative_model_0019
0100060020 legislative_model_0020
0100060021 legislative_model_0021
0100060022 legislative_model_0022
0100060023 legislative_model_0023
0100060024 legislative_model_0024
0100060025 legislative_model_0025
0100060026 legislative_model_0026
0100060027 legislative_model_0027
0100060028 legislative_model_0028
0100060029 legislative_model_0029
0100060030 legislative_model_0030

# DOMAIN 0007 judicial
0100070001 judicial_model_0001
0100070002 judicial_model_0002
0100070003 judicial_model_0003
0100070004 judicial_model_0004
0100070005 judicial_model_0005
0100070006 judicial_model_0006
0100070007 judicial_model_0007
0100070008 judicial_model_0008
0100070009 judicial_model_0009
0100070010 judicial_model_0010
0100070011 judicial_model_0011
0100070012 judicial_model_0012
0100070013 judicial_model_0013
0100070014 judicial_model_0014
0100070015 judicial_model_0015
0100070016 judicial_model_0016
0100070017 judicial_model_0017
0100070018 judicial_model_0018
0100070019 judicial_model_0019
0100070020 judicial_model_0020
0100070021 judicial_model_0021
0100070022 judicial_model_0022
0100070023 judicial_model_0023
0100070024 judicial_model_0024
0100070025 judicial_model_0025
0100070026 judicial_model_0026
0100070027 judicial_model_0027
0100070028 judicial_model_0028
0100070029 judicial_model_0029
0100070030 judicial_model_0030

# DOMAIN 0008 election
0100080001 election_model_0001
0100080002 election_model_0002
0100080003 election_model_0003
0100080004 election_model_0004
0100080005 election_model_0005
0100080006 election_model_0006
0100080007 election_model_0007
0100080008 election_model_0008
0100080009 election_model_0009
0100080010 election_model_0010
0100080011 election_model_0011
0100080012 election_model_0012
0100080013 election_model_0013
0100080014 election_model_0014
0100080015 election_model_0015
0100080016 election_model_0016
0100080017 election_model_0017
0100080018 election_model_0018
0100080019 election_model_0019
0100080020 election_model_0020
0100080021 election_model_0021
0100080022 election_model_0022
0100080023 election_model_0023
0100080024 election_model_0024
0100080025 election_model_0025
0100080026 election_model_0026
0100080027 election_model_0027
0100080028 election_model_0028
0100080029 election_model_0029
0100080030 election_model_0030

# DOMAIN 0009 public_administration
0100090001 public_administration_model_0001
0100090002 public_administration_model_0002
0100090003 public_administration_model_0003
0100090004 public_administration_model_0004
0100090005 public_administration_model_0005
0100090006 public_administration_model_0006
0100090007 public_administration_model_0007
0100090008 public_administration_model_0008
0100090009 public_administration_model_0009
0100090010 public_administration_model_0010
0100090011 public_administration_model_0011
0100090012 public_administration_model_0012
0100090013 public_administration_model_0013
0100090014 public_administration_model_0014
0100090015 public_administration_model_0015
0100090016 public_administration_model_0016
0100090017 public_administration_model_0017
0100090018 public_administration_model_0018
0100090019 public_administration_model_0019
0100090020 public_administration_model_0020
0100090021 public_administration_model_0021
0100090022 public_administration_model_0022
0100090023 public_administration_model_0023
0100090024 public_administration_model_0024
0100090025 public_administration_model_0025
0100090026 public_administration_model_0026
0100090027 public_administration_model_0027
0100090028 public_administration_model_0028
0100090029 public_administration_model_0029
0100090030 public_administration_model_0030

# DOMAIN 0010 law
0100100001 law_model_0001
0100100002 law_model_0002
0100100003 law_model_0003
0100100004 law_model_0004
0100100005 law_model_0005
0100100006 law_model_0006
0100100007 law_model_0007
0100100008 law_model_0008
0100100009 law_model_0009
0100100010 law_model_0010
0100100011 law_model_0011
0100100012 law_model_0012
0100100013 law_model_0013
0100100014 law_model_0014
0100100015 law_model_0015
0100100016 law_model_0016
0100100017 law_model_0017
0100100018 law_model_0018
0100100019 law_model_0019
0100100020 law_model_0020
0100100021 law_model_0021
0100100022 law_model_0022
0100100023 law_model_0023
0100100024 law_model_0024
0100100025 law_model_0025
0100100026 law_model_0026
0100100027 law_model_0027
0100100028 law_model_0028
0100100029 law_model_0029
0100100030 law_model_0030

# DOMAIN 0011 property_rights
0100110001 property_rights_model_0001
0100110002 property_rights_model_0002
0100110003 property_rights_model_0003
0100110004 property_rights_model_0004
0100110005 property_rights_model_0005
0100110006 property_rights_model_0006
0100110007 property_rights_model_0007
0100110008 property_rights_model_0008
0100110009 property_rights_model_0009
0100110010 property_rights_model_0010
0100110011 property_rights_model_0011
0100110012 property_rights_model_0012
0100110013 property_rights_model_0013
0100110014 property_rights_model_0014
0100110015 property_rights_model_0015
0100110016 property_rights_model_0016
0100110017 property_rights_model_0017
0100110018 property_rights_model_0018
0100110019 property_rights_model_0019
0100110020 property_rights_model_0020
0100110021 property_rights_model_0021
0100110022 property_rights_model_0022
0100110023 property_rights_model_0023
0100110024 property_rights_model_0024
0100110025 property_rights_model_0025
0100110026 property_rights_model_0026
0100110027 property_rights_model_0027
0100110028 property_rights_model_0028
0100110029 property_rights_model_0029
0100110030 property_rights_model_0030

# DOMAIN 0012 governance
0100120001 governance_model_0001
0100120002 governance_model_0002
0100120003 governance_model_0003
0100120004 governance_model_0004
0100120005 governance_model_0005
0100120006 governance_model_0006
0100120007 governance_model_0007
0100120008 governance_model_0008
0100120009 governance_model_0009
0100120010 governance_model_0010
0100120011 governance_model_0011
0100120012 governance_model_0012
0100120013 governance_model_0013
0100120014 governance_model_0014
0100120015 governance_model_0015
0100120016 governance_model_0016
0100120017 governance_model_0017
0100120018 governance_model_0018
0100120019 governance_model_0019
0100120020 governance_model_0020
0100120021 governance_model_0021
0100120022 governance_model_0022
0100120023 governance_model_0023
0100120024 governance_model_0024
0100120025 governance_model_0025
0100120026 governance_model_0026
0100120027 governance_model_0027
0100120028 governance_model_0028
0100120029 governance_model_0029
0100120030 governance_model_0030

# DOMAIN 0013 public_policy
0100130001 public_policy_model_0001
0100130002 public_policy_model_0002
0100130003 public_policy_model_0003
0100130004 public_policy_model_0004
0100130005 public_policy_model_0005
0100130006 public_policy_model_0006
0100130007 public_policy_model_0007
0100130008 public_policy_model_0008
0100130009 public_policy_model_0009
0100130010 public_policy_model_0010
0100130011 public_policy_model_0011
0100130012 public_policy_model_0012
0100130013 public_policy_model_0013
0100130014 public_policy_model_0014
0100130015 public_policy_model_0015
0100130016 public_policy_model_0016
0100130017 public_policy_model_0017
0100130018 public_policy_model_0018
0100130019 public_policy_model_0019
0100130020 public_policy_model_0020
0100130021 public_policy_model_0021
0100130022 public_policy_model_0022
0100130023 public_policy_model_0023
0100130024 public_policy_model_0024
0100130025 public_policy_model_0025
0100130026 public_policy_model_0026
0100130027 public_policy_model_0027
0100130028 public_policy_model_0028
0100130029 public_policy_model_0029
0100130030 public_policy_model_0030

# DOMAIN 0014 public_procurement
0100140001 public_procurement_model_0001
0100140002 public_procurement_model_0002
0100140003 public_procurement_model_0003
0100140004 public_procurement_model_0004
0100140005 public_procurement_model_0005
0100140006 public_procurement_model_0006
0100140007 public_procurement_model_0007
0100140008 public_procurement_model_0008
0100140009 public_procurement_model_0009
0100140010 public_procurement_model_0010
0100140011 public_procurement_model_0011
0100140012 public_procurement_model_0012
0100140013 public_procurement_model_0013
0100140014 public_procurement_model_0014
0100140015 public_procurement_model_0015
0100140016 public_procurement_model_0016
0100140017 public_procurement_model_0017
0100140018 public_procurement_model_0018
0100140019 public_procurement_model_0019
0100140020 public_procurement_model_0020
0100140021 public_procurement_model_0021
0100140022 public_procurement_model_0022
0100140023 public_procurement_model_0023
0100140024 public_procurement_model_0024
0100140025 public_procurement_model_0025
0100140026 public_procurement_model_0026
0100140027 public_procurement_model_0027
0100140028 public_procurement_model_0028
0100140029 public_procurement_model_0029
0100140030 public_procurement_model_0030

# DOMAIN 0015 security
0100150001 security_model_0001
0100150002 security_model_0002
0100150003 security_model_0003
0100150004 security_model_0004
0100150005 security_model_0005
0100150006 security_model_0006
0100150007 security_model_0007
0100150008 security_model_0008
0100150009 security_model_0009
0100150010 security_model_0010
0100150011 security_model_0011
0100150012 security_model_0012
0100150013 security_model_0013
0100150014 security_model_0014
0100150015 security_model_0015
0100150016 security_model_0016
0100150017 security_model_0017
0100150018 security_model_0018
0100150019 security_model_0019
0100150020 security_model_0020
0100150021 security_model_0021
0100150022 security_model_0022
0100150023 security_model_0023
0100150024 security_model_0024
0100150025 security_model_0025
0100150026 security_model_0026
0100150027 security_model_0027
0100150028 security_model_0028
0100150029 security_model_0029
0100150030 security_model_0030

# DOMAIN 0016 military
0100160001 military_model_0001
0100160002 military_model_0002
0100160003 military_model_0003
0100160004 military_model_0004
0100160005 military_model_0005
0100160006 military_model_0006
0100160007 military_model_0007
0100160008 military_model_0008
0100160009 military_model_0009
0100160010 military_model_0010
0100160011 military_model_0011
0100160012 military_model_0012
0100160013 military_model_0013
0100160014 military_model_0014
0100160015 military_model_0015
0100160016 military_model_0016
0100160017 military_model_0017
0100160018 military_model_0018
0100160019 military_model_0019
0100160020 military_model_0020
0100160021 military_model_0021
0100160022 military_model_0022
0100160023 military_model_0023
0100160024 military_model_0024
0100160025 military_model_0025
0100160026 military_model_0026
0100160027 military_model_0027
0100160028 military_model_0028
0100160029 military_model_0029
0100160030 military_model_0030

# DOMAIN 0017 intelligence
0100170001 intelligence_model_0001
0100170002 intelligence_model_0002
0100170003 intelligence_model_0003
0100170004 intelligence_model_0004
0100170005 intelligence_model_0005
0100170006 intelligence_model_0006
0100170007 intelligence_model_0007
0100170008 intelligence_model_0008
0100170009 intelligence_model_0009
0100170010 intelligence_model_0010
0100170011 intelligence_model_0011
0100170012 intelligence_model_0012
0100170013 intelligence_model_0013
0100170014 intelligence_model_0014
0100170015 intelligence_model_0015
0100170016 intelligence_model_0016
0100170017 intelligence_model_0017
0100170018 intelligence_model_0018
0100170019 intelligence_model_0019
0100170020 intelligence_model_0020
0100170021 intelligence_model_0021
0100170022 intelligence_model_0022
0100170023 intelligence_model_0023
0100170024 intelligence_model_0024
0100170025 intelligence_model_0025
0100170026 intelligence_model_0026
0100170027 intelligence_model_0027
0100170028 intelligence_model_0028
0100170029 intelligence_model_0029
0100170030 intelligence_model_0030

# DOMAIN 0018 border
0100180001 border_model_0001
0100180002 border_model_0002
0100180003 border_model_0003
0100180004 border_model_0004
0100180005 border_model_0005
0100180006 border_model_0006
0100180007 border_model_0007
0100180008 border_model_0008
0100180009 border_model_0009
0100180010 border_model_0010
0100180011 border_model_0011
0100180012 border_model_0012
0100180013 border_model_0013
0100180014 border_model_0014
0100180015 border_model_0015
0100180016 border_model_0016
0100180017 border_model_0017
0100180018 border_model_0018
0100180019 border_model_0019
0100180020 border_model_0020
0100180021 border_model_0021
0100180022 border_model_0022
0100180023 border_model_0023
0100180024 border_model_0024
0100180025 border_model_0025
0100180026 border_model_0026
0100180027 border_model_0027
0100180028 border_model_0028
0100180029 border_model_0029
0100180030 border_model_0030

# DOMAIN 0019 diplomacy
0100190001 diplomacy_model_0001
0100190002 diplomacy_model_0002
0100190003 diplomacy_model_0003
0100190004 diplomacy_model_0004
0100190005 diplomacy_model_0005
0100190006 diplomacy_model_0006
0100190007 diplomacy_model_0007
0100190008 diplomacy_model_0008
0100190009 diplomacy_model_0009
0100190010 diplomacy_model_0010
0100190011 diplomacy_model_0011
0100190012 diplomacy_model_0012
0100190013 diplomacy_model_0013
0100190014 diplomacy_model_0014
0100190015 diplomacy_model_0015
0100190016 diplomacy_model_0016
0100190017 diplomacy_model_0017
0100190018 diplomacy_model_0018
0100190019 diplomacy_model_0019
0100190020 diplomacy_model_0020
0100190021 diplomacy_model_0021
0100190022 diplomacy_model_0022
0100190023 diplomacy_model_0023
0100190024 diplomacy_model_0024
0100190025 diplomacy_model_0025
0100190026 diplomacy_model_0026
0100190027 diplomacy_model_0027
0100190028 diplomacy_model_0028
0100190029 diplomacy_model_0029
0100190030 diplomacy_model_0030

# DOMAIN 0020 international_organization
0100200001 international_organization_model_0001
0100200002 international_organization_model_0002
0100200003 international_organization_model_0003
0100200004 international_organization_model_0004
0100200005 international_organization_model_0005
0100200006 international_organization_model_0006
0100200007 international_organization_model_0007
0100200008 international_organization_model_0008
0100200009 international_organization_model_0009
0100200010 international_organization_model_0010
0100200011 international_organization_model_0011
0100200012 international_organization_model_0012
0100200013 international_organization_model_0013
0100200014 international_organization_model_0014
0100200015 international_organization_model_0015
0100200016 international_organization_model_0016
0100200017 international_organization_model_0017
0100200018 international_organization_model_0018
0100200019 international_organization_model_0019
0100200020 international_organization_model_0020
0100200021 international_organization_model_0021
0100200022 international_organization_model_0022
0100200023 international_organization_model_0023
0100200024 international_organization_model_0024
0100200025 international_organization_model_0025
0100200026 international_organization_model_0026
0100200027 international_organization_model_0027
0100200028 international_organization_model_0028
0100200029 international_organization_model_0029
0100200030 international_organization_model_0030

# DOMAIN 0021 regional_integration
0100210001 regional_integration_model_0001
0100210002 regional_integration_model_0002
0100210003 regional_integration_model_0003
0100210004 regional_integration_model_0004
0100210005 regional_integration_model_0005
0100210006 regional_integration_model_0006
0100210007 regional_integration_model_0007
0100210008 regional_integration_model_0008
0100210009 regional_integration_model_0009
0100210010 regional_integration_model_0010
0100210011 regional_integration_model_0011
0100210012 regional_integration_model_0012
0100210013 regional_integration_model_0013
0100210014 regional_integration_model_0014
0100210015 regional_integration_model_0015
0100210016 regional_integration_model_0016
0100210017 regional_integration_model_0017
0100210018 regional_integration_model_0018
0100210019 regional_integration_model_0019
0100210020 regional_integration_model_0020
0100210021 regional_integration_model_0021
0100210022 regional_integration_model_0022
0100210023 regional_integration_model_0023
0100210024 regional_integration_model_0024
0100210025 regional_integration_model_0025
0100210026 regional_integration_model_0026
0100210027 regional_integration_model_0027
0100210028 regional_integration_model_0028
0100210029 regional_integration_model_0029
0100210030 regional_integration_model_0030

# DOMAIN 0022 population
0100220001 population_model_0001
0100220002 population_model_0002
0100220003 population_model_0003
0100220004 population_model_0004
0100220005 population_model_0005
0100220006 population_model_0006
0100220007 population_model_0007
0100220008 population_model_0008
0100220009 population_model_0009
0100220010 population_model_0010
0100220011 population_model_0011
0100220012 population_model_0012
0100220013 population_model_0013
0100220014 population_model_0014
0100220015 population_model_0015
0100220016 population_model_0016
0100220017 population_model_0017
0100220018 population_model_0018
0100220019 population_model_0019
0100220020 population_model_0020
0100220021 population_model_0021
0100220022 population_model_0022
0100220023 population_model_0023
0100220024 population_model_0024
0100220025 population_model_0025
0100220026 population_model_0026
0100220027 population_model_0027
0100220028 population_model_0028
0100220029 population_model_0029
0100220030 population_model_0030

# DOMAIN 0023 demography
0100230001 demography_model_0001
0100230002 demography_model_0002
0100230003 demography_model_0003
0100230004 demography_model_0004
0100230005 demography_model_0005
0100230006 demography_model_0006
0100230007 demography_model_0007
0100230008 demography_model_0008
0100230009 demography_model_0009
0100230010 demography_model_0010
0100230011 demography_model_0011
0100230012 demography_model_0012
0100230013 demography_model_0013
0100230014 demography_model_0014
0100230015 demography_model_0015
0100230016 demography_model_0016
0100230017 demography_model_0017
0100230018 demography_model_0018
0100230019 demography_model_0019
0100230020 demography_model_0020
0100230021 demography_model_0021
0100230022 demography_model_0022
0100230023 demography_model_0023
0100230024 demography_model_0024
0100230025 demography_model_0025
0100230026 demography_model_0026
0100230027 demography_model_0027
0100230028 demography_model_0028
0100230029 demography_model_0029
0100230030 demography_model_0030

# DOMAIN 0024 migration
0100240001 migration_model_0001
0100240002 migration_model_0002
0100240003 migration_model_0003
0100240004 migration_model_0004
0100240005 migration_model_0005
0100240006 migration_model_0006
0100240007 migration_model_0007
0100240008 migration_model_0008
0100240009 migration_model_0009
0100240010 migration_model_0010
0100240011 migration_model_0011
0100240012 migration_model_0012
0100240013 migration_model_0013
0100240014 migration_model_0014
0100240015 migration_model_0015
0100240016 migration_model_0016
0100240017 migration_model_0017
0100240018 migration_model_0018
0100240019 migration_model_0019
0100240020 migration_model_0020
0100240021 migration_model_0021
0100240022 migration_model_0022
0100240023 migration_model_0023
0100240024 migration_model_0024
0100240025 migration_model_0025
0100240026 migration_model_0026
0100240027 migration_model_0027
0100240028 migration_model_0028
0100240029 migration_model_0029
0100240030 migration_model_0030

# DOMAIN 0025 household
0100250001 household_model_0001
0100250002 household_model_0002
0100250003 household_model_0003
0100250004 household_model_0004
0100250005 household_model_0005
0100250006 household_model_0006
0100250007 household_model_0007
0100250008 household_model_0008
0100250009 household_model_0009
0100250010 household_model_0010
0100250011 household_model_0011
0100250012 household_model_0012
0100250013 household_model_0013
0100250014 household_model_0014
0100250015 household_model_0015
0100250016 household_model_0016
0100250017 household_model_0017
0100250018 household_model_0018
0100250019 household_model_0019
0100250020 household_model_0020
0100250021 household_model_0021
0100250022 household_model_0022
0100250023 household_model_0023
0100250024 household_model_0024
0100250025 household_model_0025
0100250026 household_model_0026
0100250027 household_model_0027
0100250028 household_model_0028
0100250029 household_model_0029
0100250030 household_model_0030

# DOMAIN 0026 labor
0100260001 labor_model_0001
0100260002 labor_model_0002
0100260003 labor_model_0003
0100260004 labor_model_0004
0100260005 labor_model_0005
0100260006 labor_model_0006
0100260007 labor_model_0007
0100260008 labor_model_0008
0100260009 labor_model_0009
0100260010 labor_model_0010
0100260011 labor_model_0011
0100260012 labor_model_0012
0100260013 labor_model_0013
0100260014 labor_model_0014
0100260015 labor_model_0015
0100260016 labor_model_0016
0100260017 labor_model_0017
0100260018 labor_model_0018
0100260019 labor_model_0019
0100260020 labor_model_0020
0100260021 labor_model_0021
0100260022 labor_model_0022
0100260023 labor_model_0023
0100260024 labor_model_0024
0100260025 labor_model_0025
0100260026 labor_model_0026
0100260027 labor_model_0027
0100260028 labor_model_0028
0100260029 labor_model_0029
0100260030 labor_model_0030

# DOMAIN 0027 macroeconomy
0100270001 macroeconomy_model_0001
0100270002 macroeconomy_model_0002
0100270003 macroeconomy_model_0003
0100270004 macroeconomy_model_0004
0100270005 macroeconomy_model_0005
0100270006 macroeconomy_model_0006
0100270007 macroeconomy_model_0007
0100270008 macroeconomy_model_0008
0100270009 macroeconomy_model_0009
0100270010 macroeconomy_model_0010
0100270011 macroeconomy_model_0011
0100270012 macroeconomy_model_0012
0100270013 macroeconomy_model_0013
0100270014 macroeconomy_model_0014
0100270015 macroeconomy_model_0015
0100270016 macroeconomy_model_0016
0100270017 macroeconomy_model_0017
0100270018 macroeconomy_model_0018
0100270019 macroeconomy_model_0019
0100270020 macroeconomy_model_0020
0100270021 macroeconomy_model_0021
0100270022 macroeconomy_model_0022
0100270023 macroeconomy_model_0023
0100270024 macroeconomy_model_0024
0100270025 macroeconomy_model_0025
0100270026 macroeconomy_model_0026
0100270027 macroeconomy_model_0027
0100270028 macroeconomy_model_0028
0100270029 macroeconomy_model_0029
0100270030 macroeconomy_model_0030

# DOMAIN 0028 consumer_market
0100280001 consumer_market_model_0001
0100280002 consumer_market_model_0002
0100280003 consumer_market_model_0003
0100280004 consumer_market_model_0004
0100280005 consumer_market_model_0005
0100280006 consumer_market_model_0006
0100280007 consumer_market_model_0007
0100280008 consumer_market_model_0008
0100280009 consumer_market_model_0009
0100280010 consumer_market_model_0010
0100280011 consumer_market_model_0011
0100280012 consumer_market_model_0012
0100280013 consumer_market_model_0013
0100280014 consumer_market_model_0014
0100280015 consumer_market_model_0015
0100280016 consumer_market_model_0016
0100280017 consumer_market_model_0017
0100280018 consumer_market_model_0018
0100280019 consumer_market_model_0019
0100280020 consumer_market_model_0020
0100280021 consumer_market_model_0021
0100280022 consumer_market_model_0022
0100280023 consumer_market_model_0023
0100280024 consumer_market_model_0024
0100280025 consumer_market_model_0025
0100280026 consumer_market_model_0026
0100280027 consumer_market_model_0027
0100280028 consumer_market_model_0028
0100280029 consumer_market_model_0029
0100280030 consumer_market_model_0030

# DOMAIN 0029 company
0100290001 company_model_0001
0100290002 company_model_0002
0100290003 company_model_0003
0100290004 company_model_0004
0100290005 company_model_0005
0100290006 company_model_0006
0100290007 company_model_0007
0100290008 company_model_0008
0100290009 company_model_0009
0100290010 company_model_0010
0100290011 company_model_0011
0100290012 company_model_0012
0100290013 company_model_0013
0100290014 company_model_0014
0100290015 company_model_0015
0100290016 company_model_0016
0100290017 company_model_0017
0100290018 company_model_0018
0100290019 company_model_0019
0100290020 company_model_0020
0100290021 company_model_0021
0100290022 company_model_0022
0100290023 company_model_0023
0100290024 company_model_0024
0100290025 company_model_0025
0100290026 company_model_0026
0100290027 company_model_0027
0100290028 company_model_0028
0100290029 company_model_0029
0100290030 company_model_0030

# DOMAIN 0030 startup
0100300001 startup_model_0001
0100300002 startup_model_0002
0100300003 startup_model_0003
0100300004 startup_model_0004
0100300005 startup_model_0005
0100300006 startup_model_0006
0100300007 startup_model_0007
0100300008 startup_model_0008
0100300009 startup_model_0009
0100300010 startup_model_0010
0100300011 startup_model_0011
0100300012 startup_model_0012
0100300013 startup_model_0013
0100300014 startup_model_0014
0100300015 startup_model_0015
0100300016 startup_model_0016
0100300017 startup_model_0017
0100300018 startup_model_0018
0100300019 startup_model_0019
0100300020 startup_model_0020
0100300021 startup_model_0021
0100300022 startup_model_0022
0100300023 startup_model_0023
0100300024 startup_model_0024
0100300025 startup_model_0025
0100300026 startup_model_0026
0100300027 startup_model_0027
0100300028 startup_model_0028
0100300029 startup_model_0029
0100300030 startup_model_0030

# DOMAIN 0031 banking
0100310001 banking_model_0001
0100310002 banking_model_0002
0100310003 banking_model_0003
0100310004 banking_model_0004
0100310005 banking_model_0005
0100310006 banking_model_0006
0100310007 banking_model_0007
0100310008 banking_model_0008
0100310009 banking_model_0009
0100310010 banking_model_0010
0100310011 banking_model_0011
0100310012 banking_model_0012
0100310013 banking_model_0013
0100310014 banking_model_0014
0100310015 banking_model_0015
0100310016 banking_model_0016
0100310017 banking_model_0017
0100310018 banking_model_0018
0100310019 banking_model_0019
0100310020 banking_model_0020
0100310021 banking_model_0021
0100310022 banking_model_0022
0100310023 banking_model_0023
0100310024 banking_model_0024
0100310025 banking_model_0025
0100310026 banking_model_0026
0100310027 banking_model_0027
0100310028 banking_model_0028
0100310029 banking_model_0029
0100310030 banking_model_0030

# DOMAIN 0032 central_bank
0100320001 central_bank_model_0001
0100320002 central_bank_model_0002
0100320003 central_bank_model_0003
0100320004 central_bank_model_0004
0100320005 central_bank_model_0005
0100320006 central_bank_model_0006
0100320007 central_bank_model_0007
0100320008 central_bank_model_0008
0100320009 central_bank_model_0009
0100320010 central_bank_model_0010
0100320011 central_bank_model_0011
0100320012 central_bank_model_0012
0100320013 central_bank_model_0013
0100320014 central_bank_model_0014
0100320015 central_bank_model_0015
0100320016 central_bank_model_0016
0100320017 central_bank_model_0017
0100320018 central_bank_model_0018
0100320019 central_bank_model_0019
0100320020 central_bank_model_0020
0100320021 central_bank_model_0021
0100320022 central_bank_model_0022
0100320023 central_bank_model_0023
0100320024 central_bank_model_0024
0100320025 central_bank_model_0025
0100320026 central_bank_model_0026
0100320027 central_bank_model_0027
0100320028 central_bank_model_0028
0100320029 central_bank_model_0029
0100320030 central_bank_model_0030

# DOMAIN 0033 currency
0100330001 currency_model_0001
0100330002 currency_model_0002
0100330003 currency_model_0003
0100330004 currency_model_0004
0100330005 currency_model_0005
0100330006 currency_model_0006
0100330007 currency_model_0007
0100330008 currency_model_0008
0100330009 currency_model_0009
0100330010 currency_model_0010
0100330011 currency_model_0011
0100330012 currency_model_0012
0100330013 currency_model_0013
0100330014 currency_model_0014
0100330015 currency_model_0015
0100330016 currency_model_0016
0100330017 currency_model_0017
0100330018 currency_model_0018
0100330019 currency_model_0019
0100330020 currency_model_0020
0100330021 currency_model_0021
0100330022 currency_model_0022
0100330023 currency_model_0023
0100330024 currency_model_0024
0100330025 currency_model_0025
0100330026 currency_model_0026
0100330027 currency_model_0027
0100330028 currency_model_0028
0100330029 currency_model_0029
0100330030 currency_model_0030

# DOMAIN 0034 payment
0100340001 payment_model_0001
0100340002 payment_model_0002
0100340003 payment_model_0003
0100340004 payment_model_0004
0100340005 payment_model_0005
0100340006 payment_model_0006
0100340007 payment_model_0007
0100340008 payment_model_0008
0100340009 payment_model_0009
0100340010 payment_model_0010
0100340011 payment_model_0011
0100340012 payment_model_0012
0100340013 payment_model_0013
0100340014 payment_model_0014
0100340015 payment_model_0015
0100340016 payment_model_0016
0100340017 payment_model_0017
0100340018 payment_model_0018
0100340019 payment_model_0019
0100340020 payment_model_0020
0100340021 payment_model_0021
0100340022 payment_model_0022
0100340023 payment_model_0023
0100340024 payment_model_0024
0100340025 payment_model_0025
0100340026 payment_model_0026
0100340027 payment_model_0027
0100340028 payment_model_0028
0100340029 payment_model_0029
0100340030 payment_model_0030

# DOMAIN 0035 capital_market
0100350001 capital_market_model_0001
0100350002 capital_market_model_0002
0100350003 capital_market_model_0003
0100350004 capital_market_model_0004
0100350005 capital_market_model_0005
0100350006 capital_market_model_0006
0100350007 capital_market_model_0007
0100350008 capital_market_model_0008
0100350009 capital_market_model_0009
0100350010 capital_market_model_0010
0100350011 capital_market_model_0011
0100350012 capital_market_model_0012
0100350013 capital_market_model_0013
0100350014 capital_market_model_0014
0100350015 capital_market_model_0015
0100350016 capital_market_model_0016
0100350017 capital_market_model_0017
0100350018 capital_market_model_0018
0100350019 capital_market_model_0019
0100350020 capital_market_model_0020
0100350021 capital_market_model_0021
0100350022 capital_market_model_0022
0100350023 capital_market_model_0023
0100350024 capital_market_model_0024
0100350025 capital_market_model_0025
0100350026 capital_market_model_0026
0100350027 capital_market_model_0027
0100350028 capital_market_model_0028
0100350029 capital_market_model_0029
0100350030 capital_market_model_0030

# DOMAIN 0036 stock_market
0100360001 stock_market_model_0001
0100360002 stock_market_model_0002
0100360003 stock_market_model_0003
0100360004 stock_market_model_0004
0100360005 stock_market_model_0005
0100360006 stock_market_model_0006
0100360007 stock_market_model_0007
0100360008 stock_market_model_0008
0100360009 stock_market_model_0009
0100360010 stock_market_model_0010
0100360011 stock_market_model_0011
0100360012 stock_market_model_0012
0100360013 stock_market_model_0013
0100360014 stock_market_model_0014
0100360015 stock_market_model_0015
0100360016 stock_market_model_0016
0100360017 stock_market_model_0017
0100360018 stock_market_model_0018
0100360019 stock_market_model_0019
0100360020 stock_market_model_0020
0100360021 stock_market_model_0021
0100360022 stock_market_model_0022
0100360023 stock_market_model_0023
0100360024 stock_market_model_0024
0100360025 stock_market_model_0025
0100360026 stock_market_model_0026
0100360027 stock_market_model_0027
0100360028 stock_market_model_0028
0100360029 stock_market_model_0029
0100360030 stock_market_model_0030

# DOMAIN 0037 bond_market
0100370001 bond_market_model_0001
0100370002 bond_market_model_0002
0100370003 bond_market_model_0003
0100370004 bond_market_model_0004
0100370005 bond_market_model_0005
0100370006 bond_market_model_0006
0100370007 bond_market_model_0007
0100370008 bond_market_model_0008
0100370009 bond_market_model_0009
0100370010 bond_market_model_0010
0100370011 bond_market_model_0011
0100370012 bond_market_model_0012
0100370013 bond_market_model_0013
0100370014 bond_market_model_0014
0100370015 bond_market_model_0015
0100370016 bond_market_model_0016
0100370017 bond_market_model_0017
0100370018 bond_market_model_0018
0100370019 bond_market_model_0019
0100370020 bond_market_model_0020
0100370021 bond_market_model_0021
0100370022 bond_market_model_0022
0100370023 bond_market_model_0023
0100370024 bond_market_model_0024
0100370025 bond_market_model_0025
0100370026 bond_market_model_0026
0100370027 bond_market_model_0027
0100370028 bond_market_model_0028
0100370029 bond_market_model_0029
0100370030 bond_market_model_0030

# DOMAIN 0038 fx_market
0100380001 fx_market_model_0001
0100380002 fx_market_model_0002
0100380003 fx_market_model_0003
0100380004 fx_market_model_0004
0100380005 fx_market_model_0005
0100380006 fx_market_model_0006
0100380007 fx_market_model_0007
0100380008 fx_market_model_0008
0100380009 fx_market_model_0009
0100380010 fx_market_model_0010
0100380011 fx_market_model_0011
0100380012 fx_market_model_0012
0100380013 fx_market_model_0013
0100380014 fx_market_model_0014
0100380015 fx_market_model_0015
0100380016 fx_market_model_0016
0100380017 fx_market_model_0017
0100380018 fx_market_model_0018
0100380019 fx_market_model_0019
0100380020 fx_market_model_0020
0100380021 fx_market_model_0021
0100380022 fx_market_model_0022
0100380023 fx_market_model_0023
0100380024 fx_market_model_0024
0100380025 fx_market_model_0025
0100380026 fx_market_model_0026
0100380027 fx_market_model_0027
0100380028 fx_market_model_0028
0100380029 fx_market_model_0029
0100380030 fx_market_model_0030

# DOMAIN 0039 derivatives_market
0100390001 derivatives_market_model_0001
0100390002 derivatives_market_model_0002
0100390003 derivatives_market_model_0003
0100390004 derivatives_market_model_0004
0100390005 derivatives_market_model_0005
0100390006 derivatives_market_model_0006
0100390007 derivatives_market_model_0007
0100390008 derivatives_market_model_0008
0100390009 derivatives_market_model_0009
0100390010 derivatives_market_model_0010
0100390011 derivatives_market_model_0011
0100390012 derivatives_market_model_0012
0100390013 derivatives_market_model_0013
0100390014 derivatives_market_model_0014
0100390015 derivatives_market_model_0015
0100390016 derivatives_market_model_0016
0100390017 derivatives_market_model_0017
0100390018 derivatives_market_model_0018
0100390019 derivatives_market_model_0019
0100390020 derivatives_market_model_0020
0100390021 derivatives_market_model_0021
0100390022 derivatives_market_model_0022
0100390023 derivatives_market_model_0023
0100390024 derivatives_market_model_0024
0100390025 derivatives_market_model_0025
0100390026 derivatives_market_model_0026
0100390027 derivatives_market_model_0027
0100390028 derivatives_market_model_0028
0100390029 derivatives_market_model_0029
0100390030 derivatives_market_model_0030

# DOMAIN 0040 asset_management
0100400001 asset_management_model_0001
0100400002 asset_management_model_0002
0100400003 asset_management_model_0003
0100400004 asset_management_model_0004
0100400005 asset_management_model_0005
0100400006 asset_management_model_0006
0100400007 asset_management_model_0007
0100400008 asset_management_model_0008
0100400009 asset_management_model_0009
0100400010 asset_management_model_0010
0100400011 asset_management_model_0011
0100400012 asset_management_model_0012
0100400013 asset_management_model_0013
0100400014 asset_management_model_0014
0100400015 asset_management_model_0015
0100400016 asset_management_model_0016
0100400017 asset_management_model_0017
0100400018 asset_management_model_0018
0100400019 asset_management_model_0019
0100400020 asset_management_model_0020
0100400021 asset_management_model_0021
0100400022 asset_management_model_0022
0100400023 asset_management_model_0023
0100400024 asset_management_model_0024
0100400025 asset_management_model_0025
0100400026 asset_management_model_0026
0100400027 asset_management_model_0027
0100400028 asset_management_model_0028
0100400029 asset_management_model_0029
0100400030 asset_management_model_0030

# DOMAIN 0041 private_equity
0100410001 private_equity_model_0001
0100410002 private_equity_model_0002
0100410003 private_equity_model_0003
0100410004 private_equity_model_0004
0100410005 private_equity_model_0005
0100410006 private_equity_model_0006
0100410007 private_equity_model_0007
0100410008 private_equity_model_0008
0100410009 private_equity_model_0009
0100410010 private_equity_model_0010
0100410011 private_equity_model_0011
0100410012 private_equity_model_0012
0100410013 private_equity_model_0013
0100410014 private_equity_model_0014
0100410015 private_equity_model_0015
0100410016 private_equity_model_0016
0100410017 private_equity_model_0017
0100410018 private_equity_model_0018
0100410019 private_equity_model_0019
0100410020 private_equity_model_0020
0100410021 private_equity_model_0021
0100410022 private_equity_model_0022
0100410023 private_equity_model_0023
0100410024 private_equity_model_0024
0100410025 private_equity_model_0025
0100410026 private_equity_model_0026
0100410027 private_equity_model_0027
0100410028 private_equity_model_0028
0100410029 private_equity_model_0029
0100410030 private_equity_model_0030

# DOMAIN 0042 venture_capital
0100420001 venture_capital_model_0001
0100420002 venture_capital_model_0002
0100420003 venture_capital_model_0003
0100420004 venture_capital_model_0004
0100420005 venture_capital_model_0005
0100420006 venture_capital_model_0006
0100420007 venture_capital_model_0007
0100420008 venture_capital_model_0008
0100420009 venture_capital_model_0009
0100420010 venture_capital_model_0010
0100420011 venture_capital_model_0011
0100420012 venture_capital_model_0012
0100420013 venture_capital_model_0013
0100420014 venture_capital_model_0014
0100420015 venture_capital_model_0015
0100420016 venture_capital_model_0016
0100420017 venture_capital_model_0017
0100420018 venture_capital_model_0018
0100420019 venture_capital_model_0019
0100420020 venture_capital_model_0020
0100420021 venture_capital_model_0021
0100420022 venture_capital_model_0022
0100420023 venture_capital_model_0023
0100420024 venture_capital_model_0024
0100420025 venture_capital_model_0025
0100420026 venture_capital_model_0026
0100420027 venture_capital_model_0027
0100420028 venture_capital_model_0028
0100420029 venture_capital_model_0029
0100420030 venture_capital_model_0030

# DOMAIN 0043 public_finance
0100430001 public_finance_model_0001
0100430002 public_finance_model_0002
0100430003 public_finance_model_0003
0100430004 public_finance_model_0004
0100430005 public_finance_model_0005
0100430006 public_finance_model_0006
0100430007 public_finance_model_0007
0100430008 public_finance_model_0008
0100430009 public_finance_model_0009
0100430010 public_finance_model_0010
0100430011 public_finance_model_0011
0100430012 public_finance_model_0012
0100430013 public_finance_model_0013
0100430014 public_finance_model_0014
0100430015 public_finance_model_0015
0100430016 public_finance_model_0016
0100430017 public_finance_model_0017
0100430018 public_finance_model_0018
0100430019 public_finance_model_0019
0100430020 public_finance_model_0020
0100430021 public_finance_model_0021
0100430022 public_finance_model_0022
0100430023 public_finance_model_0023
0100430024 public_finance_model_0024
0100430025 public_finance_model_0025
0100430026 public_finance_model_0026
0100430027 public_finance_model_0027
0100430028 public_finance_model_0028
0100430029 public_finance_model_0029
0100430030 public_finance_model_0030

# DOMAIN 0044 taxation
0100440001 taxation_model_0001
0100440002 taxation_model_0002
0100440003 taxation_model_0003
0100440004 taxation_model_0004
0100440005 taxation_model_0005
0100440006 taxation_model_0006
0100440007 taxation_model_0007
0100440008 taxation_model_0008
0100440009 taxation_model_0009
0100440010 taxation_model_0010
0100440011 taxation_model_0011
0100440012 taxation_model_0012
0100440013 taxation_model_0013
0100440014 taxation_model_0014
0100440015 taxation_model_0015
0100440016 taxation_model_0016
0100440017 taxation_model_0017
0100440018 taxation_model_0018
0100440019 taxation_model_0019
0100440020 taxation_model_0020
0100440021 taxation_model_0021
0100440022 taxation_model_0022
0100440023 taxation_model_0023
0100440024 taxation_model_0024
0100440025 taxation_model_0025
0100440026 taxation_model_0026
0100440027 taxation_model_0027
0100440028 taxation_model_0028
0100440029 taxation_model_0029
0100440030 taxation_model_0030

# DOMAIN 0045 insurance
0100450001 insurance_model_0001
0100450002 insurance_model_0002
0100450003 insurance_model_0003
0100450004 insurance_model_0004
0100450005 insurance_model_0005
0100450006 insurance_model_0006
0100450007 insurance_model_0007
0100450008 insurance_model_0008
0100450009 insurance_model_0009
0100450010 insurance_model_0010
0100450011 insurance_model_0011
0100450012 insurance_model_0012
0100450013 insurance_model_0013
0100450014 insurance_model_0014
0100450015 insurance_model_0015
0100450016 insurance_model_0016
0100450017 insurance_model_0017
0100450018 insurance_model_0018
0100450019 insurance_model_0019
0100450020 insurance_model_0020
0100450021 insurance_model_0021
0100450022 insurance_model_0022
0100450023 insurance_model_0023
0100450024 insurance_model_0024
0100450025 insurance_model_0025
0100450026 insurance_model_0026
0100450027 insurance_model_0027
0100450028 insurance_model_0028
0100450029 insurance_model_0029
0100450030 insurance_model_0030

# DOMAIN 0046 financial_crime
0100460001 financial_crime_model_0001
0100460002 financial_crime_model_0002
0100460003 financial_crime_model_0003
0100460004 financial_crime_model_0004
0100460005 financial_crime_model_0005
0100460006 financial_crime_model_0006
0100460007 financial_crime_model_0007
0100460008 financial_crime_model_0008
0100460009 financial_crime_model_0009
0100460010 financial_crime_model_0010
0100460011 financial_crime_model_0011
0100460012 financial_crime_model_0012
0100460013 financial_crime_model_0013
0100460014 financial_crime_model_0014
0100460015 financial_crime_model_0015
0100460016 financial_crime_model_0016
0100460017 financial_crime_model_0017
0100460018 financial_crime_model_0018
0100460019 financial_crime_model_0019
0100460020 financial_crime_model_0020
0100460021 financial_crime_model_0021
0100460022 financial_crime_model_0022
0100460023 financial_crime_model_0023
0100460024 financial_crime_model_0024
0100460025 financial_crime_model_0025
0100460026 financial_crime_model_0026
0100460027 financial_crime_model_0027
0100460028 financial_crime_model_0028
0100460029 financial_crime_model_0029
0100460030 financial_crime_model_0030

# DOMAIN 0047 trade
0100470001 trade_model_0001
0100470002 trade_model_0002
0100470003 trade_model_0003
0100470004 trade_model_0004
0100470005 trade_model_0005
0100470006 trade_model_0006
0100470007 trade_model_0007
0100470008 trade_model_0008
0100470009 trade_model_0009
0100470010 trade_model_0010
0100470011 trade_model_0011
0100470012 trade_model_0012
0100470013 trade_model_0013
0100470014 trade_model_0014
0100470015 trade_model_0015
0100470016 trade_model_0016
0100470017 trade_model_0017
0100470018 trade_model_0018
0100470019 trade_model_0019
0100470020 trade_model_0020
0100470021 trade_model_0021
0100470022 trade_model_0022
0100470023 trade_model_0023
0100470024 trade_model_0024
0100470025 trade_model_0025
0100470026 trade_model_0026
0100470027 trade_model_0027
0100470028 trade_model_0028
0100470029 trade_model_0029
0100470030 trade_model_0030

# DOMAIN 0048 customs
0100480001 customs_model_0001
0100480002 customs_model_0002
0100480003 customs_model_0003
0100480004 customs_model_0004
0100480005 customs_model_0005
0100480006 customs_model_0006
0100480007 customs_model_0007
0100480008 customs_model_0008
0100480009 customs_model_0009
0100480010 customs_model_0010
0100480011 customs_model_0011
0100480012 customs_model_0012
0100480013 customs_model_0013
0100480014 customs_model_0014
0100480015 customs_model_0015
0100480016 customs_model_0016
0100480017 customs_model_0017
0100480018 customs_model_0018
0100480019 customs_model_0019
0100480020 customs_model_0020
0100480021 customs_model_0021
0100480022 customs_model_0022
0100480023 customs_model_0023
0100480024 customs_model_0024
0100480025 customs_model_0025
0100480026 customs_model_0026
0100480027 customs_model_0027
0100480028 customs_model_0028
0100480029 customs_model_0029
0100480030 customs_model_0030

# DOMAIN 0049 logistics
0100490001 logistics_model_0001
0100490002 logistics_model_0002
0100490003 logistics_model_0003
0100490004 logistics_model_0004
0100490005 logistics_model_0005
0100490006 logistics_model_0006
0100490007 logistics_model_0007
0100490008 logistics_model_0008
0100490009 logistics_model_0009
0100490010 logistics_model_0010
0100490011 logistics_model_0011
0100490012 logistics_model_0012
0100490013 logistics_model_0013
0100490014 logistics_model_0014
0100490015 logistics_model_0015
0100490016 logistics_model_0016
0100490017 logistics_model_0017
0100490018 logistics_model_0018
0100490019 logistics_model_0019
0100490020 logistics_model_0020
0100490021 logistics_model_0021
0100490022 logistics_model_0022
0100490023 logistics_model_0023
0100490024 logistics_model_0024
0100490025 logistics_model_0025
0100490026 logistics_model_0026
0100490027 logistics_model_0027
0100490028 logistics_model_0028
0100490029 logistics_model_0029
0100490030 logistics_model_0030

# DOMAIN 0050 supply_chain
0100500001 supply_chain_model_0001
0100500002 supply_chain_model_0002
0100500003 supply_chain_model_0003
0100500004 supply_chain_model_0004
0100500005 supply_chain_model_0005
0100500006 supply_chain_model_0006
0100500007 supply_chain_model_0007
0100500008 supply_chain_model_0008
0100500009 supply_chain_model_0009
0100500010 supply_chain_model_0010
0100500011 supply_chain_model_0011
0100500012 supply_chain_model_0012
0100500013 supply_chain_model_0013
0100500014 supply_chain_model_0014
0100500015 supply_chain_model_0015
0100500016 supply_chain_model_0016
0100500017 supply_chain_model_0017
0100500018 supply_chain_model_0018
0100500019 supply_chain_model_0019
0100500020 supply_chain_model_0020
0100500021 supply_chain_model_0021
0100500022 supply_chain_model_0022
0100500023 supply_chain_model_0023
0100500024 supply_chain_model_0024
0100500025 supply_chain_model_0025
0100500026 supply_chain_model_0026
0100500027 supply_chain_model_0027
0100500028 supply_chain_model_0028
0100500029 supply_chain_model_0029
0100500030 supply_chain_model_0030

# DOMAIN 0051 agriculture
0100510001 agriculture_model_0001
0100510002 agriculture_model_0002
0100510003 agriculture_model_0003
0100510004 agriculture_model_0004
0100510005 agriculture_model_0005
0100510006 agriculture_model_0006
0100510007 agriculture_model_0007
0100510008 agriculture_model_0008
0100510009 agriculture_model_0009
0100510010 agriculture_model_0010
0100510011 agriculture_model_0011
0100510012 agriculture_model_0012
0100510013 agriculture_model_0013
0100510014 agriculture_model_0014
0100510015 agriculture_model_0015
0100510016 agriculture_model_0016
0100510017 agriculture_model_0017
0100510018 agriculture_model_0018
0100510019 agriculture_model_0019
0100510020 agriculture_model_0020
0100510021 agriculture_model_0021
0100510022 agriculture_model_0022
0100510023 agriculture_model_0023
0100510024 agriculture_model_0024
0100510025 agriculture_model_0025
0100510026 agriculture_model_0026
0100510027 agriculture_model_0027
0100510028 agriculture_model_0028
0100510029 agriculture_model_0029
0100510030 agriculture_model_0030

# DOMAIN 0052 food
0100520001 food_model_0001
0100520002 food_model_0002
0100520003 food_model_0003
0100520004 food_model_0004
0100520005 food_model_0005
0100520006 food_model_0006
0100520007 food_model_0007
0100520008 food_model_0008
0100520009 food_model_0009
0100520010 food_model_0010
0100520011 food_model_0011
0100520012 food_model_0012
0100520013 food_model_0013
0100520014 food_model_0014
0100520015 food_model_0015
0100520016 food_model_0016
0100520017 food_model_0017
0100520018 food_model_0018
0100520019 food_model_0019
0100520020 food_model_0020
0100520021 food_model_0021
0100520022 food_model_0022
0100520023 food_model_0023
0100520024 food_model_0024
0100520025 food_model_0025
0100520026 food_model_0026
0100520027 food_model_0027
0100520028 food_model_0028
0100520029 food_model_0029
0100520030 food_model_0030

# DOMAIN 0053 fisheries
0100530001 fisheries_model_0001
0100530002 fisheries_model_0002
0100530003 fisheries_model_0003
0100530004 fisheries_model_0004
0100530005 fisheries_model_0005
0100530006 fisheries_model_0006
0100530007 fisheries_model_0007
0100530008 fisheries_model_0008
0100530009 fisheries_model_0009
0100530010 fisheries_model_0010
0100530011 fisheries_model_0011
0100530012 fisheries_model_0012
0100530013 fisheries_model_0013
0100530014 fisheries_model_0014
0100530015 fisheries_model_0015
0100530016 fisheries_model_0016
0100530017 fisheries_model_0017
0100530018 fisheries_model_0018
0100530019 fisheries_model_0019
0100530020 fisheries_model_0020
0100530021 fisheries_model_0021
0100530022 fisheries_model_0022
0100530023 fisheries_model_0023
0100530024 fisheries_model_0024
0100530025 fisheries_model_0025
0100530026 fisheries_model_0026
0100530027 fisheries_model_0027
0100530028 fisheries_model_0028
0100530029 fisheries_model_0029
0100530030 fisheries_model_0030

# DOMAIN 0054 forestry
0100540001 forestry_model_0001
0100540002 forestry_model_0002
0100540003 forestry_model_0003
0100540004 forestry_model_0004
0100540005 forestry_model_0005
0100540006 forestry_model_0006
0100540007 forestry_model_0007
0100540008 forestry_model_0008
0100540009 forestry_model_0009
0100540010 forestry_model_0010
0100540011 forestry_model_0011
0100540012 forestry_model_0012
0100540013 forestry_model_0013
0100540014 forestry_model_0014
0100540015 forestry_model_0015
0100540016 forestry_model_0016
0100540017 forestry_model_0017
0100540018 forestry_model_0018
0100540019 forestry_model_0019
0100540020 forestry_model_0020
0100540021 forestry_model_0021
0100540022 forestry_model_0022
0100540023 forestry_model_0023
0100540024 forestry_model_0024
0100540025 forestry_model_0025
0100540026 forestry_model_0026
0100540027 forestry_model_0027
0100540028 forestry_model_0028
0100540029 forestry_model_0029
0100540030 forestry_model_0030

# DOMAIN 0055 mining
0100550001 mining_model_0001
0100550002 mining_model_0002
0100550003 mining_model_0003
0100550004 mining_model_0004
0100550005 mining_model_0005
0100550006 mining_model_0006
0100550007 mining_model_0007
0100550008 mining_model_0008
0100550009 mining_model_0009
0100550010 mining_model_0010
0100550011 mining_model_0011
0100550012 mining_model_0012
0100550013 mining_model_0013
0100550014 mining_model_0014
0100550015 mining_model_0015
0100550016 mining_model_0016
0100550017 mining_model_0017
0100550018 mining_model_0018
0100550019 mining_model_0019
0100550020 mining_model_0020
0100550021 mining_model_0021
0100550022 mining_model_0022
0100550023 mining_model_0023
0100550024 mining_model_0024
0100550025 mining_model_0025
0100550026 mining_model_0026
0100550027 mining_model_0027
0100550028 mining_model_0028
0100550029 mining_model_0029
0100550030 mining_model_0030

# DOMAIN 0056 manufacturing
0100560001 manufacturing_model_0001
0100560002 manufacturing_model_0002
0100560003 manufacturing_model_0003
0100560004 manufacturing_model_0004
0100560005 manufacturing_model_0005
0100560006 manufacturing_model_0006
0100560007 manufacturing_model_0007
0100560008 manufacturing_model_0008
0100560009 manufacturing_model_0009
0100560010 manufacturing_model_0010
0100560011 manufacturing_model_0011
0100560012 manufacturing_model_0012
0100560013 manufacturing_model_0013
0100560014 manufacturing_model_0014
0100560015 manufacturing_model_0015
0100560016 manufacturing_model_0016
0100560017 manufacturing_model_0017
0100560018 manufacturing_model_0018
0100560019 manufacturing_model_0019
0100560020 manufacturing_model_0020
0100560021 manufacturing_model_0021
0100560022 manufacturing_model_0022
0100560023 manufacturing_model_0023
0100560024 manufacturing_model_0024
0100560025 manufacturing_model_0025
0100560026 manufacturing_model_0026
0100560027 manufacturing_model_0027
0100560028 manufacturing_model_0028
0100560029 manufacturing_model_0029
0100560030 manufacturing_model_0030

# DOMAIN 0057 semiconductor
0100570001 semiconductor_model_0001
0100570002 semiconductor_model_0002
0100570003 semiconductor_model_0003
0100570004 semiconductor_model_0004
0100570005 semiconductor_model_0005
0100570006 semiconductor_model_0006
0100570007 semiconductor_model_0007
0100570008 semiconductor_model_0008
0100570009 semiconductor_model_0009
0100570010 semiconductor_model_0010
0100570011 semiconductor_model_0011
0100570012 semiconductor_model_0012
0100570013 semiconductor_model_0013
0100570014 semiconductor_model_0014
0100570015 semiconductor_model_0015
0100570016 semiconductor_model_0016
0100570017 semiconductor_model_0017
0100570018 semiconductor_model_0018
0100570019 semiconductor_model_0019
0100570020 semiconductor_model_0020
0100570021 semiconductor_model_0021
0100570022 semiconductor_model_0022
0100570023 semiconductor_model_0023
0100570024 semiconductor_model_0024
0100570025 semiconductor_model_0025
0100570026 semiconductor_model_0026
0100570027 semiconductor_model_0027
0100570028 semiconductor_model_0028
0100570029 semiconductor_model_0029
0100570030 semiconductor_model_0030

# DOMAIN 0058 automotive
0100580001 automotive_model_0001
0100580002 automotive_model_0002
0100580003 automotive_model_0003
0100580004 automotive_model_0004
0100580005 automotive_model_0005
0100580006 automotive_model_0006
0100580007 automotive_model_0007
0100580008 automotive_model_0008
0100580009 automotive_model_0009
0100580010 automotive_model_0010
0100580011 automotive_model_0011
0100580012 automotive_model_0012
0100580013 automotive_model_0013
0100580014 automotive_model_0014
0100580015 automotive_model_0015
0100580016 automotive_model_0016
0100580017 automotive_model_0017
0100580018 automotive_model_0018
0100580019 automotive_model_0019
0100580020 automotive_model_0020
0100580021 automotive_model_0021
0100580022 automotive_model_0022
0100580023 automotive_model_0023
0100580024 automotive_model_0024
0100580025 automotive_model_0025
0100580026 automotive_model_0026
0100580027 automotive_model_0027
0100580028 automotive_model_0028
0100580029 automotive_model_0029
0100580030 automotive_model_0030

# DOMAIN 0059 construction
0100590001 construction_model_0001
0100590002 construction_model_0002
0100590003 construction_model_0003
0100590004 construction_model_0004
0100590005 construction_model_0005
0100590006 construction_model_0006
0100590007 construction_model_0007
0100590008 construction_model_0008
0100590009 construction_model_0009
0100590010 construction_model_0010
0100590011 construction_model_0011
0100590012 construction_model_0012
0100590013 construction_model_0013
0100590014 construction_model_0014
0100590015 construction_model_0015
0100590016 construction_model_0016
0100590017 construction_model_0017
0100590018 construction_model_0018
0100590019 construction_model_0019
0100590020 construction_model_0020
0100590021 construction_model_0021
0100590022 construction_model_0022
0100590023 construction_model_0023
0100590024 construction_model_0024
0100590025 construction_model_0025
0100590026 construction_model_0026
0100590027 construction_model_0027
0100590028 construction_model_0028
0100590029 construction_model_0029
0100590030 construction_model_0030

# DOMAIN 0060 real_estate
0100600001 real_estate_model_0001
0100600002 real_estate_model_0002
0100600003 real_estate_model_0003
0100600004 real_estate_model_0004
0100600005 real_estate_model_0005
0100600006 real_estate_model_0006
0100600007 real_estate_model_0007
0100600008 real_estate_model_0008
0100600009 real_estate_model_0009
0100600010 real_estate_model_0010
0100600011 real_estate_model_0011
0100600012 real_estate_model_0012
0100600013 real_estate_model_0013
0100600014 real_estate_model_0014
0100600015 real_estate_model_0015
0100600016 real_estate_model_0016
0100600017 real_estate_model_0017
0100600018 real_estate_model_0018
0100600019 real_estate_model_0019
0100600020 real_estate_model_0020
0100600021 real_estate_model_0021
0100600022 real_estate_model_0022
0100600023 real_estate_model_0023
0100600024 real_estate_model_0024
0100600025 real_estate_model_0025
0100600026 real_estate_model_0026
0100600027 real_estate_model_0027
0100600028 real_estate_model_0028
0100600029 real_estate_model_0029
0100600030 real_estate_model_0030

# DOMAIN 0061 infrastructure
0100610001 infrastructure_model_0001
0100610002 infrastructure_model_0002
0100610003 infrastructure_model_0003
0100610004 infrastructure_model_0004
0100610005 infrastructure_model_0005
0100610006 infrastructure_model_0006
0100610007 infrastructure_model_0007
0100610008 infrastructure_model_0008
0100610009 infrastructure_model_0009
0100610010 infrastructure_model_0010
0100610011 infrastructure_model_0011
0100610012 infrastructure_model_0012
0100610013 infrastructure_model_0013
0100610014 infrastructure_model_0014
0100610015 infrastructure_model_0015
0100610016 infrastructure_model_0016
0100610017 infrastructure_model_0017
0100610018 infrastructure_model_0018
0100610019 infrastructure_model_0019
0100610020 infrastructure_model_0020
0100610021 infrastructure_model_0021
0100610022 infrastructure_model_0022
0100610023 infrastructure_model_0023
0100610024 infrastructure_model_0024
0100610025 infrastructure_model_0025
0100610026 infrastructure_model_0026
0100610027 infrastructure_model_0027
0100610028 infrastructure_model_0028
0100610029 infrastructure_model_0029
0100610030 infrastructure_model_0030

# DOMAIN 0062 transport
0100620001 transport_model_0001
0100620002 transport_model_0002
0100620003 transport_model_0003
0100620004 transport_model_0004
0100620005 transport_model_0005
0100620006 transport_model_0006
0100620007 transport_model_0007
0100620008 transport_model_0008
0100620009 transport_model_0009
0100620010 transport_model_0010
0100620011 transport_model_0011
0100620012 transport_model_0012
0100620013 transport_model_0013
0100620014 transport_model_0014
0100620015 transport_model_0015
0100620016 transport_model_0016
0100620017 transport_model_0017
0100620018 transport_model_0018
0100620019 transport_model_0019
0100620020 transport_model_0020
0100620021 transport_model_0021
0100620022 transport_model_0022
0100620023 transport_model_0023
0100620024 transport_model_0024
0100620025 transport_model_0025
0100620026 transport_model_0026
0100620027 transport_model_0027
0100620028 transport_model_0028
0100620029 transport_model_0029
0100620030 transport_model_0030

# DOMAIN 0063 railway
0100630001 railway_model_0001
0100630002 railway_model_0002
0100630003 railway_model_0003
0100630004 railway_model_0004
0100630005 railway_model_0005
0100630006 railway_model_0006
0100630007 railway_model_0007
0100630008 railway_model_0008
0100630009 railway_model_0009
0100630010 railway_model_0010
0100630011 railway_model_0011
0100630012 railway_model_0012
0100630013 railway_model_0013
0100630014 railway_model_0014
0100630015 railway_model_0015
0100630016 railway_model_0016
0100630017 railway_model_0017
0100630018 railway_model_0018
0100630019 railway_model_0019
0100630020 railway_model_0020
0100630021 railway_model_0021
0100630022 railway_model_0022
0100630023 railway_model_0023
0100630024 railway_model_0024
0100630025 railway_model_0025
0100630026 railway_model_0026
0100630027 railway_model_0027
0100630028 railway_model_0028
0100630029 railway_model_0029
0100630030 railway_model_0030

# DOMAIN 0064 shipping
0100640001 shipping_model_0001
0100640002 shipping_model_0002
0100640003 shipping_model_0003
0100640004 shipping_model_0004
0100640005 shipping_model_0005
0100640006 shipping_model_0006
0100640007 shipping_model_0007
0100640008 shipping_model_0008
0100640009 shipping_model_0009
0100640010 shipping_model_0010
0100640011 shipping_model_0011
0100640012 shipping_model_0012
0100640013 shipping_model_0013
0100640014 shipping_model_0014
0100640015 shipping_model_0015
0100640016 shipping_model_0016
0100640017 shipping_model_0017
0100640018 shipping_model_0018
0100640019 shipping_model_0019
0100640020 shipping_model_0020
0100640021 shipping_model_0021
0100640022 shipping_model_0022
0100640023 shipping_model_0023
0100640024 shipping_model_0024
0100640025 shipping_model_0025
0100640026 shipping_model_0026
0100640027 shipping_model_0027
0100640028 shipping_model_0028
0100640029 shipping_model_0029
0100640030 shipping_model_0030

# DOMAIN 0065 aviation
0100650001 aviation_model_0001
0100650002 aviation_model_0002
0100650003 aviation_model_0003
0100650004 aviation_model_0004
0100650005 aviation_model_0005
0100650006 aviation_model_0006
0100650007 aviation_model_0007
0100650008 aviation_model_0008
0100650009 aviation_model_0009
0100650010 aviation_model_0010
0100650011 aviation_model_0011
0100650012 aviation_model_0012
0100650013 aviation_model_0013
0100650014 aviation_model_0014
0100650015 aviation_model_0015
0100650016 aviation_model_0016
0100650017 aviation_model_0017
0100650018 aviation_model_0018
0100650019 aviation_model_0019
0100650020 aviation_model_0020
0100650021 aviation_model_0021
0100650022 aviation_model_0022
0100650023 aviation_model_0023
0100650024 aviation_model_0024
0100650025 aviation_model_0025
0100650026 aviation_model_0026
0100650027 aviation_model_0027
0100650028 aviation_model_0028
0100650029 aviation_model_0029
0100650030 aviation_model_0030

# DOMAIN 0066 energy
0100660001 energy_model_0001
0100660002 energy_model_0002
0100660003 energy_model_0003
0100660004 energy_model_0004
0100660005 energy_model_0005
0100660006 energy_model_0006
0100660007 energy_model_0007
0100660008 energy_model_0008
0100660009 energy_model_0009
0100660010 energy_model_0010
0100660011 energy_model_0011
0100660012 energy_model_0012
0100660013 energy_model_0013
0100660014 energy_model_0014
0100660015 energy_model_0015
0100660016 energy_model_0016
0100660017 energy_model_0017
0100660018 energy_model_0018
0100660019 energy_model_0019
0100660020 energy_model_0020
0100660021 energy_model_0021
0100660022 energy_model_0022
0100660023 energy_model_0023
0100660024 energy_model_0024
0100660025 energy_model_0025
0100660026 energy_model_0026
0100660027 energy_model_0027
0100660028 energy_model_0028
0100660029 energy_model_0029
0100660030 energy_model_0030

# DOMAIN 0067 oil_gas
0100670001 oil_gas_model_0001
0100670002 oil_gas_model_0002
0100670003 oil_gas_model_0003
0100670004 oil_gas_model_0004
0100670005 oil_gas_model_0005
0100670006 oil_gas_model_0006
0100670007 oil_gas_model_0007
0100670008 oil_gas_model_0008
0100670009 oil_gas_model_0009
0100670010 oil_gas_model_0010
0100670011 oil_gas_model_0011
0100670012 oil_gas_model_0012
0100670013 oil_gas_model_0013
0100670014 oil_gas_model_0014
0100670015 oil_gas_model_0015
0100670016 oil_gas_model_0016
0100670017 oil_gas_model_0017
0100670018 oil_gas_model_0018
0100670019 oil_gas_model_0019
0100670020 oil_gas_model_0020
0100670021 oil_gas_model_0021
0100670022 oil_gas_model_0022
0100670023 oil_gas_model_0023
0100670024 oil_gas_model_0024
0100670025 oil_gas_model_0025
0100670026 oil_gas_model_0026
0100670027 oil_gas_model_0027
0100670028 oil_gas_model_0028
0100670029 oil_gas_model_0029
0100670030 oil_gas_model_0030

# DOMAIN 0068 electric_power
0100680001 electric_power_model_0001
0100680002 electric_power_model_0002
0100680003 electric_power_model_0003
0100680004 electric_power_model_0004
0100680005 electric_power_model_0005
0100680006 electric_power_model_0006
0100680007 electric_power_model_0007
0100680008 electric_power_model_0008
0100680009 electric_power_model_0009
0100680010 electric_power_model_0010
0100680011 electric_power_model_0011
0100680012 electric_power_model_0012
0100680013 electric_power_model_0013
0100680014 electric_power_model_0014
0100680015 electric_power_model_0015
0100680016 electric_power_model_0016
0100680017 electric_power_model_0017
0100680018 electric_power_model_0018
0100680019 electric_power_model_0019
0100680020 electric_power_model_0020
0100680021 electric_power_model_0021
0100680022 electric_power_model_0022
0100680023 electric_power_model_0023
0100680024 electric_power_model_0024
0100680025 electric_power_model_0025
0100680026 electric_power_model_0026
0100680027 electric_power_model_0027
0100680028 electric_power_model_0028
0100680029 electric_power_model_0029
0100680030 electric_power_model_0030

# DOMAIN 0069 water
0100690001 water_model_0001
0100690002 water_model_0002
0100690003 water_model_0003
0100690004 water_model_0004
0100690005 water_model_0005
0100690006 water_model_0006
0100690007 water_model_0007
0100690008 water_model_0008
0100690009 water_model_0009
0100690010 water_model_0010
0100690011 water_model_0011
0100690012 water_model_0012
0100690013 water_model_0013
0100690014 water_model_0014
0100690015 water_model_0015
0100690016 water_model_0016
0100690017 water_model_0017
0100690018 water_model_0018
0100690019 water_model_0019
0100690020 water_model_0020
0100690021 water_model_0021
0100690022 water_model_0022
0100690023 water_model_0023
0100690024 water_model_0024
0100690025 water_model_0025
0100690026 water_model_0026
0100690027 water_model_0027
0100690028 water_model_0028
0100690029 water_model_0029
0100690030 water_model_0030

# DOMAIN 0070 environment
0100700001 environment_model_0001
0100700002 environment_model_0002
0100700003 environment_model_0003
0100700004 environment_model_0004
0100700005 environment_model_0005
0100700006 environment_model_0006
0100700007 environment_model_0007
0100700008 environment_model_0008
0100700009 environment_model_0009
0100700010 environment_model_0010
0100700011 environment_model_0011
0100700012 environment_model_0012
0100700013 environment_model_0013
0100700014 environment_model_0014
0100700015 environment_model_0015
0100700016 environment_model_0016
0100700017 environment_model_0017
0100700018 environment_model_0018
0100700019 environment_model_0019
0100700020 environment_model_0020
0100700021 environment_model_0021
0100700022 environment_model_0022
0100700023 environment_model_0023
0100700024 environment_model_0024
0100700025 environment_model_0025
0100700026 environment_model_0026
0100700027 environment_model_0027
0100700028 environment_model_0028
0100700029 environment_model_0029
0100700030 environment_model_0030

# DOMAIN 0071 climate
0100710001 climate_model_0001
0100710002 climate_model_0002
0100710003 climate_model_0003
0100710004 climate_model_0004
0100710005 climate_model_0005
0100710006 climate_model_0006
0100710007 climate_model_0007
0100710008 climate_model_0008
0100710009 climate_model_0009
0100710010 climate_model_0010
0100710011 climate_model_0011
0100710012 climate_model_0012
0100710013 climate_model_0013
0100710014 climate_model_0014
0100710015 climate_model_0015
0100710016 climate_model_0016
0100710017 climate_model_0017
0100710018 climate_model_0018
0100710019 climate_model_0019
0100710020 climate_model_0020
0100710021 climate_model_0021
0100710022 climate_model_0022
0100710023 climate_model_0023
0100710024 climate_model_0024
0100710025 climate_model_0025
0100710026 climate_model_0026
0100710027 climate_model_0027
0100710028 climate_model_0028
0100710029 climate_model_0029
0100710030 climate_model_0030

# DOMAIN 0072 disaster_management
0100720001 disaster_management_model_0001
0100720002 disaster_management_model_0002
0100720003 disaster_management_model_0003
0100720004 disaster_management_model_0004
0100720005 disaster_management_model_0005
0100720006 disaster_management_model_0006
0100720007 disaster_management_model_0007
0100720008 disaster_management_model_0008
0100720009 disaster_management_model_0009
0100720010 disaster_management_model_0010
0100720011 disaster_management_model_0011
0100720012 disaster_management_model_0012
0100720013 disaster_management_model_0013
0100720014 disaster_management_model_0014
0100720015 disaster_management_model_0015
0100720016 disaster_management_model_0016
0100720017 disaster_management_model_0017
0100720018 disaster_management_model_0018
0100720019 disaster_management_model_0019
0100720020 disaster_management_model_0020
0100720021 disaster_management_model_0021
0100720022 disaster_management_model_0022
0100720023 disaster_management_model_0023
0100720024 disaster_management_model_0024
0100720025 disaster_management_model_0025
0100720026 disaster_management_model_0026
0100720027 disaster_management_model_0027
0100720028 disaster_management_model_0028
0100720029 disaster_management_model_0029
0100720030 disaster_management_model_0030

# DOMAIN 0073 urban
0100730001 urban_model_0001
0100730002 urban_model_0002
0100730003 urban_model_0003
0100730004 urban_model_0004
0100730005 urban_model_0005
0100730006 urban_model_0006
0100730007 urban_model_0007
0100730008 urban_model_0008
0100730009 urban_model_0009
0100730010 urban_model_0010
0100730011 urban_model_0011
0100730012 urban_model_0012
0100730013 urban_model_0013
0100730014 urban_model_0014
0100730015 urban_model_0015
0100730016 urban_model_0016
0100730017 urban_model_0017
0100730018 urban_model_0018
0100730019 urban_model_0019
0100730020 urban_model_0020
0100730021 urban_model_0021
0100730022 urban_model_0022
0100730023 urban_model_0023
0100730024 urban_model_0024
0100730025 urban_model_0025
0100730026 urban_model_0026
0100730027 urban_model_0027
0100730028 urban_model_0028
0100730029 urban_model_0029
0100730030 urban_model_0030

# DOMAIN 0074 rural
0100740001 rural_model_0001
0100740002 rural_model_0002
0100740003 rural_model_0003
0100740004 rural_model_0004
0100740005 rural_model_0005
0100740006 rural_model_0006
0100740007 rural_model_0007
0100740008 rural_model_0008
0100740009 rural_model_0009
0100740010 rural_model_0010
0100740011 rural_model_0011
0100740012 rural_model_0012
0100740013 rural_model_0013
0100740014 rural_model_0014
0100740015 rural_model_0015
0100740016 rural_model_0016
0100740017 rural_model_0017
0100740018 rural_model_0018
0100740019 rural_model_0019
0100740020 rural_model_0020
0100740021 rural_model_0021
0100740022 rural_model_0022
0100740023 rural_model_0023
0100740024 rural_model_0024
0100740025 rural_model_0025
0100740026 rural_model_0026
0100740027 rural_model_0027
0100740028 rural_model_0028
0100740029 rural_model_0029
0100740030 rural_model_0030

# DOMAIN 0075 education
0100750001 education_model_0001
0100750002 education_model_0002
0100750003 education_model_0003
0100750004 education_model_0004
0100750005 education_model_0005
0100750006 education_model_0006
0100750007 education_model_0007
0100750008 education_model_0008
0100750009 education_model_0009
0100750010 education_model_0010
0100750011 education_model_0011
0100750012 education_model_0012
0100750013 education_model_0013
0100750014 education_model_0014
0100750015 education_model_0015
0100750016 education_model_0016
0100750017 education_model_0017
0100750018 education_model_0018
0100750019 education_model_0019
0100750020 education_model_0020
0100750021 education_model_0021
0100750022 education_model_0022
0100750023 education_model_0023
0100750024 education_model_0024
0100750025 education_model_0025
0100750026 education_model_0026
0100750027 education_model_0027
0100750028 education_model_0028
0100750029 education_model_0029
0100750030 education_model_0030

# DOMAIN 0076 research_university
0100760001 research_university_model_0001
0100760002 research_university_model_0002
0100760003 research_university_model_0003
0100760004 research_university_model_0004
0100760005 research_university_model_0005
0100760006 research_university_model_0006
0100760007 research_university_model_0007
0100760008 research_university_model_0008
0100760009 research_university_model_0009
0100760010 research_university_model_0010
0100760011 research_university_model_0011
0100760012 research_university_model_0012
0100760013 research_university_model_0013
0100760014 research_university_model_0014
0100760015 research_university_model_0015
0100760016 research_university_model_0016
0100760017 research_university_model_0017
0100760018 research_university_model_0018
0100760019 research_university_model_0019
0100760020 research_university_model_0020
0100760021 research_university_model_0021
0100760022 research_university_model_0022
0100760023 research_university_model_0023
0100760024 research_university_model_0024
0100760025 research_university_model_0025
0100760026 research_university_model_0026
0100760027 research_university_model_0027
0100760028 research_university_model_0028
0100760029 research_university_model_0029
0100760030 research_university_model_0030

# DOMAIN 0077 research_funding
0100770001 research_funding_model_0001
0100770002 research_funding_model_0002
0100770003 research_funding_model_0003
0100770004 research_funding_model_0004
0100770005 research_funding_model_0005
0100770006 research_funding_model_0006
0100770007 research_funding_model_0007
0100770008 research_funding_model_0008
0100770009 research_funding_model_0009
0100770010 research_funding_model_0010
0100770011 research_funding_model_0011
0100770012 research_funding_model_0012
0100770013 research_funding_model_0013
0100770014 research_funding_model_0014
0100770015 research_funding_model_0015
0100770016 research_funding_model_0016
0100770017 research_funding_model_0017
0100770018 research_funding_model_0018
0100770019 research_funding_model_0019
0100770020 research_funding_model_0020
0100770021 research_funding_model_0021
0100770022 research_funding_model_0022
0100770023 research_funding_model_0023
0100770024 research_funding_model_0024
0100770025 research_funding_model_0025
0100770026 research_funding_model_0026
0100770027 research_funding_model_0027
0100770028 research_funding_model_0028
0100770029 research_funding_model_0029
0100770030 research_funding_model_0030

# DOMAIN 0078 science
0100780001 science_model_0001
0100780002 science_model_0002
0100780003 science_model_0003
0100780004 science_model_0004
0100780005 science_model_0005
0100780006 science_model_0006
0100780007 science_model_0007
0100780008 science_model_0008
0100780009 science_model_0009
0100780010 science_model_0010
0100780011 science_model_0011
0100780012 science_model_0012
0100780013 science_model_0013
0100780014 science_model_0014
0100780015 science_model_0015
0100780016 science_model_0016
0100780017 science_model_0017
0100780018 science_model_0018
0100780019 science_model_0019
0100780020 science_model_0020
0100780021 science_model_0021
0100780022 science_model_0022
0100780023 science_model_0023
0100780024 science_model_0024
0100780025 science_model_0025
0100780026 science_model_0026
0100780027 science_model_0027
0100780028 science_model_0028
0100780029 science_model_0029
0100780030 science_model_0030

# DOMAIN 0079 technology
0100790001 technology_model_0001
0100790002 technology_model_0002
0100790003 technology_model_0003
0100790004 technology_model_0004
0100790005 technology_model_0005
0100790006 technology_model_0006
0100790007 technology_model_0007
0100790008 technology_model_0008
0100790009 technology_model_0009
0100790010 technology_model_0010
0100790011 technology_model_0011
0100790012 technology_model_0012
0100790013 technology_model_0013
0100790014 technology_model_0014
0100790015 technology_model_0015
0100790016 technology_model_0016
0100790017 technology_model_0017
0100790018 technology_model_0018
0100790019 technology_model_0019
0100790020 technology_model_0020
0100790021 technology_model_0021
0100790022 technology_model_0022
0100790023 technology_model_0023
0100790024 technology_model_0024
0100790025 technology_model_0025
0100790026 technology_model_0026
0100790027 technology_model_0027
0100790028 technology_model_0028
0100790029 technology_model_0029
0100790030 technology_model_0030

# DOMAIN 0080 innovation
0100800001 innovation_model_0001
0100800002 innovation_model_0002
0100800003 innovation_model_0003
0100800004 innovation_model_0004
0100800005 innovation_model_0005
0100800006 innovation_model_0006
0100800007 innovation_model_0007
0100800008 innovation_model_0008
0100800009 innovation_model_0009
0100800010 innovation_model_0010
0100800011 innovation_model_0011
0100800012 innovation_model_0012
0100800013 innovation_model_0013
0100800014 innovation_model_0014
0100800015 innovation_model_0015
0100800016 innovation_model_0016
0100800017 innovation_model_0017
0100800018 innovation_model_0018
0100800019 innovation_model_0019
0100800020 innovation_model_0020
0100800021 innovation_model_0021
0100800022 innovation_model_0022
0100800023 innovation_model_0023
0100800024 innovation_model_0024
0100800025 innovation_model_0025
0100800026 innovation_model_0026
0100800027 innovation_model_0027
0100800028 innovation_model_0028
0100800029 innovation_model_0029
0100800030 innovation_model_0030

# DOMAIN 0081 data
0100810001 data_model_0001
0100810002 data_model_0002
0100810003 data_model_0003
0100810004 data_model_0004
0100810005 data_model_0005
0100810006 data_model_0006
0100810007 data_model_0007
0100810008 data_model_0008
0100810009 data_model_0009
0100810010 data_model_0010
0100810011 data_model_0011
0100810012 data_model_0012
0100810013 data_model_0013
0100810014 data_model_0014
0100810015 data_model_0015
0100810016 data_model_0016
0100810017 data_model_0017
0100810018 data_model_0018
0100810019 data_model_0019
0100810020 data_model_0020
0100810021 data_model_0021
0100810022 data_model_0022
0100810023 data_model_0023
0100810024 data_model_0024
0100810025 data_model_0025
0100810026 data_model_0026
0100810027 data_model_0027
0100810028 data_model_0028
0100810029 data_model_0029
0100810030 data_model_0030

# DOMAIN 0082 ai
0100820001 ai_model_0001
0100820002 ai_model_0002
0100820003 ai_model_0003
0100820004 ai_model_0004
0100820005 ai_model_0005
0100820006 ai_model_0006
0100820007 ai_model_0007
0100820008 ai_model_0008
0100820009 ai_model_0009
0100820010 ai_model_0010
0100820011 ai_model_0011
0100820012 ai_model_0012
0100820013 ai_model_0013
0100820014 ai_model_0014
0100820015 ai_model_0015
0100820016 ai_model_0016
0100820017 ai_model_0017
0100820018 ai_model_0018
0100820019 ai_model_0019
0100820020 ai_model_0020
0100820021 ai_model_0021
0100820022 ai_model_0022
0100820023 ai_model_0023
0100820024 ai_model_0024
0100820025 ai_model_0025
0100820026 ai_model_0026
0100820027 ai_model_0027
0100820028 ai_model_0028
0100820029 ai_model_0029
0100820030 ai_model_0030

# DOMAIN 0083 cybersecurity
0100830001 cybersecurity_model_0001
0100830002 cybersecurity_model_0002
0100830003 cybersecurity_model_0003
0100830004 cybersecurity_model_0004
0100830005 cybersecurity_model_0005
0100830006 cybersecurity_model_0006
0100830007 cybersecurity_model_0007
0100830008 cybersecurity_model_0008
0100830009 cybersecurity_model_0009
0100830010 cybersecurity_model_0010
0100830011 cybersecurity_model_0011
0100830012 cybersecurity_model_0012
0100830013 cybersecurity_model_0013
0100830014 cybersecurity_model_0014
0100830015 cybersecurity_model_0015
0100830016 cybersecurity_model_0016
0100830017 cybersecurity_model_0017
0100830018 cybersecurity_model_0018
0100830019 cybersecurity_model_0019
0100830020 cybersecurity_model_0020
0100830021 cybersecurity_model_0021
0100830022 cybersecurity_model_0022
0100830023 cybersecurity_model_0023
0100830024 cybersecurity_model_0024
0100830025 cybersecurity_model_0025
0100830026 cybersecurity_model_0026
0100830027 cybersecurity_model_0027
0100830028 cybersecurity_model_0028
0100830029 cybersecurity_model_0029
0100830030 cybersecurity_model_0030

# DOMAIN 0084 communications
0100840001 communications_model_0001
0100840002 communications_model_0002
0100840003 communications_model_0003
0100840004 communications_model_0004
0100840005 communications_model_0005
0100840006 communications_model_0006
0100840007 communications_model_0007
0100840008 communications_model_0008
0100840009 communications_model_0009
0100840010 communications_model_0010
0100840011 communications_model_0011
0100840012 communications_model_0012
0100840013 communications_model_0013
0100840014 communications_model_0014
0100840015 communications_model_0015
0100840016 communications_model_0016
0100840017 communications_model_0017
0100840018 communications_model_0018
0100840019 communications_model_0019
0100840020 communications_model_0020
0100840021 communications_model_0021
0100840022 communications_model_0022
0100840023 communications_model_0023
0100840024 communications_model_0024
0100840025 communications_model_0025
0100840026 communications_model_0026
0100840027 communications_model_0027
0100840028 communications_model_0028
0100840029 communications_model_0029
0100840030 communications_model_0030

# DOMAIN 0085 telecom
0100850001 telecom_model_0001
0100850002 telecom_model_0002
0100850003 telecom_model_0003
0100850004 telecom_model_0004
0100850005 telecom_model_0005
0100850006 telecom_model_0006
0100850007 telecom_model_0007
0100850008 telecom_model_0008
0100850009 telecom_model_0009
0100850010 telecom_model_0010
0100850011 telecom_model_0011
0100850012 telecom_model_0012
0100850013 telecom_model_0013
0100850014 telecom_model_0014
0100850015 telecom_model_0015
0100850016 telecom_model_0016
0100850017 telecom_model_0017
0100850018 telecom_model_0018
0100850019 telecom_model_0019
0100850020 telecom_model_0020
0100850021 telecom_model_0021
0100850022 telecom_model_0022
0100850023 telecom_model_0023
0100850024 telecom_model_0024
0100850025 telecom_model_0025
0100850026 telecom_model_0026
0100850027 telecom_model_0027
0100850028 telecom_model_0028
0100850029 telecom_model_0029
0100850030 telecom_model_0030

# DOMAIN 0086 internet
0100860001 internet_model_0001
0100860002 internet_model_0002
0100860003 internet_model_0003
0100860004 internet_model_0004
0100860005 internet_model_0005
0100860006 internet_model_0006
0100860007 internet_model_0007
0100860008 internet_model_0008
0100860009 internet_model_0009
0100860010 internet_model_0010
0100860011 internet_model_0011
0100860012 internet_model_0012
0100860013 internet_model_0013
0100860014 internet_model_0014
0100860015 internet_model_0015
0100860016 internet_model_0016
0100860017 internet_model_0017
0100860018 internet_model_0018
0100860019 internet_model_0019
0100860020 internet_model_0020
0100860021 internet_model_0021
0100860022 internet_model_0022
0100860023 internet_model_0023
0100860024 internet_model_0024
0100860025 internet_model_0025
0100860026 internet_model_0026
0100860027 internet_model_0027
0100860028 internet_model_0028
0100860029 internet_model_0029
0100860030 internet_model_0030

# DOMAIN 0087 space
0100870001 space_model_0001
0100870002 space_model_0002
0100870003 space_model_0003
0100870004 space_model_0004
0100870005 space_model_0005
0100870006 space_model_0006
0100870007 space_model_0007
0100870008 space_model_0008
0100870009 space_model_0009
0100870010 space_model_0010
0100870011 space_model_0011
0100870012 space_model_0012
0100870013 space_model_0013
0100870014 space_model_0014
0100870015 space_model_0015
0100870016 space_model_0016
0100870017 space_model_0017
0100870018 space_model_0018
0100870019 space_model_0019
0100870020 space_model_0020
0100870021 space_model_0021
0100870022 space_model_0022
0100870023 space_model_0023
0100870024 space_model_0024
0100870025 space_model_0025
0100870026 space_model_0026
0100870027 space_model_0027
0100870028 space_model_0028
0100870029 space_model_0029
0100870030 space_model_0030

# DOMAIN 0088 space_economy
0100880001 space_economy_model_0001
0100880002 space_economy_model_0002
0100880003 space_economy_model_0003
0100880004 space_economy_model_0004
0100880005 space_economy_model_0005
0100880006 space_economy_model_0006
0100880007 space_economy_model_0007
0100880008 space_economy_model_0008
0100880009 space_economy_model_0009
0100880010 space_economy_model_0010
0100880011 space_economy_model_0011
0100880012 space_economy_model_0012
0100880013 space_economy_model_0013
0100880014 space_economy_model_0014
0100880015 space_economy_model_0015
0100880016 space_economy_model_0016
0100880017 space_economy_model_0017
0100880018 space_economy_model_0018
0100880019 space_economy_model_0019
0100880020 space_economy_model_0020
0100880021 space_economy_model_0021
0100880022 space_economy_model_0022
0100880023 space_economy_model_0023
0100880024 space_economy_model_0024
0100880025 space_economy_model_0025
0100880026 space_economy_model_0026
0100880027 space_economy_model_0027
0100880028 space_economy_model_0028
0100880029 space_economy_model_0029
0100880030 space_economy_model_0030

# DOMAIN 0089 bioeconomy
0100890001 bioeconomy_model_0001
0100890002 bioeconomy_model_0002
0100890003 bioeconomy_model_0003
0100890004 bioeconomy_model_0004
0100890005 bioeconomy_model_0005
0100890006 bioeconomy_model_0006
0100890007 bioeconomy_model_0007
0100890008 bioeconomy_model_0008
0100890009 bioeconomy_model_0009
0100890010 bioeconomy_model_0010
0100890011 bioeconomy_model_0011
0100890012 bioeconomy_model_0012
0100890013 bioeconomy_model_0013
0100890014 bioeconomy_model_0014
0100890015 bioeconomy_model_0015
0100890016 bioeconomy_model_0016
0100890017 bioeconomy_model_0017
0100890018 bioeconomy_model_0018
0100890019 bioeconomy_model_0019
0100890020 bioeconomy_model_0020
0100890021 bioeconomy_model_0021
0100890022 bioeconomy_model_0022
0100890023 bioeconomy_model_0023
0100890024 bioeconomy_model_0024
0100890025 bioeconomy_model_0025
0100890026 bioeconomy_model_0026
0100890027 bioeconomy_model_0027
0100890028 bioeconomy_model_0028
0100890029 bioeconomy_model_0029
0100890030 bioeconomy_model_0030

# DOMAIN 0090 healthcare
0100900001 healthcare_model_0001
0100900002 healthcare_model_0002
0100900003 healthcare_model_0003
0100900004 healthcare_model_0004
0100900005 healthcare_model_0005
0100900006 healthcare_model_0006
0100900007 healthcare_model_0007
0100900008 healthcare_model_0008
0100900009 healthcare_model_0009
0100900010 healthcare_model_0010
0100900011 healthcare_model_0011
0100900012 healthcare_model_0012
0100900013 healthcare_model_0013
0100900014 healthcare_model_0014
0100900015 healthcare_model_0015
0100900016 healthcare_model_0016
0100900017 healthcare_model_0017
0100900018 healthcare_model_0018
0100900019 healthcare_model_0019
0100900020 healthcare_model_0020
0100900021 healthcare_model_0021
0100900022 healthcare_model_0022
0100900023 healthcare_model_0023
0100900024 healthcare_model_0024
0100900025 healthcare_model_0025
0100900026 healthcare_model_0026
0100900027 healthcare_model_0027
0100900028 healthcare_model_0028
0100900029 healthcare_model_0029
0100900030 healthcare_model_0030

# DOMAIN 0091 public_health
0100910001 public_health_model_0001
0100910002 public_health_model_0002
0100910003 public_health_model_0003
0100910004 public_health_model_0004
0100910005 public_health_model_0005
0100910006 public_health_model_0006
0100910007 public_health_model_0007
0100910008 public_health_model_0008
0100910009 public_health_model_0009
0100910010 public_health_model_0010
0100910011 public_health_model_0011
0100910012 public_health_model_0012
0100910013 public_health_model_0013
0100910014 public_health_model_0014
0100910015 public_health_model_0015
0100910016 public_health_model_0016
0100910017 public_health_model_0017
0100910018 public_health_model_0018
0100910019 public_health_model_0019
0100910020 public_health_model_0020
0100910021 public_health_model_0021
0100910022 public_health_model_0022
0100910023 public_health_model_0023
0100910024 public_health_model_0024
0100910025 public_health_model_0025
0100910026 public_health_model_0026
0100910027 public_health_model_0027
0100910028 public_health_model_0028
0100910029 public_health_model_0029
0100910030 public_health_model_0030

# DOMAIN 0092 social_welfare
0100920001 social_welfare_model_0001
0100920002 social_welfare_model_0002
0100920003 social_welfare_model_0003
0100920004 social_welfare_model_0004
0100920005 social_welfare_model_0005
0100920006 social_welfare_model_0006
0100920007 social_welfare_model_0007
0100920008 social_welfare_model_0008
0100920009 social_welfare_model_0009
0100920010 social_welfare_model_0010
0100920011 social_welfare_model_0011
0100920012 social_welfare_model_0012
0100920013 social_welfare_model_0013
0100920014 social_welfare_model_0014
0100920015 social_welfare_model_0015
0100920016 social_welfare_model_0016
0100920017 social_welfare_model_0017
0100920018 social_welfare_model_0018
0100920019 social_welfare_model_0019
0100920020 social_welfare_model_0020
0100920021 social_welfare_model_0021
0100920022 social_welfare_model_0022
0100920023 social_welfare_model_0023
0100920024 social_welfare_model_0024
0100920025 social_welfare_model_0025
0100920026 social_welfare_model_0026
0100920027 social_welfare_model_0027
0100920028 social_welfare_model_0028
0100920029 social_welfare_model_0029
0100920030 social_welfare_model_0030

# DOMAIN 0093 housing
0100930001 housing_model_0001
0100930002 housing_model_0002
0100930003 housing_model_0003
0100930004 housing_model_0004
0100930005 housing_model_0005
0100930006 housing_model_0006
0100930007 housing_model_0007
0100930008 housing_model_0008
0100930009 housing_model_0009
0100930010 housing_model_0010
0100930011 housing_model_0011
0100930012 housing_model_0012
0100930013 housing_model_0013
0100930014 housing_model_0014
0100930015 housing_model_0015
0100930016 housing_model_0016
0100930017 housing_model_0017
0100930018 housing_model_0018
0100930019 housing_model_0019
0100930020 housing_model_0020
0100930021 housing_model_0021
0100930022 housing_model_0022
0100930023 housing_model_0023
0100930024 housing_model_0024
0100930025 housing_model_0025
0100930026 housing_model_0026
0100930027 housing_model_0027
0100930028 housing_model_0028
0100930029 housing_model_0029
0100930030 housing_model_0030

# DOMAIN 0094 religion
0100940001 religion_model_0001
0100940002 religion_model_0002
0100940003 religion_model_0003
0100940004 religion_model_0004
0100940005 religion_model_0005
0100940006 religion_model_0006
0100940007 religion_model_0007
0100940008 religion_model_0008
0100940009 religion_model_0009
0100940010 religion_model_0010
0100940011 religion_model_0011
0100940012 religion_model_0012
0100940013 religion_model_0013
0100940014 religion_model_0014
0100940015 religion_model_0015
0100940016 religion_model_0016
0100940017 religion_model_0017
0100940018 religion_model_0018
0100940019 religion_model_0019
0100940020 religion_model_0020
0100940021 religion_model_0021
0100940022 religion_model_0022
0100940023 religion_model_0023
0100940024 religion_model_0024
0100940025 religion_model_0025
0100940026 religion_model_0026
0100940027 religion_model_0027
0100940028 religion_model_0028
0100940029 religion_model_0029
0100940030 religion_model_0030

# DOMAIN 0095 civil_society
0100950001 civil_society_model_0001
0100950002 civil_society_model_0002
0100950003 civil_society_model_0003
0100950004 civil_society_model_0004
0100950005 civil_society_model_0005
0100950006 civil_society_model_0006
0100950007 civil_society_model_0007
0100950008 civil_society_model_0008
0100950009 civil_society_model_0009
0100950010 civil_society_model_0010
0100950011 civil_society_model_0011
0100950012 civil_society_model_0012
0100950013 civil_society_model_0013
0100950014 civil_society_model_0014
0100950015 civil_society_model_0015
0100950016 civil_society_model_0016
0100950017 civil_society_model_0017
0100950018 civil_society_model_0018
0100950019 civil_society_model_0019
0100950020 civil_society_model_0020
0100950021 civil_society_model_0021
0100950022 civil_society_model_0022
0100950023 civil_society_model_0023
0100950024 civil_society_model_0024
0100950025 civil_society_model_0025
0100950026 civil_society_model_0026
0100950027 civil_society_model_0027
0100950028 civil_society_model_0028
0100950029 civil_society_model_0029
0100950030 civil_society_model_0030

# DOMAIN 0096 media
0100960001 media_model_0001
0100960002 media_model_0002
0100960003 media_model_0003
0100960004 media_model_0004
0100960005 media_model_0005
0100960006 media_model_0006
0100960007 media_model_0007
0100960008 media_model_0008
0100960009 media_model_0009
0100960010 media_model_0010
0100960011 media_model_0011
0100960012 media_model_0012
0100960013 media_model_0013
0100960014 media_model_0014
0100960015 media_model_0015
0100960016 media_model_0016
0100960017 media_model_0017
0100960018 media_model_0018
0100960019 media_model_0019
0100960020 media_model_0020
0100960021 media_model_0021
0100960022 media_model_0022
0100960023 media_model_0023
0100960024 media_model_0024
0100960025 media_model_0025
0100960026 media_model_0026
0100960027 media_model_0027
0100960028 media_model_0028
0100960029 media_model_0029
0100960030 media_model_0030

# DOMAIN 0097 culture
0100970001 culture_model_0001
0100970002 culture_model_0002
0100970003 culture_model_0003
0100970004 culture_model_0004
0100970005 culture_model_0005
0100970006 culture_model_0006
0100970007 culture_model_0007
0100970008 culture_model_0008
0100970009 culture_model_0009
0100970010 culture_model_0010
0100970011 culture_model_0011
0100970012 culture_model_0012
0100970013 culture_model_0013
0100970014 culture_model_0014
0100970015 culture_model_0015
0100970016 culture_model_0016
0100970017 culture_model_0017
0100970018 culture_model_0018
0100970019 culture_model_0019
0100970020 culture_model_0020
0100970021 culture_model_0021
0100970022 culture_model_0022
0100970023 culture_model_0023
0100970024 culture_model_0024
0100970025 culture_model_0025
0100970026 culture_model_0026
0100970027 culture_model_0027
0100970028 culture_model_0028
0100970029 culture_model_0029
0100970030 culture_model_0030

# DOMAIN 0098 entertainment
0100980001 entertainment_model_0001
0100980002 entertainment_model_0002
0100980003 entertainment_model_0003
0100980004 entertainment_model_0004
0100980005 entertainment_model_0005
0100980006 entertainment_model_0006
0100980007 entertainment_model_0007
0100980008 entertainment_model_0008
0100980009 entertainment_model_0009
0100980010 entertainment_model_0010
0100980011 entertainment_model_0011
0100980012 entertainment_model_0012
0100980013 entertainment_model_0013
0100980014 entertainment_model_0014
0100980015 entertainment_model_0015
0100980016 entertainment_model_0016
0100980017 entertainment_model_0017
0100980018 entertainment_model_0018
0100980019 entertainment_model_0019
0100980020 entertainment_model_0020
0100980021 entertainment_model_0021
0100980022 entertainment_model_0022
0100980023 entertainment_model_0023
0100980024 entertainment_model_0024
0100980025 entertainment_model_0025
0100980026 entertainment_model_0026
0100980027 entertainment_model_0027
0100980028 entertainment_model_0028
0100980029 entertainment_model_0029
0100980030 entertainment_model_0030

# DOMAIN 0099 sports
0100990001 sports_model_0001
0100990002 sports_model_0002
0100990003 sports_model_0003
0100990004 sports_model_0004
0100990005 sports_model_0005
0100990006 sports_model_0006
0100990007 sports_model_0007
0100990008 sports_model_0008
0100990009 sports_model_0009
0100990010 sports_model_0010
0100990011 sports_model_0011
0100990012 sports_model_0012
0100990013 sports_model_0013
0100990014 sports_model_0014
0100990015 sports_model_0015
0100990016 sports_model_0016
0100990017 sports_model_0017
0100990018 sports_model_0018
0100990019 sports_model_0019
0100990020 sports_model_0020
0100990021 sports_model_0021
0100990022 sports_model_0022
0100990023 sports_model_0023
0100990024 sports_model_0024
0100990025 sports_model_0025
0100990026 sports_model_0026
0100990027 sports_model_0027
0100990028 sports_model_0028
0100990029 sports_model_0029
0100990030 sports_model_0030

# DOMAIN 0100 tourism
0101000001 tourism_model_0001
0101000002 tourism_model_0002
0101000003 tourism_model_0003
0101000004 tourism_model_0004
0101000005 tourism_model_0005
0101000006 tourism_model_0006
0101000007 tourism_model_0007
0101000008 tourism_model_0008
0101000009 tourism_model_0009
0101000010 tourism_model_0010
0101000011 tourism_model_0011
0101000012 tourism_model_0012
0101000013 tourism_model_0013
0101000014 tourism_model_0014
0101000015 tourism_model_0015
0101000016 tourism_model_0016
0101000017 tourism_model_0017
0101000018 tourism_model_0018
0101000019 tourism_model_0019
0101000020 tourism_model_0020
0101000021 tourism_model_0021
0101000022 tourism_model_0022
0101000023 tourism_model_0023
0101000024 tourism_model_0024
0101000025 tourism_model_0025
0101000026 tourism_model_0026
0101000027 tourism_model_0027
0101000028 tourism_model_0028
0101000029 tourism_model_0029
0101000030 tourism_model_0030

# DOMAIN 0101 hospitality
0101010001 hospitality_model_0001
0101010002 hospitality_model_0002
0101010003 hospitality_model_0003
0101010004 hospitality_model_0004
0101010005 hospitality_model_0005
0101010006 hospitality_model_0006
0101010007 hospitality_model_0007
0101010008 hospitality_model_0008
0101010009 hospitality_model_0009
0101010010 hospitality_model_0010
0101010011 hospitality_model_0011
0101010012 hospitality_model_0012
0101010013 hospitality_model_0013
0101010014 hospitality_model_0014
0101010015 hospitality_model_0015
0101010016 hospitality_model_0016
0101010017 hospitality_model_0017
0101010018 hospitality_model_0018
0101010019 hospitality_model_0019
0101010020 hospitality_model_0020
0101010021 hospitality_model_0021
0101010022 hospitality_model_0022
0101010023 hospitality_model_0023
0101010024 hospitality_model_0024
0101010025 hospitality_model_0025
0101010026 hospitality_model_0026
0101010027 hospitality_model_0027
0101010028 hospitality_model_0028
0101010029 hospitality_model_0029
0101010030 hospitality_model_0030

# DOMAIN 0102 natural_resources
0101020001 natural_resources_model_0001
0101020002 natural_resources_model_0002
0101020003 natural_resources_model_0003
0101020004 natural_resources_model_0004
0101020005 natural_resources_model_0005
0101020006 natural_resources_model_0006
0101020007 natural_resources_model_0007
0101020008 natural_resources_model_0008
0101020009 natural_resources_model_0009
0101020010 natural_resources_model_0010
0101020011 natural_resources_model_0011
0101020012 natural_resources_model_0012
0101020013 natural_resources_model_0013
0101020014 natural_resources_model_0014
0101020015 natural_resources_model_0015
0101020016 natural_resources_model_0016
0101020017 natural_resources_model_0017
0101020018 natural_resources_model_0018
0101020019 natural_resources_model_0019
0101020020 natural_resources_model_0020
0101020021 natural_resources_model_0021
0101020022 natural_resources_model_0022
0101020023 natural_resources_model_0023
0101020024 natural_resources_model_0024
0101020025 natural_resources_model_0025
0101020026 natural_resources_model_0026
0101020027 natural_resources_model_0027
0101020028 natural_resources_model_0028
0101020029 natural_resources_model_0029
0101020030 natural_resources_model_0030

# DOMAIN 0103 circular_economy
0101030001 circular_economy_model_0001
0101030002 circular_economy_model_0002
0101030003 circular_economy_model_0003
0101030004 circular_economy_model_0004
0101030005 circular_economy_model_0005
0101030006 circular_economy_model_0006
0101030007 circular_economy_model_0007
0101030008 circular_economy_model_0008
0101030009 circular_economy_model_0009
0101030010 circular_economy_model_0010
0101030011 circular_economy_model_0011
0101030012 circular_economy_model_0012
0101030013 circular_economy_model_0013
0101030014 circular_economy_model_0014
0101030015 circular_economy_model_0015
0101030016 circular_economy_model_0016
0101030017 circular_economy_model_0017
0101030018 circular_economy_model_0018
0101030019 circular_economy_model_0019
0101030020 circular_economy_model_0020
0101030021 circular_economy_model_0021
0101030022 circular_economy_model_0022
0101030023 circular_economy_model_0023
0101030024 circular_economy_model_0024
0101030025 circular_economy_model_0025
0101030026 circular_economy_model_0026
0101030027 circular_economy_model_0027
0101030028 circular_economy_model_0028
0101030029 circular_economy_model_0029
0101030030 circular_economy_model_0030

# DOMAIN 0104 marine
0101040001 marine_model_0001
0101040002 marine_model_0002
0101040003 marine_model_0003
0101040004 marine_model_0004
0101040005 marine_model_0005
0101040006 marine_model_0006
0101040007 marine_model_0007
0101040008 marine_model_0008
0101040009 marine_model_0009
0101040010 marine_model_0010
0101040011 marine_model_0011
0101040012 marine_model_0012
0101040013 marine_model_0013
0101040014 marine_model_0014
0101040015 marine_model_0015
0101040016 marine_model_0016
0101040017 marine_model_0017
0101040018 marine_model_0018
0101040019 marine_model_0019
0101040020 marine_model_0020
0101040021 marine_model_0021
0101040022 marine_model_0022
0101040023 marine_model_0023
0101040024 marine_model_0024
0101040025 marine_model_0025
0101040026 marine_model_0026
0101040027 marine_model_0027
0101040028 marine_model_0028
0101040029 marine_model_0029
0101040030 marine_model_0030

# DOMAIN 0105 ocean_trade
0101050001 ocean_trade_model_0001
0101050002 ocean_trade_model_0002
0101050003 ocean_trade_model_0003
0101050004 ocean_trade_model_0004
0101050005 ocean_trade_model_0005
0101050006 ocean_trade_model_0006
0101050007 ocean_trade_model_0007
0101050008 ocean_trade_model_0008
0101050009 ocean_trade_model_0009
0101050010 ocean_trade_model_0010
0101050011 ocean_trade_model_0011
0101050012 ocean_trade_model_0012
0101050013 ocean_trade_model_0013
0101050014 ocean_trade_model_0014
0101050015 ocean_trade_model_0015
0101050016 ocean_trade_model_0016
0101050017 ocean_trade_model_0017
0101050018 ocean_trade_model_0018
0101050019 ocean_trade_model_0019
0101050020 ocean_trade_model_0020
0101050021 ocean_trade_model_0021
0101050022 ocean_trade_model_0022
0101050023 ocean_trade_model_0023
0101050024 ocean_trade_model_0024
0101050025 ocean_trade_model_0025
0101050026 ocean_trade_model_0026
0101050027 ocean_trade_model_0027
0101050028 ocean_trade_model_0028
0101050029 ocean_trade_model_0029
0101050030 ocean_trade_model_0030

# DOMAIN 0106 platform_economy
0101060001 platform_economy_model_0001
0101060002 platform_economy_model_0002
0101060003 platform_economy_model_0003
0101060004 platform_economy_model_0004
0101060005 platform_economy_model_0005
0101060006 platform_economy_model_0006
0101060007 platform_economy_model_0007
0101060008 platform_economy_model_0008
0101060009 platform_economy_model_0009
0101060010 platform_economy_model_0010
0101060011 platform_economy_model_0011
0101060012 platform_economy_model_0012
0101060013 platform_economy_model_0013
0101060014 platform_economy_model_0014
0101060015 platform_economy_model_0015
0101060016 platform_economy_model_0016
0101060017 platform_economy_model_0017
0101060018 platform_economy_model_0018
0101060019 platform_economy_model_0019
0101060020 platform_economy_model_0020
0101060021 platform_economy_model_0021
0101060022 platform_economy_model_0022
0101060023 platform_economy_model_0023
0101060024 platform_economy_model_0024
0101060025 platform_economy_model_0025
0101060026 platform_economy_model_0026
0101060027 platform_economy_model_0027
0101060028 platform_economy_model_0028
0101060029 platform_economy_model_0029
0101060030 platform_economy_model_0030

# DOMAIN 0107 digital_government
0101070001 digital_government_model_0001
0101070002 digital_government_model_0002
0101070003 digital_government_model_0003
0101070004 digital_government_model_0004
0101070005 digital_government_model_0005
0101070006 digital_government_model_0006
0101070007 digital_government_model_0007
0101070008 digital_government_model_0008
0101070009 digital_government_model_0009
0101070010 digital_government_model_0010
0101070011 digital_government_model_0011
0101070012 digital_government_model_0012
0101070013 digital_government_model_0013
0101070014 digital_government_model_0014
0101070015 digital_government_model_0015
0101070016 digital_government_model_0016
0101070017 digital_government_model_0017
0101070018 digital_government_model_0018
0101070019 digital_government_model_0019
0101070020 digital_government_model_0020
0101070021 digital_government_model_0021
0101070022 digital_government_model_0022
0101070023 digital_government_model_0023
0101070024 digital_government_model_0024
0101070025 digital_government_model_0025
0101070026 digital_government_model_0026
0101070027 digital_government_model_0027
0101070028 digital_government_model_0028
0101070029 digital_government_model_0029
0101070030 digital_government_model_0030

# DOMAIN 0108 standards
0101080001 standards_model_0001
0101080002 standards_model_0002
0101080003 standards_model_0003
0101080004 standards_model_0004
0101080005 standards_model_0005
0101080006 standards_model_0006
0101080007 standards_model_0007
0101080008 standards_model_0008
0101080009 standards_model_0009
0101080010 standards_model_0010
0101080011 standards_model_0011
0101080012 standards_model_0012
0101080013 standards_model_0013
0101080014 standards_model_0014
0101080015 standards_model_0015
0101080016 standards_model_0016
0101080017 standards_model_0017
0101080018 standards_model_0018
0101080019 standards_model_0019
0101080020 standards_model_0020
0101080021 standards_model_0021
0101080022 standards_model_0022
0101080023 standards_model_0023
0101080024 standards_model_0024
0101080025 standards_model_0025
0101080026 standards_model_0026
0101080027 standards_model_0027
0101080028 standards_model_0028
0101080029 standards_model_0029
0101080030 standards_model_0030

# DOMAIN 0109 intellectual_property
0101090001 intellectual_property_model_0001
0101090002 intellectual_property_model_0002
0101090003 intellectual_property_model_0003
0101090004 intellectual_property_model_0004
0101090005 intellectual_property_model_0005
0101090006 intellectual_property_model_0006
0101090007 intellectual_property_model_0007
0101090008 intellectual_property_model_0008
0101090009 intellectual_property_model_0009
0101090010 intellectual_property_model_0010
0101090011 intellectual_property_model_0011
0101090012 intellectual_property_model_0012
0101090013 intellectual_property_model_0013
0101090014 intellectual_property_model_0014
0101090015 intellectual_property_model_0015
0101090016 intellectual_property_model_0016
0101090017 intellectual_property_model_0017
0101090018 intellectual_property_model_0018
0101090019 intellectual_property_model_0019
0101090020 intellectual_property_model_0020
0101090021 intellectual_property_model_0021
0101090022 intellectual_property_model_0022
0101090023 intellectual_property_model_0023
0101090024 intellectual_property_model_0024
0101090025 intellectual_property_model_0025
0101090026 intellectual_property_model_0026
0101090027 intellectual_property_model_0027
0101090028 intellectual_property_model_0028
0101090029 intellectual_property_model_0029
0101090030 intellectual_property_model_0030

# DOMAIN 0110 consumer_protection
0101100001 consumer_protection_model_0001
0101100002 consumer_protection_model_0002
0101100003 consumer_protection_model_0003
0101100004 consumer_protection_model_0004
0101100005 consumer_protection_model_0005
0101100006 consumer_protection_model_0006
0101100007 consumer_protection_model_0007
0101100008 consumer_protection_model_0008
0101100009 consumer_protection_model_0009
0101100010 consumer_protection_model_0010
0101100011 consumer_protection_model_0011
0101100012 consumer_protection_model_0012
0101100013 consumer_protection_model_0013
0101100014 consumer_protection_model_0014
0101100015 consumer_protection_model_0015
0101100016 consumer_protection_model_0016
0101100017 consumer_protection_model_0017
0101100018 consumer_protection_model_0018
0101100019 consumer_protection_model_0019
0101100020 consumer_protection_model_0020
0101100021 consumer_protection_model_0021
0101100022 consumer_protection_model_0022
0101100023 consumer_protection_model_0023
0101100024 consumer_protection_model_0024
0101100025 consumer_protection_model_0025
0101100026 consumer_protection_model_0026
0101100027 consumer_protection_model_0027
0101100028 consumer_protection_model_0028
0101100029 consumer_protection_model_0029
0101100030 consumer_protection_model_0030

# DOMAIN 0111 labor_relations
0101110001 labor_relations_model_0001
0101110002 labor_relations_model_0002
0101110003 labor_relations_model_0003
0101110004 labor_relations_model_0004
0101110005 labor_relations_model_0005
0101110006 labor_relations_model_0006
0101110007 labor_relations_model_0007
0101110008 labor_relations_model_0008
0101110009 labor_relations_model_0009
0101110010 labor_relations_model_0010
0101110011 labor_relations_model_0011
0101110012 labor_relations_model_0012
0101110013 labor_relations_model_0013
0101110014 labor_relations_model_0014
0101110015 labor_relations_model_0015
0101110016 labor_relations_model_0016
0101110017 labor_relations_model_0017
0101110018 labor_relations_model_0018
0101110019 labor_relations_model_0019
0101110020 labor_relations_model_0020
0101110021 labor_relations_model_0021
0101110022 labor_relations_model_0022
0101110023 labor_relations_model_0023
0101110024 labor_relations_model_0024
0101110025 labor_relations_model_0025
0101110026 labor_relations_model_0026
0101110027 labor_relations_model_0027
0101110028 labor_relations_model_0028
0101110029 labor_relations_model_0029
0101110030 labor_relations_model_0030

# DOMAIN 0112 development_finance
0101120001 development_finance_model_0001
0101120002 development_finance_model_0002
0101120003 development_finance_model_0003
0101120004 development_finance_model_0004
0101120005 development_finance_model_0005
0101120006 development_finance_model_0006
0101120007 development_finance_model_0007
0101120008 development_finance_model_0008
0101120009 development_finance_model_0009
0101120010 development_finance_model_0010
0101120011 development_finance_model_0011
0101120012 development_finance_model_0012
0101120013 development_finance_model_0013
0101120014 development_finance_model_0014
0101120015 development_finance_model_0015
0101120016 development_finance_model_0016
0101120017 development_finance_model_0017
0101120018 development_finance_model_0018
0101120019 development_finance_model_0019
0101120020 development_finance_model_0020
0101120021 development_finance_model_0021
0101120022 development_finance_model_0022
0101120023 development_finance_model_0023
0101120024 development_finance_model_0024
0101120025 development_finance_model_0025
0101120026 development_finance_model_0026
0101120027 development_finance_model_0027
0101120028 development_finance_model_0028
0101120029 development_finance_model_0029
0101120030 development_finance_model_0030

# DOMAIN 0113 knowledge_economy
0101130001 knowledge_economy_model_0001
0101130002 knowledge_economy_model_0002
0101130003 knowledge_economy_model_0003
0101130004 knowledge_economy_model_0004
0101130005 knowledge_economy_model_0005
0101130006 knowledge_economy_model_0006
0101130007 knowledge_economy_model_0007
0101130008 knowledge_economy_model_0008
0101130009 knowledge_economy_model_0009
0101130010 knowledge_economy_model_0010
0101130011 knowledge_economy_model_0011
0101130012 knowledge_economy_model_0012
0101130013 knowledge_economy_model_0013
0101130014 knowledge_economy_model_0014
0101130015 knowledge_economy_model_0015
0101130016 knowledge_economy_model_0016
0101130017 knowledge_economy_model_0017
0101130018 knowledge_economy_model_0018
0101130019 knowledge_economy_model_0019
0101130020 knowledge_economy_model_0020
0101130021 knowledge_economy_model_0021
0101130022 knowledge_economy_model_0022
0101130023 knowledge_economy_model_0023
0101130024 knowledge_economy_model_0024
0101130025 knowledge_economy_model_0025
0101130026 knowledge_economy_model_0026
0101130027 knowledge_economy_model_0027
0101130028 knowledge_economy_model_0028
0101130029 knowledge_economy_model_0029
0101130030 knowledge_economy_model_0030

# DOMAIN 0114 financial_stability
0101140001 financial_stability_model_0001
0101140002 financial_stability_model_0002
0101140003 financial_stability_model_0003
0101140004 financial_stability_model_0004
0101140005 financial_stability_model_0005
0101140006 financial_stability_model_0006
0101140007 financial_stability_model_0007
0101140008 financial_stability_model_0008
0101140009 financial_stability_model_0009
0101140010 financial_stability_model_0010
0101140011 financial_stability_model_0011
0101140012 financial_stability_model_0012
0101140013 financial_stability_model_0013
0101140014 financial_stability_model_0014
0101140015 financial_stability_model_0015
0101140016 financial_stability_model_0016
0101140017 financial_stability_model_0017
0101140018 financial_stability_model_0018
0101140019 financial_stability_model_0019
0101140020 financial_stability_model_0020
0101140021 financial_stability_model_0021
0101140022 financial_stability_model_0022
0101140023 financial_stability_model_0023
0101140024 financial_stability_model_0024
0101140025 financial_stability_model_0025
0101140026 financial_stability_model_0026
0101140027 financial_stability_model_0027
0101140028 financial_stability_model_0028
0101140029 financial_stability_model_0029
0101140030 financial_stability_model_0030

# DOMAIN 0115 human_capital
0101150001 human_capital_model_0001
0101150002 human_capital_model_0002
0101150003 human_capital_model_0003
0101150004 human_capital_model_0004
0101150005 human_capital_model_0005
0101150006 human_capital_model_0006
0101150007 human_capital_model_0007
0101150008 human_capital_model_0008
0101150009 human_capital_model_0009
0101150010 human_capital_model_0010
0101150011 human_capital_model_0011
0101150012 human_capital_model_0012
0101150013 human_capital_model_0013
0101150014 human_capital_model_0014
0101150015 human_capital_model_0015
0101150016 human_capital_model_0016
0101150017 human_capital_model_0017
0101150018 human_capital_model_0018
0101150019 human_capital_model_0019
0101150020 human_capital_model_0020
0101150021 human_capital_model_0021
0101150022 human_capital_model_0022
0101150023 human_capital_model_0023
0101150024 human_capital_model_0024
0101150025 human_capital_model_0025
0101150026 human_capital_model_0026
0101150027 human_capital_model_0027
0101150028 human_capital_model_0028
0101150029 human_capital_model_0029
0101150030 human_capital_model_0030

# DOMAIN 0116 global_crisis
0101160001 global_crisis_model_0001
0101160002 global_crisis_model_0002
0101160003 global_crisis_model_0003
0101160004 global_crisis_model_0004
0101160005 global_crisis_model_0005
0101160006 global_crisis_model_0006
0101160007 global_crisis_model_0007
0101160008 global_crisis_model_0008
0101160009 global_crisis_model_0009
0101160010 global_crisis_model_0010
0101160011 global_crisis_model_0011
0101160012 global_crisis_model_0012
0101160013 global_crisis_model_0013
0101160014 global_crisis_model_0014
0101160015 global_crisis_model_0015
0101160016 global_crisis_model_0016
0101160017 global_crisis_model_0017
0101160018 global_crisis_model_0018
0101160019 global_crisis_model_0019
0101160020 global_crisis_model_0020
0101160021 global_crisis_model_0021
0101160022 global_crisis_model_0022
0101160023 global_crisis_model_0023
0101160024 global_crisis_model_0024
0101160025 global_crisis_model_0025
0101160026 global_crisis_model_0026
0101160027 global_crisis_model_0027
0101160028 global_crisis_model_0028
0101160029 global_crisis_model_0029
0101160030 global_crisis_model_0030

# DOMAIN 0117 democratic_system
0101170001 democratic_system_model_0001
0101170002 democratic_system_model_0002
0101170003 democratic_system_model_0003
0101170004 democratic_system_model_0004
0101170005 democratic_system_model_0005
0101170006 democratic_system_model_0006
0101170007 democratic_system_model_0007
0101170008 democratic_system_model_0008
0101170009 democratic_system_model_0009
0101170010 democratic_system_model_0010
0101170011 democratic_system_model_0011
0101170012 democratic_system_model_0012
0101170013 democratic_system_model_0013
0101170014 democratic_system_model_0014
0101170015 democratic_system_model_0015
0101170016 democratic_system_model_0016
0101170017 democratic_system_model_0017
0101170018 democratic_system_model_0018
0101170019 democratic_system_model_0019
0101170020 democratic_system_model_0020
0101170021 democratic_system_model_0021
0101170022 democratic_system_model_0022
0101170023 democratic_system_model_0023
0101170024 democratic_system_model_0024
0101170025 democratic_system_model_0025
0101170026 democratic_system_model_0026
0101170027 democratic_system_model_0027
0101170028 democratic_system_model_0028
0101170029 democratic_system_model_0029
0101170030 democratic_system_model_0030

# DOMAIN 0118 geopolitics
0101180001 geopolitics_model_0001
0101180002 geopolitics_model_0002
0101180003 geopolitics_model_0003
0101180004 geopolitics_model_0004
0101180005 geopolitics_model_0005
0101180006 geopolitics_model_0006
0101180007 geopolitics_model_0007
0101180008 geopolitics_model_0008
0101180009 geopolitics_model_0009
0101180010 geopolitics_model_0010
0101180011 geopolitics_model_0011
0101180012 geopolitics_model_0012
0101180013 geopolitics_model_0013
0101180014 geopolitics_model_0014
0101180015 geopolitics_model_0015
0101180016 geopolitics_model_0016
0101180017 geopolitics_model_0017
0101180018 geopolitics_model_0018
0101180019 geopolitics_model_0019
0101180020 geopolitics_model_0020
0101180021 geopolitics_model_0021
0101180022 geopolitics_model_0022
0101180023 geopolitics_model_0023
0101180024 geopolitics_model_0024
0101180025 geopolitics_model_0025
0101180026 geopolitics_model_0026
0101180027 geopolitics_model_0027
0101180028 geopolitics_model_0028
0101180029 geopolitics_model_0029
0101180030 geopolitics_model_0030

# DOMAIN 0119 global_trade_system
0101190001 global_trade_system_model_0001
0101190002 global_trade_system_model_0002
0101190003 global_trade_system_model_0003
0101190004 global_trade_system_model_0004
0101190005 global_trade_system_model_0005
0101190006 global_trade_system_model_0006
0101190007 global_trade_system_model_0007
0101190008 global_trade_system_model_0008
0101190009 global_trade_system_model_0009
0101190010 global_trade_system_model_0010
0101190011 global_trade_system_model_0011
0101190012 global_trade_system_model_0012
0101190013 global_trade_system_model_0013
0101190014 global_trade_system_model_0014
0101190015 global_trade_system_model_0015
0101190016 global_trade_system_model_0016
0101190017 global_trade_system_model_0017
0101190018 global_trade_system_model_0018
0101190019 global_trade_system_model_0019
0101190020 global_trade_system_model_0020
0101190021 global_trade_system_model_0021
0101190022 global_trade_system_model_0022
0101190023 global_trade_system_model_0023
0101190024 global_trade_system_model_0024
0101190025 global_trade_system_model_0025
0101190026 global_trade_system_model_0026
0101190027 global_trade_system_model_0027
0101190028 global_trade_system_model_0028
0101190029 global_trade_system_model_0029
0101190030 global_trade_system_model_0030

# DOMAIN 0120 civilization_meta
0101200001 civilization_meta_model_0001
0101200002 civilization_meta_model_0002
0101200003 civilization_meta_model_0003
0101200004 civilization_meta_model_0004
0101200005 civilization_meta_model_0005
0101200006 civilization_meta_model_0006
0101200007 civilization_meta_model_0007
0101200008 civilization_meta_model_0008
0101200009 civilization_meta_model_0009
0101200010 civilization_meta_model_0010
0101200011 civilization_meta_model_0011
0101200012 civilization_meta_model_0012
0101200013 civilization_meta_model_0013
0101200014 civilization_meta_model_0014
0101200015 civilization_meta_model_0015
0101200016 civilization_meta_model_0016
0101200017 civilization_meta_model_0017
0101200018 civilization_meta_model_0018
0101200019 civilization_meta_model_0019
0101200020 civilization_meta_model_0020
0101200021 civilization_meta_model_0021
0101200022 civilization_meta_model_0022
0101200023 civilization_meta_model_0023
0101200024 civilization_meta_model_0024
0101200025 civilization_meta_model_0025
0101200026 civilization_meta_model_0026
0101200027 civilization_meta_model_0027
0101200028 civilization_meta_model_0028
0101200029 civilization_meta_model_0029
0101200030 civilization_meta_model_0030

=============================================================
FILE: 0150000006_CIVILIZATION_MODEL_CATALOG_FULL.md
=============================================================
# ============================================================
# CIVILIZATION MODEL CATALOG FULL
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0006
scope: civilization.model.catalog-full
owner: Boss
prepared_by: Zero

purpose:
Provide the full integrated catalog of all canonical
CivilizationOS models aggregated from domain specs.

model_id_format:
SSDDDDMMMM

SS = system
DDDD = domain
MMMM = model


# ============================================================
# MODEL CATALOG
# ============================================================


# ------------------------------------------------------------
# 000_person
# ------------------------------------------------------------
0100000001 000_person_entity
0100000002 000_person_authority
0100000003 000_person_jurisdiction
0100000004 000_person_membership
0100000005 000_person_governance
0100000006 000_person_regulation
0100000007 000_person_service
0100000008 000_person_resource
0100000009 000_person_operation
0100000010 000_person_institution
0100000011 000_person_hierarchy
0100000012 000_person_network
0100000013 000_person_structure
0100000014 000_person_role
0100000015 000_person_boundary
0100000016 000_person_dependency
0100000017 000_person_coordination
0100000018 000_person_infrastructure
0100000019 000_person_scope
0100000020 000_person_compliance
0100000021 000_person_decision_process
0100000022 000_person_resource_allocation
0100000023 000_person_policy_cycle
0100000024 000_person_event_response
0100000025 000_person_performance_measurement
0100000026 000_person_feedback_loop
0100000027 000_person_adaptation_process
0100000028 000_person_crisis_management
0100000029 000_person_growth_transition
0100000030 000_person_decline_transition

# ------------------------------------------------------------
# 001_world
# ------------------------------------------------------------
0100010001 planet
0100010002 continent
0100010003 ocean
0100010004 atmosphere
0100010005 biosphere
0100010006 climate_system
0100010007 tectonic_plate
0100010008 global_ecosystem
0100010009 polar_region
0100010010 global_water_cycle
0100010011 global_temperature
0100010012 sea_level
0100010013 climate_zone
0100010014 ocean_current
0100010015 atmospheric_circulation
0100010016 carbon_cycle
0100010017 nitrogen_cycle
0100010018 biodiversity
0100010019 extinction_event
0100010020 planetary_boundary
0100010021 global_resource_distribution
0100010022 mineral_reserve
0100010023 freshwater_reserve
0100010024 arable_land
0100010025 global_energy_flow
0100010026 solar_radiation
0100010027 geomagnetic_field
0100010028 planetary_orbit
0100010029 earth_rotation
0100010030 earth_system_state

# ------------------------------------------------------------
# 002_region
# ------------------------------------------------------------
0100020001 region
0100020002 regional_boundary
0100020003 regional_population
0100020004 regional_governance
0100020005 regional_economy
0100020006 regional_resource
0100020007 regional_infrastructure
0100020008 regional_environment
0100020009 regional_security
0100020010 regional_identity
0100020011 regional_market
0100020012 regional_trade
0100020013 regional_transport
0100020014 regional_energy
0100020015 regional_water_system
0100020016 regional_food_system
0100020017 regional_labor_market
0100020018 regional_industry
0100020019 regional_finance
0100020020 regional_development
0100020021 regional_policy
0100020022 regional_planning
0100020023 regional_integration
0100020024 regional_cooperation
0100020025 regional_conflict
0100020026 regional_crisis
0100020027 regional_recovery
0100020028 regional_growth
0100020029 regional_transition
0100020030 regional_system_state

# ------------------------------------------------------------
# 003_nation
# ------------------------------------------------------------
0100030001 country
0100030002 citizenship
0100030003 national_population
0100030004 national_territory
0100030005 constitution
0100030006 parliament
0100030007 executive_branch
0100030008 judicial_system
0100030009 public_budget
0100030010 tax_system
0100030011 national_statistics
0100030012 public_administration
0100030013 civil_service
0100030014 national_election
0100030015 political_party
0100030016 national_policy
0100030017 foreign_policy
0100030018 diplomatic_mission
0100030019 national_security
0100030020 military_force
0100030021 border_control
0100030022 immigration_system
0100030023 customs_system
0100030024 public_infrastructure
0100030025 national_identity
0100030026 national_language
0100030027 national_symbol
0100030028 national_crisis_response
0100030029 national_reform
0100030030 national_system_state

# ------------------------------------------------------------
# 004_subnational_government
# ------------------------------------------------------------
0100040001 province
0100040002 state
0100040003 prefecture
0100040004 county
0100040005 municipality
0100040006 local_government
0100040007 local_council
0100040008 local_executive
0100040009 local_budget
0100040010 local_tax
0100040011 local_administration
0100040012 local_public_service
0100040013 local_planning
0100040014 local_regulation
0100040015 local_election
0100040016 local_policy
0100040017 local_infrastructure
0100040018 local_transport
0100040019 local_energy
0100040020 local_water
0100040021 local_healthcare
0100040022 local_education
0100040023 local_housing
0100040024 local_security
0100040025 local_disaster_response
0100040026 local_crisis_management
0100040027 local_development
0100040028 local_reform
0100040029 local_transition
0100040030 local_system_state

# ------------------------------------------------------------
# 005_government
# ------------------------------------------------------------
0100050001 government
0100050002 government_structure
0100050003 government_authority
0100050004 government_legitimacy
0100050005 government_policy
0100050006 government_regulation
0100050007 government_budget
0100050008 government_agency
0100050009 government_program
0100050010 government_service
0100050011 government_decision
0100050012 government_planning
0100050013 government_coordination
0100050014 government_accountability
0100050015 government_transparency
0100050016 government_reform
0100050017 government_crisis_response
0100050018 government_security
0100050019 government_diplomacy
0100050020 government_international_relations
0100050021 government_data
0100050022 government_statistics
0100050023 government_monitoring
0100050024 government_evaluation
0100050025 government_transition
0100050026 government_stability
0100050027 government_legislation
0100050028 government_enforcement
0100050029 government_adaptation
0100050030 government_system_state

# ------------------------------------------------------------
# 006_legislative
# ------------------------------------------------------------
0100060001 legislature
0100060002 legislative_body
0100060003 legislative_chamber
0100060004 legislative_member
0100060005 legislative_committee
0100060006 legislative_session
0100060007 legislative_agenda
0100060008 legislative_procedure
0100060009 legislative_vote
0100060010 legislative_majority
0100060011 legislative_bill
0100060012 legislative_amendment
0100060013 legislative_resolution
0100060014 legislative_debate
0100060015 legislative_record
0100060016 legislative_transparency
0100060017 legislative_ethics
0100060018 legislative_immunity
0100060019 legislative_oversight
0100060020 legislative_hearing
0100060021 legislative_enactment
0100060022 legislative_review
0100060023 legislative_repeal
0100060024 legislative_reform
0100060025 legislative_deadlock
0100060026 legislative_crisis
0100060027 legislative_compromise
0100060028 legislative_transition
0100060029 legislative_stability
0100060030 legislative_system_state

# ------------------------------------------------------------
# 007_judicial
# ------------------------------------------------------------
0100070001 judicial_system
0100070002 court
0100070003 court_level
0100070004 judge
0100070005 judicial_officer
0100070006 judicial_jurisdiction
0100070007 judicial_authority
0100070008 judicial_independence
0100070009 judicial_review
0100070010 judicial_procedure
0100070011 civil_case
0100070012 criminal_case
0100070013 administrative_case
0100070014 constitutional_case
0100070015 appellate_review
0100070016 judicial_precedent
0100070017 judicial_interpretation
0100070018 judicial_enforcement
0100070019 judicial_record
0100070020 judicial_transparency
0100070021 judicial_trial
0100070022 judicial_decision
0100070023 judicial_appeal
0100070024 judicial_remedy
0100070025 judicial_conflict
0100070026 judicial_crisis
0100070027 judicial_reform
0100070028 judicial_transition
0100070029 judicial_stability
0100070030 judicial_system_state

# ------------------------------------------------------------
# 008_election
# ------------------------------------------------------------
0100080001 election
0100080002 election_type
0100080003 electoral_system
0100080004 electoral_district
0100080005 voter
0100080006 voter_registration
0100080007 voter_turnout
0100080008 ballot
0100080009 candidate
0100080010 political_party
0100080011 campaign
0100080012 campaign_finance
0100080013 campaign_event
0100080014 campaign_message
0100080015 media_coverage
0100080016 polling
0100080017 vote_count
0100080018 vote_result
0100080019 election_observer
0100080020 election_integrity
0100080021 election_dispute
0100080022 election_recount
0100080023 election_fraud
0100080024 election_reform
0100080025 election_crisis
0100080026 election_transition
0100080027 election_legitimacy
0100080028 election_stability
0100080029 election_cycle
0100080030 election_system_state

# ------------------------------------------------------------
# 009_public_administration
# ------------------------------------------------------------
0100090001 public_administration
0100090002 administrative_agency
0100090003 administrative_structure
0100090004 administrative_authority
0100090005 administrative_officer
0100090006 civil_service
0100090007 administrative_policy
0100090008 administrative_regulation
0100090009 administrative_program
0100090010 administrative_service
0100090011 administrative_budget
0100090012 administrative_planning
0100090013 administrative_coordination
0100090014 administrative_monitoring
0100090015 administrative_evaluation
0100090016 administrative_accountability
0100090017 administrative_transparency
0100090018 administrative_data
0100090019 administrative_statistics
0100090020 administrative_record
0100090021 administrative_reform
0100090022 administrative_innovation
0100090023 administrative_crisis_response
0100090024 administrative_resilience
0100090025 administrative_transition
0100090026 administrative_stability
0100090027 administrative_efficiency
0100090028 administrative_compliance
0100090029 administrative_governance
0100090030 administrative_system_state

# ------------------------------------------------------------
# 010_law
# ------------------------------------------------------------
0100100001 legal_system
0100100002 legal_order
0100100003 legal_norm
0100100004 legal_rule
0100100005 legal_right
0100100006 legal_obligation
0100100007 legal_liability
0100100008 legal_person
0100100009 legal_entity
0100100010 legal_capacity
0100100011 statutory_law
0100100012 constitutional_law
0100100013 administrative_law
0100100014 criminal_law
0100100015 civil_law
0100100016 commercial_law
0100100017 international_law
0100100018 treaty
0100100019 legal_doctrine
0100100020 legal_interpretation
0100100021 legal_enforcement
0100100022 legal_compliance
0100100023 legal_dispute
0100100024 legal_remedy
0100100025 legal_sanction
0100100026 legal_reform
0100100027 legal_crisis
0100100028 legal_transition
0100100029 legal_stability
0100100030 legal_system_state

# ------------------------------------------------------------
# 011_property_rights
# ------------------------------------------------------------
0100110001 property
0100110002 property_owner
0100110003 property_title
0100110004 property_registration
0100110005 property_transfer
0100110006 property_right
0100110007 property_use
0100110008 property_restriction
0100110009 property_tax
0100110010 property_valuation
0100110011 land_property
0100110012 building_property
0100110013 intellectual_property
0100110014 mineral_right
0100110015 water_right
0100110016 air_right
0100110017 property_lease
0100110018 property_mortgage
0100110019 property_inheritance
0100110020 property_dispute
0100110021 property_regulation
0100110022 property_compliance
0100110023 property_enforcement
0100110024 property_reform
0100110025 property_market
0100110026 property_registry_system
0100110027 property_policy
0100110028 property_conflict
0100110029 property_transition
0100110030 property_system_state

# ------------------------------------------------------------
# 012_governance
# ------------------------------------------------------------
0100120001 governance_system
0100120002 governance_structure
0100120003 governance_authority
0100120004 governance_accountability
0100120005 governance_transparency
0100120006 governance_policy
0100120007 governance_regulation
0100120008 governance_process
0100120009 governance_actor
0100120010 governance_decision
0100120011 governance_coordination
0100120012 governance_monitoring
0100120013 governance_evaluation
0100120014 governance_compliance
0100120015 governance_control
0100120016 governance_risk
0100120017 governance_strategy
0100120018 governance_framework
0100120019 governance_standard
0100120020 governance_guideline
0100120021 governance_reform
0100120022 governance_transition
0100120023 governance_stability
0100120024 governance_legitimacy
0100120025 governance_innovation
0100120026 governance_resilience
0100120027 governance_crisis
0100120028 governance_network
0100120029 governance_system_design
0100120030 governance_system_state

# ------------------------------------------------------------
# 013_public_policy
# ------------------------------------------------------------
0100130001 public_policy
0100130002 policy_agenda
0100130003 policy_design
0100130004 policy_implementation
0100130005 policy_evaluation
0100130006 policy_cycle
0100130007 policy_actor
0100130008 policy_instrument
0100130009 policy_target
0100130010 policy_outcome
0100130011 policy_analysis
0100130012 policy_research
0100130013 policy_data
0100130014 policy_indicator
0100130015 policy_monitoring
0100130016 policy_feedback
0100130017 policy_revision
0100130018 policy_impact
0100130019 policy_tradeoff
0100130020 policy_coordination
0100130021 policy_reform
0100130022 policy_transition
0100130023 policy_innovation
0100130024 policy_crisis
0100130025 policy_adaptation
0100130026 policy_alignment
0100130027 policy_compliance
0100130028 policy_governance
0100130029 policy_legitimacy
0100130030 policy_system_state

# ------------------------------------------------------------
# 014_public_procurement
# ------------------------------------------------------------
0100140001 procurement_system
0100140002 procurement_authority
0100140003 procurement_plan
0100140004 procurement_budget
0100140005 procurement_contract
0100140006 procurement_supplier
0100140007 procurement_bid
0100140008 procurement_tender
0100140009 procurement_award
0100140010 procurement_process
0100140011 procurement_rule
0100140012 procurement_compliance
0100140013 procurement_transparency
0100140014 procurement_audit
0100140015 procurement_monitoring
0100140016 procurement_evaluation
0100140017 procurement_record
0100140018 procurement_platform
0100140019 procurement_standard
0100140020 procurement_policy
0100140021 procurement_risk
0100140022 procurement_dispute
0100140023 procurement_fraud
0100140024 procurement_reform
0100140025 procurement_transition
0100140026 procurement_crisis
0100140027 procurement_resilience
0100140028 procurement_efficiency
0100140029 procurement_governance
0100140030 procurement_system_state

# ------------------------------------------------------------
# 015_security
# ------------------------------------------------------------
0100150001 security_system
0100150002 security_policy
0100150003 security_authority
0100150004 security_threat
0100150005 security_risk
0100150006 security_control
0100150007 security_operation
0100150008 security_monitoring
0100150009 security_response
0100150010 security_incident
0100150011 security_alert
0100150012 security_infrastructure
0100150013 security_protection
0100150014 security_surveillance
0100150015 security_detection
0100150016 security_prevention
0100150017 security_management
0100150018 security_protocol
0100150019 security_standard
0100150020 security_compliance
0100150021 security_resilience
0100150022 security_crisis
0100150023 security_recovery
0100150024 security_reform
0100150025 security_transition
0100150026 security_strategy
0100150027 security_coordination
0100150028 security_governance
0100150029 security_system_design
0100150030 security_system_state

# ------------------------------------------------------------
# 016_military
# ------------------------------------------------------------
0100160001 military_force
0100160002 military_command
0100160003 military_unit
0100160004 military_personnel
0100160005 military_rank
0100160006 military_operation
0100160007 military_strategy
0100160008 military_tactics
0100160009 military_logistics
0100160010 military_supply
0100160011 military_base
0100160012 military_equipment
0100160013 military_weapon
0100160014 military_training
0100160015 military_readiness
0100160016 military_intelligence
0100160017 military_planning
0100160018 military_doctrine
0100160019 military_alliance
0100160020 military_mission
0100160021 military_conflict
0100160022 military_defense
0100160023 military_deterrence
0100160024 military_crisis
0100160025 military_transition
0100160026 military_reform
0100160027 military_modernization
0100160028 military_coordination
0100160029 military_stability
0100160030 military_system_state

# ------------------------------------------------------------
# 017_intelligence
# ------------------------------------------------------------
0100170001 intelligence_system
0100170002 intelligence_agency
0100170003 intelligence_operation
0100170004 intelligence_collection
0100170005 intelligence_analysis
0100170006 intelligence_report
0100170007 intelligence_source
0100170008 intelligence_network
0100170009 intelligence_surveillance
0100170010 intelligence_signal
0100170011 intelligence_human_source
0100170012 intelligence_cyber
0100170013 intelligence_counterintelligence
0100170014 intelligence_security
0100170015 intelligence_risk
0100170016 intelligence_assessment
0100170017 intelligence_warning
0100170018 intelligence_coordination
0100170019 intelligence_strategy
0100170020 intelligence_policy
0100170021 intelligence_crisis
0100170022 intelligence_threat
0100170023 intelligence_response
0100170024 intelligence_reform
0100170025 intelligence_transition
0100170026 intelligence_resilience
0100170027 intelligence_monitoring
0100170028 intelligence_control
0100170029 intelligence_governance
0100170030 intelligence_system_state

# ------------------------------------------------------------
# 018_border
# ------------------------------------------------------------
0100180001 border
0100180002 border_line
0100180003 border_zone
0100180004 border_checkpoint
0100180005 border_crossing
0100180006 border_control
0100180007 border_security
0100180008 border_monitoring
0100180009 border_patrol
0100180010 border_incident
0100180011 border_agreement
0100180012 border_treaty
0100180013 border_dispute
0100180014 border_demarcation
0100180015 border_management
0100180016 border_policy
0100180017 border_authority
0100180018 border_migration_control
0100180019 border_customs
0100180020 border_surveillance
0100180021 border_conflict
0100180022 border_resolution
0100180023 border_reform
0100180024 border_transition
0100180025 border_stability
0100180026 border_coordination
0100180027 border_infrastructure
0100180028 border_data
0100180029 border_governance
0100180030 border_system_state

# ------------------------------------------------------------
# 019_diplomacy
# ------------------------------------------------------------
0100190001 diplomacy
0100190002 diplomatic_relation
0100190003 diplomatic_mission
0100190004 ambassador
0100190005 diplomatic_staff
0100190006 diplomatic_protocol
0100190007 diplomatic_negotiation
0100190008 diplomatic_agreement
0100190009 diplomatic_treaty
0100190010 diplomatic_dialogue
0100190011 diplomatic_channel
0100190012 diplomatic_message
0100190013 diplomatic_visit
0100190014 diplomatic_summit
0100190015 diplomatic_alliance
0100190016 diplomatic_conflict
0100190017 diplomatic_mediation
0100190018 diplomatic_sanction
0100190019 diplomatic_strategy
0100190020 diplomatic_policy
0100190021 diplomatic_crisis
0100190022 diplomatic_resolution
0100190023 diplomatic_transition
0100190024 diplomatic_stability
0100190025 diplomatic_coordination
0100190026 diplomatic_network
0100190027 diplomatic_intelligence
0100190028 diplomatic_monitoring
0100190029 diplomatic_governance
0100190030 diplomatic_system_state

# ------------------------------------------------------------
# 020_international_organization
# ------------------------------------------------------------
0100200001 international_organization
0100200002 international_body
0100200003 international_member_state
0100200004 international_secretariat
0100200005 international_charter
0100200006 international_mandate
0100200007 international_program
0100200008 international_operation
0100200009 international_funding
0100200010 international_budget
0100200011 international_resolution
0100200012 international_committee
0100200013 international_conference
0100200014 international_cooperation
0100200015 international_coordination
0100200016 international_monitoring
0100200017 international_evaluation
0100200018 international_standard
0100200019 international_regulation
0100200020 international_agreement
0100200021 international_crisis_response
0100200022 international_mediation
0100200023 international_reform
0100200024 international_transition
0100200025 international_stability
0100200026 international_governance
0100200027 international_network
0100200028 international_data
0100200029 international_policy
0100200030 international_system_state

# ------------------------------------------------------------
# 021_regional_integration
# ------------------------------------------------------------
0100210001 regional_bloc
0100210002 regional_union
0100210003 regional_treaty
0100210004 regional_agreement
0100210005 regional_institution
0100210006 regional_policy
0100210007 regional_market
0100210008 regional_currency_area
0100210009 regional_customs_union
0100210010 regional_trade_area
0100210011 regional_governance
0100210012 regional_parliament
0100210013 regional_court
0100210014 regional_secretariat
0100210015 regional_program
0100210016 regional_budget
0100210017 regional_fund
0100210018 regional_project
0100210019 regional_cooperation
0100210020 regional_coordination
0100210021 regional_integration_process
0100210022 regional_alignment
0100210023 regional_harmonization
0100210024 regional_standard
0100210025 regional_dispute
0100210026 regional_crisis
0100210027 regional_expansion
0100210028 regional_withdrawal
0100210029 regional_transition
0100210030 regional_system_state

# ------------------------------------------------------------
# 022_population
# ------------------------------------------------------------
0100220001 population
0100220002 population_size
0100220003 population_distribution
0100220004 population_density
0100220005 population_structure
0100220006 population_growth
0100220007 population_decline
0100220008 population_mobility
0100220009 population_registration
0100220010 population_record
0100220011 population_group
0100220012 population_segment
0100220013 population_cluster
0100220014 population_statistics
0100220015 population_projection
0100220016 population_policy
0100220017 population_management
0100220018 population_monitoring
0100220019 population_analysis
0100220020 population_indicator
0100220021 population_pressure
0100220022 population_transition
0100220023 population_aging
0100220024 population_replacement
0100220025 population_stability
0100220026 population_crisis
0100220027 population_recovery
0100220028 population_planning
0100220029 population_system_design
0100220030 population_system_state

# ------------------------------------------------------------
# 023_demography
# ------------------------------------------------------------
0100230001 demographic_structure
0100230002 demographic_distribution
0100230003 demographic_transition
0100230004 demographic_cycle
0100230005 demographic_indicator
0100230006 demographic_measure
0100230007 demographic_model
0100230008 demographic_data
0100230009 demographic_statistics
0100230010 demographic_projection
0100230011 birth_rate
0100230012 fertility_rate
0100230013 mortality_rate
0100230014 life_expectancy
0100230015 age_structure
0100230016 dependency_ratio
0100230017 cohort
0100230018 generation
0100230019 demographic_shift
0100230020 demographic_trend
0100230021 demographic_aging
0100230022 demographic_decline
0100230023 demographic_growth
0100230024 demographic_pressure
0100230025 demographic_crisis
0100230026 demographic_recovery
0100230027 demographic_policy
0100230028 demographic_management
0100230029 demographic_analysis
0100230030 demographic_system_state

# ------------------------------------------------------------
# 024_migration
# ------------------------------------------------------------
0100240001 migration
0100240002 migration_flow
0100240003 migration_route
0100240004 migration_policy
0100240005 migration_control
0100240006 migration_record
0100240007 migration_statistics
0100240008 migration_program
0100240009 migration_management
0100240010 migration_monitoring
0100240011 immigration
0100240012 emigration
0100240013 internal_migration
0100240014 labor_migration
0100240015 refugee
0100240016 asylum
0100240017 displacement
0100240018 resettlement
0100240019 repatriation
0100240020 migration_network
0100240021 migration_crisis
0100240022 migration_conflict
0100240023 migration_agreement
0100240024 migration_regulation
0100240025 migration_reform
0100240026 migration_transition
0100240027 migration_stability
0100240028 migration_coordination
0100240029 migration_system_design
0100240030 migration_system_state

# ------------------------------------------------------------
# 025_household
# ------------------------------------------------------------
0100250001 household
0100250002 household_member
0100250003 household_structure
0100250004 household_size
0100250005 household_income
0100250006 household_consumption
0100250007 household_asset
0100250008 household_debt
0100250009 household_record
0100250010 household_registration
0100250011 household_role
0100250012 household_head
0100250013 household_dependency
0100250014 household_support
0100250015 household_transfer
0100250016 household_service
0100250017 household_activity
0100250018 household_lifecycle
0100250019 household_event
0100250020 household_decision
0100250021 household_policy
0100250022 household_management
0100250023 household_monitoring
0100250024 household_crisis
0100250025 household_transition
0100250026 household_stability
0100250027 household_planning
0100250028 household_data
0100250029 household_analysis
0100250030 household_system_state

# ------------------------------------------------------------
# 026_labor
# ------------------------------------------------------------
0100260001 labor_force
0100260002 labor_market
0100260003 labor_supply
0100260004 labor_demand
0100260005 labor_contract
0100260006 labor_wage
0100260007 labor_income
0100260008 labor_productivity
0100260009 labor_mobility
0100260010 labor_record
0100260011 employment
0100260012 unemployment
0100260013 underemployment
0100260014 labor_participation
0100260015 labor_condition
0100260016 labor_standard
0100260017 labor_right
0100260018 labor_dispute
0100260019 labor_union
0100260020 collective_bargaining
0100260021 labor_policy
0100260022 labor_regulation
0100260023 labor_reform
0100260024 labor_transition
0100260025 labor_crisis
0100260026 labor_recovery
0100260027 labor_coordination
0100260028 labor_management
0100260029 labor_system_design
0100260030 labor_system_state

# ------------------------------------------------------------
# 027_macroeconomy
# ------------------------------------------------------------
0100270001 macroeconomy
0100270002 economic_growth
0100270003 economic_cycle
0100270004 economic_output
0100270005 national_income
0100270006 gross_domestic_product
0100270007 inflation
0100270008 deflation
0100270009 unemployment_rate
0100270010 productivity
0100270011 aggregate_demand
0100270012 aggregate_supply
0100270013 fiscal_policy
0100270014 monetary_policy
0100270015 economic_indicator
0100270016 economic_forecast
0100270017 economic_model
0100270018 economic_data
0100270019 economic_statistics
0100270020 economic_balance
0100270021 economic_crisis
0100270022 economic_recovery
0100270023 economic_transition
0100270024 economic_stability
0100270025 economic_reform
0100270026 economic_strategy
0100270027 economic_coordination
0100270028 economic_management
0100270029 economic_system_design
0100270030 economic_system_state

# ------------------------------------------------------------
# 028_consumer_market
# ------------------------------------------------------------
0100280001 consumer_market
0100280002 consumer_demand
0100280003 consumer_supply
0100280004 consumer_price
0100280005 consumer_product
0100280006 consumer_service
0100280007 consumer_transaction
0100280008 consumer_behavior
0100280009 consumer_preference
0100280010 consumer_segment
0100280011 retail_market
0100280012 wholesale_market
0100280013 marketplace
0100280014 distribution_channel
0100280015 sales_network
0100280016 marketing
0100280017 promotion
0100280018 brand
0100280019 product_lifecycle
0100280020 market_share
0100280021 market_competition
0100280022 market_regulation
0100280023 market_monitoring
0100280024 market_analysis
0100280025 market_crisis
0100280026 market_transition
0100280027 market_stability
0100280028 market_coordination
0100280029 market_system_design
0100280030 market_system_state

# ------------------------------------------------------------
# 029_company
# ------------------------------------------------------------
0100290001 company
0100290002 company_entity
0100290003 company_registration
0100290004 company_structure
0100290005 company_department
0100290006 company_employee
0100290007 company_management
0100290008 company_strategy
0100290009 company_operation
0100290010 company_record
0100290011 corporate_governance
0100290012 corporate_board
0100290013 corporate_officer
0100290014 corporate_shareholder
0100290015 corporate_capital
0100290016 corporate_asset
0100290017 corporate_liability
0100290018 corporate_finance
0100290019 corporate_reporting
0100290020 corporate_compliance
0100290021 corporate_growth
0100290022 corporate_merger
0100290023 corporate_acquisition
0100290024 corporate_restructuring
0100290025 corporate_crisis
0100290026 corporate_recovery
0100290027 corporate_transition
0100290028 corporate_innovation
0100290029 corporate_system_design
0100290030 corporate_system_state

# ------------------------------------------------------------
# 030_startup
# ------------------------------------------------------------
0100300001 startup
0100300002 startup_founder
0100300003 startup_team
0100300004 startup_idea
0100300005 startup_product
0100300006 startup_business_model
0100300007 startup_market
0100300008 startup_funding
0100300009 startup_investor
0100300010 startup_equity
0100300011 startup_accelerator
0100300012 startup_incubator
0100300013 startup_program
0100300014 startup_network
0100300015 startup_ecosystem
0100300016 startup_growth
0100300017 startup_scaling
0100300018 startup_exit
0100300019 startup_acquisition
0100300020 startup_valuation
0100300021 startup_risk
0100300022 startup_failure
0100300023 startup_recovery
0100300024 startup_transition
0100300025 startup_innovation
0100300026 startup_strategy
0100300027 startup_management
0100300028 startup_coordination
0100300029 startup_system_design
0100300030 startup_system_state

# ------------------------------------------------------------
# 031_banking
# ------------------------------------------------------------
0100310001 bank
0100310002 bank_license
0100310003 bank_branch
0100310004 bank_account
0100310005 bank_customer
0100310006 bank_deposit
0100310007 bank_withdrawal
0100310008 bank_transfer
0100310009 bank_loan
0100310010 bank_interest
0100310011 bank_balance_sheet
0100310012 bank_capital
0100310013 bank_liquidity
0100310014 bank_reserve
0100310015 bank_settlement
0100310016 bank_clearing
0100310017 bank_risk
0100310018 bank_compliance
0100310019 bank_regulation
0100310020 bank_supervision
0100310021 bank_crisis
0100310022 bank_resolution
0100310023 bank_recovery
0100310024 bank_merger
0100310025 bank_acquisition
0100310026 bank_strategy
0100310027 bank_operation
0100310028 bank_management
0100310029 bank_system_design
0100310030 bank_system_state

# ------------------------------------------------------------
# 032_central_bank
# ------------------------------------------------------------
0100320001 central_bank
0100320002 central_bank_governor
0100320003 central_bank_board
0100320004 monetary_policy
0100320005 policy_rate
0100320006 open_market_operation
0100320007 central_bank_balance_sheet
0100320008 central_bank_reserve
0100320009 central_bank_currency_issue
0100320010 central_bank_liquidity
0100320011 lender_of_last_resort
0100320012 discount_window
0100320013 quantitative_easing
0100320014 reserve_requirement
0100320015 central_bank_supervision
0100320016 central_bank_regulation
0100320017 financial_stability
0100320018 systemic_risk
0100320019 macroprudential_policy
0100320020 central_bank_communication
0100320021 central_bank_crisis_response
0100320022 central_bank_intervention
0100320023 central_bank_coordination
0100320024 central_bank_transition
0100320025 central_bank_reform
0100320026 central_bank_strategy
0100320027 central_bank_monitoring
0100320028 central_bank_data
0100320029 central_bank_system_design
0100320030 central_bank_system_state

# ------------------------------------------------------------
# 033_currency
# ------------------------------------------------------------
0100330001 currency
0100330002 legal_tender
0100330003 currency_supply
0100330004 currency_demand
0100330005 currency_circulation
0100330006 currency_issue
0100330007 currency_withdrawal
0100330008 currency_exchange
0100330009 currency_conversion
0100330010 currency_reserve
0100330011 fiat_currency
0100330012 commodity_currency
0100330013 digital_currency
0100330014 central_bank_digital_currency
0100330015 stablecoin
0100330016 currency_standard
0100330017 currency_regulation
0100330018 currency_policy
0100330019 currency_market
0100330020 currency_valuation
0100330021 currency_crisis
0100330022 currency_devaluation
0100330023 currency_reform
0100330024 currency_transition
0100330025 currency_stability
0100330026 currency_management
0100330027 currency_monitoring
0100330028 currency_data
0100330029 currency_system_design
0100330030 currency_system_state

# ------------------------------------------------------------
# 034_payment
# ------------------------------------------------------------
0100340001 payment
0100340002 payment_transaction
0100340003 payment_account
0100340004 payment_network
0100340005 payment_processor
0100340006 payment_gateway
0100340007 payment_method
0100340008 payment_card
0100340009 payment_terminal
0100340010 payment_wallet
0100340011 digital_payment
0100340012 mobile_payment
0100340013 online_payment
0100340014 instant_payment
0100340015 cross_border_payment
0100340016 payment_settlement
0100340017 payment_clearing
0100340018 payment_authorization
0100340019 payment_security
0100340020 payment_fraud
0100340021 payment_regulation
0100340022 payment_compliance
0100340023 payment_monitoring
0100340024 payment_dispute
0100340025 payment_crisis
0100340026 payment_transition
0100340027 payment_stability
0100340028 payment_management
0100340029 payment_system_design
0100340030 payment_system_state

# ------------------------------------------------------------
# 035_capital_market
# ------------------------------------------------------------
0100350001 capital_market
0100350002 capital_market_participant
0100350003 capital_market_instrument
0100350004 capital_market_transaction
0100350005 capital_market_price
0100350006 capital_market_liquidity
0100350007 capital_market_index
0100350008 capital_market_exchange
0100350009 capital_market_regulation
0100350010 capital_market_supervision
0100350011 primary_market
0100350012 secondary_market
0100350013 capital_issuance
0100350014 capital_allocation
0100350015 capital_flow
0100350016 capital_mobility
0100350017 capital_structure
0100350018 capital_risk
0100350019 capital_return
0100350020 capital_strategy
0100350021 capital_market_crisis
0100350022 capital_market_recovery
0100350023 capital_market_reform
0100350024 capital_market_transition
0100350025 capital_market_stability
0100350026 capital_market_monitoring
0100350027 capital_market_data
0100350028 capital_market_analysis
0100350029 capital_market_system_design
0100350030 capital_market_system_state

# ------------------------------------------------------------
# 036_stock_market
# ------------------------------------------------------------
0100360001 stock_market
0100360002 stock_exchange
0100360003 stock_listing
0100360004 stock_company
0100360005 stock_share
0100360006 stock_price
0100360007 stock_index
0100360008 stock_trade
0100360009 stock_order
0100360010 stock_settlement
0100360011 stock_liquidity
0100360012 stock_volatility
0100360013 stock_dividend
0100360014 stock_split
0100360015 stock_buyback
0100360016 stock_market_cap
0100360017 stock_investor
0100360018 institutional_investor
0100360019 retail_investor
0100360020 stock_broker
0100360021 stock_regulation
0100360022 stock_compliance
0100360023 stock_monitoring
0100360024 stock_manipulation
0100360025 stock_crisis
0100360026 stock_recovery
0100360027 stock_transition
0100360028 stock_analysis
0100360029 stock_system_design
0100360030 stock_system_state

# ------------------------------------------------------------
# 037_bond_market
# ------------------------------------------------------------
0100370001 bond_market
0100370002 bond
0100370003 government_bond
0100370004 corporate_bond
0100370005 bond_issuer
0100370006 bond_investor
0100370007 bond_price
0100370008 bond_yield
0100370009 bond_coupon
0100370010 bond_maturity
0100370011 bond_rating
0100370012 bond_default
0100370013 bond_spread
0100370014 bond_trade
0100370015 bond_settlement
0100370016 bond_liquidity
0100370017 bond_index
0100370018 bond_portfolio
0100370019 bond_risk
0100370020 bond_return
0100370021 bond_market_regulation
0100370022 bond_market_monitoring
0100370023 bond_market_crisis
0100370024 bond_market_recovery
0100370025 bond_market_transition
0100370026 bond_market_stability
0100370027 bond_market_analysis
0100370028 bond_market_data
0100370029 bond_market_system_design
0100370030 bond_market_system_state

# ------------------------------------------------------------
# 038_fx_market
# ------------------------------------------------------------
0100380001 fx_market
0100380002 currency_pair
0100380003 fx_rate
0100380004 fx_quote
0100380005 fx_trade
0100380006 fx_order
0100380007 fx_liquidity
0100380008 fx_volatility
0100380009 fx_spread
0100380010 fx_position
0100380011 fx_trader
0100380012 fx_broker
0100380013 fx_dealer
0100380014 fx_platform
0100380015 fx_settlement
0100380016 fx_clearing
0100380017 fx_reserve
0100380018 fx_intervention
0100380019 fx_policy
0100380020 fx_regulation
0100380021 fx_market_crisis
0100380022 fx_market_recovery
0100380023 fx_market_transition
0100380024 fx_market_stability
0100380025 fx_market_monitoring
0100380026 fx_market_data
0100380027 fx_market_analysis
0100380028 fx_market_strategy
0100380029 fx_market_system_design
0100380030 fx_market_system_state

# ------------------------------------------------------------
# 039_derivatives_market
# ------------------------------------------------------------
0100390001 derivatives_market
0100390002 derivative_contract
0100390003 futures_contract
0100390004 options_contract
0100390005 swap_contract
0100390006 derivative_underlying
0100390007 derivative_price
0100390008 derivative_trade
0100390009 derivative_position
0100390010 derivative_settlement
0100390011 derivative_margin
0100390012 derivative_leverage
0100390013 derivative_hedging
0100390014 derivative_speculation
0100390015 derivative_clearing
0100390016 derivative_exchange
0100390017 derivative_risk
0100390018 derivative_regulation
0100390019 derivative_compliance
0100390020 derivative_monitoring
0100390021 derivative_market_crisis
0100390022 derivative_market_recovery
0100390023 derivative_market_transition
0100390024 derivative_market_stability
0100390025 derivative_market_analysis
0100390026 derivative_market_data
0100390027 derivative_market_strategy
0100390028 derivative_market_management
0100390029 derivative_market_system_design
0100390030 derivative_market_system_state

# ------------------------------------------------------------
# 040_asset_management
# ------------------------------------------------------------
0100400001 asset_management
0100400002 asset_manager
0100400003 asset_fund
0100400004 mutual_fund
0100400005 hedge_fund
0100400006 pension_fund
0100400007 sovereign_wealth_fund
0100400008 investment_portfolio
0100400009 portfolio_strategy
0100400010 portfolio_allocation
0100400011 asset_class
0100400012 asset_price
0100400013 asset_return
0100400014 asset_risk
0100400015 asset_liquidity
0100400016 asset_diversification
0100400017 asset_performance
0100400018 asset_benchmark
0100400019 asset_reporting
0100400020 asset_custodian
0100400021 asset_management_regulation
0100400022 asset_management_compliance
0100400023 asset_management_monitoring
0100400024 asset_management_crisis
0100400025 asset_management_recovery
0100400026 asset_management_transition
0100400027 asset_management_stability
0100400028 asset_management_data
0100400029 asset_management_system_design
0100400030 asset_management_system_state

# ------------------------------------------------------------
# 041_private_equity
# ------------------------------------------------------------
0100410001 private_equity
0100410002 private_equity_firm
0100410003 private_equity_fund
0100410004 private_equity_investor
0100410005 private_equity_deal
0100410006 private_equity_target
0100410007 leveraged_buyout
0100410008 growth_equity
0100410009 buyout_fund
0100410010 private_equity_portfolio
0100410011 private_equity_capital
0100410012 private_equity_commitment
0100410013 private_equity_drawdown
0100410014 private_equity_exit
0100410015 private_equity_valuation
0100410016 private_equity_return
0100410017 private_equity_risk
0100410018 private_equity_strategy
0100410019 private_equity_governance
0100410020 private_equity_management
0100410021 private_equity_regulation
0100410022 private_equity_compliance
0100410023 private_equity_monitoring
0100410024 private_equity_crisis
0100410025 private_equity_recovery
0100410026 private_equity_transition
0100410027 private_equity_stability
0100410028 private_equity_data
0100410029 private_equity_system_design
0100410030 private_equity_system_state

# ------------------------------------------------------------
# 042_venture_capital
# ------------------------------------------------------------
0100420001 venture_capital
0100420002 venture_capital_firm
0100420003 venture_capital_fund
0100420004 venture_capital_investor
0100420005 venture_capital_deal
0100420006 venture_capital_portfolio
0100420007 seed_investment
0100420008 early_stage_investment
0100420009 growth_stage_investment
0100420010 venture_round
0100420011 venture_equity
0100420012 venture_valuation
0100420013 venture_term_sheet
0100420014 venture_exit
0100420015 venture_return
0100420016 venture_risk
0100420017 venture_strategy
0100420018 venture_network
0100420019 venture_ecosystem
0100420020 venture_support
0100420021 venture_regulation
0100420022 venture_compliance
0100420023 venture_monitoring
0100420024 venture_crisis
0100420025 venture_recovery
0100420026 venture_transition
0100420027 venture_stability
0100420028 venture_data
0100420029 venture_system_design
0100420030 venture_system_state

# ------------------------------------------------------------
# 043_public_finance
# ------------------------------------------------------------
0100430001 public_finance
0100430002 public_budget
0100430003 public_revenue
0100430004 public_expenditure
0100430005 fiscal_balance
0100430006 fiscal_deficit
0100430007 fiscal_surplus
0100430008 public_debt
0100430009 debt_management
0100430010 fiscal_policy
0100430011 government_spending
0100430012 public_program
0100430013 public_funding
0100430014 fiscal_transfer
0100430015 intergovernmental_finance
0100430016 fiscal_rule
0100430017 fiscal_sustainability
0100430018 fiscal_risk
0100430019 fiscal_strategy
0100430020 fiscal_planning
0100430021 fiscal_crisis
0100430022 fiscal_recovery
0100430023 fiscal_reform
0100430024 fiscal_transition
0100430025 fiscal_stability
0100430026 fiscal_monitoring
0100430027 fiscal_data
0100430028 fiscal_analysis
0100430029 fiscal_system_design
0100430030 fiscal_system_state

# ------------------------------------------------------------
# 044_taxation
# ------------------------------------------------------------
0100440001 tax_system
0100440002 tax_policy
0100440003 tax_authority
0100440004 tax_law
0100440005 tax_rule
0100440006 tax_rate
0100440007 tax_base
0100440008 tax_liability
0100440009 tax_collection
0100440010 tax_payment
0100440011 income_tax
0100440012 corporate_tax
0100440013 consumption_tax
0100440014 property_tax
0100440015 capital_gains_tax
0100440016 tax_credit
0100440017 tax_deduction
0100440018 tax_refund
0100440019 tax_audit
0100440020 tax_enforcement
0100440021 tax_compliance
0100440022 tax_evasion
0100440023 tax_avoidance
0100440024 tax_reform
0100440025 tax_crisis
0100440026 tax_transition
0100440027 tax_stability
0100440028 tax_monitoring
0100440029 tax_system_design
0100440030 tax_system_state

# ------------------------------------------------------------
# 045_insurance
# ------------------------------------------------------------
0100450001 insurance
0100450002 insurance_company
0100450003 insurance_policy
0100450004 insurance_premium
0100450005 insurance_claim
0100450006 insurance_payout
0100450007 insurance_underwriting
0100450008 insurance_risk
0100450009 insurance_pool
0100450010 insurance_reserve
0100450011 life_insurance
0100450012 health_insurance
0100450013 property_insurance
0100450014 liability_insurance
0100450015 reinsurance
0100450016 insurance_market
0100450017 insurance_distribution
0100450018 insurance_agent
0100450019 insurance_broker
0100450020 insurance_contract
0100450021 insurance_regulation
0100450022 insurance_compliance
0100450023 insurance_monitoring
0100450024 insurance_crisis
0100450025 insurance_recovery
0100450026 insurance_transition
0100450027 insurance_stability
0100450028 insurance_data
0100450029 insurance_system_design
0100450030 insurance_system_state

# ------------------------------------------------------------
# 046_financial_crime
# ------------------------------------------------------------
0100460001 financial_crime
0100460002 money_laundering
0100460003 terrorist_financing
0100460004 fraud
0100460005 insider_trading
0100460006 market_manipulation
0100460007 corruption
0100460008 bribery
0100460009 embezzlement
0100460010 financial_scandal
0100460011 suspicious_transaction
0100460012 financial_investigation
0100460013 financial_enforcement
0100460014 financial_penalty
0100460015 financial_sanction
0100460016 aml_program
0100460017 compliance_program
0100460018 risk_assessment
0100460019 financial_surveillance
0100460020 financial_reporting
0100460021 financial_crime_regulation
0100460022 financial_crime_monitoring
0100460023 financial_crime_prevention
0100460024 financial_crime_crisis
0100460025 financial_crime_recovery
0100460026 financial_crime_transition
0100460027 financial_crime_stability
0100460028 financial_crime_data
0100460029 financial_crime_system_design
0100460030 financial_crime_system_state

# ------------------------------------------------------------
# 047_trade
# ------------------------------------------------------------
0100470001 trade
0100470002 trade_flow
0100470003 trade_route
0100470004 trade_partner
0100470005 trade_agreement
0100470006 trade_policy
0100470007 trade_regulation
0100470008 trade_balance
0100470009 export
0100470010 import
0100470011 trade_market
0100470012 trade_price
0100470013 trade_volume
0100470014 trade_network
0100470015 trade_facilitation
0100470016 trade_standard
0100470017 trade_barrier
0100470018 tariff
0100470019 quota
0100470020 trade_dispute
0100470021 trade_crisis
0100470022 trade_recovery
0100470023 trade_reform
0100470024 trade_transition
0100470025 trade_stability
0100470026 trade_monitoring
0100470027 trade_data
0100470028 trade_analysis
0100470029 trade_system_design
0100470030 trade_system_state

# ------------------------------------------------------------
# 048_customs
# ------------------------------------------------------------
0100480001 customs
0100480002 customs_authority
0100480003 customs_officer
0100480004 customs_clearance
0100480005 customs_declaration
0100480006 customs_duty
0100480007 customs_tariff
0100480008 customs_control
0100480009 customs_inspection
0100480010 customs_checkpoint
0100480011 customs_document
0100480012 customs_regulation
0100480013 customs_compliance
0100480014 customs_enforcement
0100480015 customs_monitoring
0100480016 customs_risk
0100480017 customs_security
0100480018 customs_data
0100480019 customs_system
0100480020 customs_record
0100480021 customs_crisis
0100480022 customs_recovery
0100480023 customs_reform
0100480024 customs_transition
0100480025 customs_stability
0100480026 customs_coordination
0100480027 customs_management
0100480028 customs_analysis
0100480029 customs_system_design
0100480030 customs_system_state

# ------------------------------------------------------------
# 049_logistics
# ------------------------------------------------------------
0100490001 logistics
0100490002 logistics_network
0100490003 logistics_route
0100490004 logistics_hub
0100490005 logistics_facility
0100490006 logistics_provider
0100490007 logistics_operation
0100490008 logistics_management
0100490009 logistics_service
0100490010 logistics_flow
0100490011 logistics_transport
0100490012 logistics_storage
0100490013 logistics_inventory
0100490014 logistics_distribution
0100490015 logistics_tracking
0100490016 logistics_optimization
0100490017 logistics_cost
0100490018 logistics_risk
0100490019 logistics_performance
0100490020 logistics_capacity
0100490021 logistics_crisis
0100490022 logistics_recovery
0100490023 logistics_reform
0100490024 logistics_transition
0100490025 logistics_stability
0100490026 logistics_monitoring
0100490027 logistics_data
0100490028 logistics_analysis
0100490029 logistics_system_design
0100490030 logistics_system_state

# ------------------------------------------------------------
# 050_supply_chain
# ------------------------------------------------------------
0100500001 supply_chain
0100500002 supply_chain_network
0100500003 supply_chain_node
0100500004 supply_chain_flow
0100500005 supply_chain_partner
0100500006 supply_chain_contract
0100500007 supply_chain_management
0100500008 supply_chain_operation
0100500009 supply_chain_strategy
0100500010 supply_chain_planning
0100500011 supply_chain_inventory
0100500012 supply_chain_distribution
0100500013 supply_chain_procurement
0100500014 supply_chain_transport
0100500015 supply_chain_risk
0100500016 supply_chain_resilience
0100500017 supply_chain_visibility
0100500018 supply_chain_coordination
0100500019 supply_chain_performance
0100500020 supply_chain_capacity
0100500021 supply_chain_crisis
0100500022 supply_chain_recovery
0100500023 supply_chain_reform
0100500024 supply_chain_transition
0100500025 supply_chain_stability
0100500026 supply_chain_monitoring
0100500027 supply_chain_data
0100500028 supply_chain_analysis
0100500029 supply_chain_system_design
0100500030 supply_chain_system_state

# ------------------------------------------------------------
# 051_agriculture
# ------------------------------------------------------------
0100510001 agriculture
0100510002 farm
0100510003 farmland
0100510004 farmer
0100510005 crop
0100510006 crop_cycle
0100510007 crop_yield
0100510008 irrigation
0100510009 soil_management
0100510010 fertilizer
0100510011 seed
0100510012 planting
0100510013 harvesting
0100510014 agricultural_equipment
0100510015 agricultural_labor
0100510016 agricultural_input
0100510017 agricultural_output
0100510018 agricultural_market
0100510019 agricultural_trade
0100510020 agricultural_policy
0100510021 agricultural_subsidy
0100510022 agricultural_risk
0100510023 agricultural_insurance
0100510024 agricultural_crisis
0100510025 agricultural_recovery
0100510026 agricultural_transition
0100510027 agricultural_stability
0100510028 agricultural_data
0100510029 agricultural_system_design
0100510030 agricultural_system_state

# ------------------------------------------------------------
# 052_food
# ------------------------------------------------------------
0100520001 food_system
0100520002 food_product
0100520003 food_supply
0100520004 food_distribution
0100520005 food_processing
0100520006 food_storage
0100520007 food_transport
0100520008 food_market
0100520009 food_price
0100520010 food_security
0100520011 food_quality
0100520012 food_safety
0100520013 food_standard
0100520014 food_regulation
0100520015 food_inspection
0100520016 food_labeling
0100520017 food_consumption
0100520018 food_demand
0100520019 food_waste
0100520020 food_recycling
0100520021 food_crisis
0100520022 food_shortage
0100520023 food_recovery
0100520024 food_policy
0100520025 food_transition
0100520026 food_stability
0100520027 food_monitoring
0100520028 food_data
0100520029 food_system_design
0100520030 food_system_state

# ------------------------------------------------------------
# 053_fisheries
# ------------------------------------------------------------
0100530001 fisheries
0100530002 fishing_ground
0100530003 fish_stock
0100530004 fishing_vessel
0100530005 fisherman
0100530006 fishing_operation
0100530007 fishing_equipment
0100530008 fishing_season
0100530009 fish_catch
0100530010 aquaculture
0100530011 fish_farm
0100530012 fish_feed
0100530013 fish_processing
0100530014 fish_distribution
0100530015 fish_market
0100530016 fisheries_management
0100530017 fisheries_policy
0100530018 fisheries_regulation
0100530019 fisheries_monitoring
0100530020 fisheries_data
0100530021 fisheries_crisis
0100530022 fisheries_depletion
0100530023 fisheries_recovery
0100530024 fisheries_reform
0100530025 fisheries_transition
0100530026 fisheries_stability
0100530027 fisheries_analysis
0100530028 fisheries_system_design
0100530029 fisheries_coordination
0100530030 fisheries_system_state

# ------------------------------------------------------------
# 054_forestry
# ------------------------------------------------------------
0100540001 forestry
0100540002 forest
0100540003 forest_land
0100540004 forest_resource
0100540005 timber
0100540006 logging
0100540007 forestry_operation
0100540008 forestry_equipment
0100540009 forestry_labor
0100540010 forestry_product
0100540011 forest_management
0100540012 forest_conservation
0100540013 forest_regeneration
0100540014 forest_monitoring
0100540015 forest_policy
0100540016 forest_regulation
0100540017 forest_biodiversity
0100540018 forest_ecosystem
0100540019 forest_fire
0100540020 forest_protection
0100540021 forestry_crisis
0100540022 forestry_recovery
0100540023 forestry_reform
0100540024 forestry_transition
0100540025 forestry_stability
0100540026 forestry_data
0100540027 forestry_analysis
0100540028 forestry_coordination
0100540029 forestry_system_design
0100540030 forestry_system_state

# ------------------------------------------------------------
# 055_mining
# ------------------------------------------------------------
0100550001 mining
0100550002 mine
0100550003 mineral_resource
0100550004 mining_license
0100550005 mining_operation
0100550006 mining_equipment
0100550007 mining_labor
0100550008 mining_output
0100550009 mining_processing
0100550010 mining_transport
0100550011 mineral_market
0100550012 mineral_price
0100550013 mineral_reserve
0100550014 mining_exploration
0100550015 mining_investment
0100550016 mining_company
0100550017 mining_regulation
0100550018 mining_policy
0100550019 mining_monitoring
0100550020 mining_data
0100550021 mining_crisis
0100550022 mining_accident
0100550023 mining_recovery
0100550024 mining_reform
0100550025 mining_transition
0100550026 mining_stability
0100550027 mining_analysis
0100550028 mining_coordination
0100550029 mining_system_design
0100550030 mining_system_state

# ------------------------------------------------------------
# 056_manufacturing
# ------------------------------------------------------------
0100560001 manufacturing
0100560002 manufacturing_plant
0100560003 manufacturing_process
0100560004 manufacturing_line
0100560005 manufacturing_worker
0100560006 manufacturing_equipment
0100560007 manufacturing_input
0100560008 manufacturing_output
0100560009 manufacturing_quality
0100560010 manufacturing_standard
0100560011 production_plan
0100560012 production_schedule
0100560013 production_capacity
0100560014 production_efficiency
0100560015 production_cost
0100560016 production_inventory
0100560017 production_control
0100560018 production_automation
0100560019 industrial_robot
0100560020 manufacturing_supply
0100560021 manufacturing_crisis
0100560022 manufacturing_disruption
0100560023 manufacturing_recovery
0100560024 manufacturing_reform
0100560025 manufacturing_transition
0100560026 manufacturing_stability
0100560027 manufacturing_monitoring
0100560028 manufacturing_data
0100560029 manufacturing_system_design
0100560030 manufacturing_system_state

# ------------------------------------------------------------
# 057_semiconductor
# ------------------------------------------------------------
0100570001 semiconductor
0100570002 semiconductor_chip
0100570003 semiconductor_design
0100570004 semiconductor_fabrication
0100570005 semiconductor_foundry
0100570006 semiconductor_equipment
0100570007 semiconductor_material
0100570008 semiconductor_process
0100570009 semiconductor_yield
0100570010 semiconductor_supply
0100570011 semiconductor_factory
0100570012 semiconductor_engineer
0100570013 semiconductor_technology
0100570014 semiconductor_innovation
0100570015 semiconductor_market
0100570016 semiconductor_trade
0100570017 semiconductor_policy
0100570018 semiconductor_regulation
0100570019 semiconductor_monitoring
0100570020 semiconductor_data
0100570021 semiconductor_crisis
0100570022 semiconductor_shortage
0100570023 semiconductor_recovery
0100570024 semiconductor_reform
0100570025 semiconductor_transition
0100570026 semiconductor_stability
0100570027 semiconductor_analysis
0100570028 semiconductor_coordination
0100570029 semiconductor_system_design
0100570030 semiconductor_system_state

# ------------------------------------------------------------
# 058_automotive
# ------------------------------------------------------------
0100580001 automotive_industry
0100580002 vehicle
0100580003 vehicle_design
0100580004 vehicle_manufacturing
0100580005 automotive_factory
0100580006 automotive_supply
0100580007 automotive_component
0100580008 automotive_engine
0100580009 automotive_battery
0100580010 electric_vehicle
0100580011 automotive_market
0100580012 automotive_sales
0100580013 automotive_distribution
0100580014 automotive_dealer
0100580015 automotive_service
0100580016 automotive_repair
0100580017 automotive_regulation
0100580018 automotive_policy
0100580019 automotive_monitoring
0100580020 automotive_data
0100580021 automotive_crisis
0100580022 automotive_disruption
0100580023 automotive_recovery
0100580024 automotive_reform
0100580025 automotive_transition
0100580026 automotive_stability
0100580027 automotive_analysis
0100580028 automotive_coordination
0100580029 automotive_system_design
0100580030 automotive_system_state

# ------------------------------------------------------------
# 059_construction
# ------------------------------------------------------------
0100590001 construction
0100590002 construction_project
0100590003 construction_site
0100590004 construction_company
0100590005 construction_worker
0100590006 construction_equipment
0100590007 construction_material
0100590008 construction_plan
0100590009 construction_schedule
0100590010 construction_cost
0100590011 construction_contract
0100590012 construction_design
0100590013 construction_engineering
0100590014 construction_management
0100590015 construction_safety
0100590016 construction_quality
0100590017 construction_regulation
0100590018 construction_permit
0100590019 construction_monitoring
0100590020 construction_data
0100590021 construction_crisis
0100590022 construction_delay
0100590023 construction_recovery
0100590024 construction_reform
0100590025 construction_transition
0100590026 construction_stability
0100590027 construction_analysis
0100590028 construction_coordination
0100590029 construction_system_design
0100590030 construction_system_state

# ------------------------------------------------------------
# 060_real_estate
# ------------------------------------------------------------
0100600001 real_estate
0100600002 real_estate_property
0100600003 real_estate_land
0100600004 real_estate_building
0100600005 real_estate_developer
0100600006 real_estate_investor
0100600007 real_estate_market
0100600008 real_estate_price
0100600009 real_estate_transaction
0100600010 real_estate_listing
0100600011 real_estate_rent
0100600012 real_estate_lease
0100600013 real_estate_management
0100600014 real_estate_valuation
0100600015 real_estate_financing
0100600016 real_estate_mortgage
0100600017 real_estate_regulation
0100600018 real_estate_policy
0100600019 real_estate_monitoring
0100600020 real_estate_data
0100600021 real_estate_crisis
0100600022 real_estate_bubble
0100600023 real_estate_recovery
0100600024 real_estate_reform
0100600025 real_estate_transition
0100600026 real_estate_stability
0100600027 real_estate_analysis
0100600028 real_estate_coordination
0100600029 real_estate_system_design
0100600030 real_estate_system_state

# ------------------------------------------------------------
# 061_infrastructure
# ------------------------------------------------------------
0100610001 infrastructure
0100610002 infrastructure_system
0100610003 infrastructure_network
0100610004 infrastructure_asset
0100610005 infrastructure_project
0100610006 infrastructure_operator
0100610007 infrastructure_provider
0100610008 infrastructure_service
0100610009 infrastructure_capacity
0100610010 infrastructure_utilization
0100610011 infrastructure_plan
0100610012 infrastructure_policy
0100610013 infrastructure_financing
0100610014 infrastructure_investment
0100610015 infrastructure_maintenance
0100610016 infrastructure_upgrade
0100610017 infrastructure_resilience
0100610018 infrastructure_monitoring
0100610019 infrastructure_data
0100610020 infrastructure_management
0100610021 infrastructure_failure
0100610022 infrastructure_disruption
0100610023 infrastructure_recovery
0100610024 infrastructure_reform
0100610025 infrastructure_transition
0100610026 infrastructure_stability
0100610027 infrastructure_coordination
0100610028 infrastructure_analysis
0100610029 infrastructure_system_design
0100610030 infrastructure_system_state

# ------------------------------------------------------------
# 062_transport
# ------------------------------------------------------------
0100620001 transport
0100620002 transport_network
0100620003 transport_route
0100620004 transport_node
0100620005 transport_operator
0100620006 transport_vehicle
0100620007 transport_service
0100620008 transport_capacity
0100620009 transport_flow
0100620010 transport_demand
0100620011 transport_schedule
0100620012 transport_ticketing
0100620013 transport_fare
0100620014 transport_terminal
0100620015 transport_hub
0100620016 transport_logistics
0100620017 transport_policy
0100620018 transport_regulation
0100620019 transport_monitoring
0100620020 transport_data
0100620021 transport_crisis
0100620022 transport_disruption
0100620023 transport_recovery
0100620024 transport_reform
0100620025 transport_transition
0100620026 transport_stability
0100620027 transport_coordination
0100620028 transport_analysis
0100620029 transport_system_design
0100620030 transport_system_state

# ------------------------------------------------------------
# 063_railway
# ------------------------------------------------------------
0100630001 railway
0100630002 railway_network
0100630003 railway_line
0100630004 railway_station
0100630005 railway_train
0100630006 railway_operator
0100630007 railway_service
0100630008 railway_schedule
0100630009 railway_capacity
0100630010 railway_flow
0100630011 railway_infrastructure
0100630012 railway_signal
0100630013 railway_control
0100630014 railway_maintenance
0100630015 railway_ticketing
0100630016 railway_fare
0100630017 railway_policy
0100630018 railway_regulation
0100630019 railway_monitoring
0100630020 railway_data
0100630021 railway_crisis
0100630022 railway_accident
0100630023 railway_recovery
0100630024 railway_reform
0100630025 railway_transition
0100630026 railway_stability
0100630027 railway_coordination
0100630028 railway_analysis
0100630029 railway_system_design
0100630030 railway_system_state

# ------------------------------------------------------------
# 064_shipping
# ------------------------------------------------------------
0100640001 shipping
0100640002 shipping_route
0100640003 shipping_network
0100640004 shipping_port
0100640005 shipping_vessel
0100640006 shipping_operator
0100640007 shipping_service
0100640008 shipping_capacity
0100640009 shipping_flow
0100640010 shipping_schedule
0100640011 shipping_terminal
0100640012 shipping_logistics
0100640013 shipping_container
0100640014 shipping_cargo
0100640015 shipping_inspection
0100640016 shipping_regulation
0100640017 shipping_policy
0100640018 shipping_monitoring
0100640019 shipping_data
0100640020 shipping_management
0100640021 shipping_crisis
0100640022 shipping_disruption
0100640023 shipping_recovery
0100640024 shipping_reform
0100640025 shipping_transition
0100640026 shipping_stability
0100640027 shipping_coordination
0100640028 shipping_analysis
0100640029 shipping_system_design
0100640030 shipping_system_state

# ------------------------------------------------------------
# 065_aviation
# ------------------------------------------------------------
0100650001 aviation
0100650002 aviation_network
0100650003 aviation_route
0100650004 aviation_airport
0100650005 aviation_aircraft
0100650006 aviation_operator
0100650007 aviation_service
0100650008 aviation_capacity
0100650009 aviation_flow
0100650010 aviation_schedule
0100650011 aviation_control
0100650012 aviation_navigation
0100650013 aviation_safety
0100650014 aviation_security
0100650015 aviation_ticketing
0100650016 aviation_fare
0100650017 aviation_policy
0100650018 aviation_regulation
0100650019 aviation_monitoring
0100650020 aviation_data
0100650021 aviation_crisis
0100650022 aviation_accident
0100650023 aviation_recovery
0100650024 aviation_reform
0100650025 aviation_transition
0100650026 aviation_stability
0100650027 aviation_coordination
0100650028 aviation_analysis
0100650029 aviation_system_design
0100650030 aviation_system_state

# ------------------------------------------------------------
# 066_energy
# ------------------------------------------------------------
0100660001 energy_system
0100660002 energy_resource
0100660003 energy_supply
0100660004 energy_demand
0100660005 energy_production
0100660006 energy_distribution
0100660007 energy_market
0100660008 energy_price
0100660009 energy_trade
0100660010 energy_security
0100660011 energy_infrastructure
0100660012 energy_storage
0100660013 energy_efficiency
0100660014 energy_transition
0100660015 energy_policy
0100660016 energy_regulation
0100660017 energy_monitoring
0100660018 energy_data
0100660019 energy_management
0100660020 energy_governance
0100660021 energy_crisis
0100660022 energy_shortage
0100660023 energy_recovery
0100660024 energy_reform
0100660025 energy_transition_event
0100660026 energy_stability
0100660027 energy_coordination
0100660028 energy_analysis
0100660029 energy_system_design
0100660030 energy_system_state

# ------------------------------------------------------------
# 067_oil_gas
# ------------------------------------------------------------
0100670001 oil_gas
0100670002 oil_field
0100670003 gas_field
0100670004 oil_company
0100670005 gas_company
0100670006 oil_extraction
0100670007 gas_extraction
0100670008 oil_refinery
0100670009 gas_processing
0100670010 oil_transport
0100670011 gas_pipeline
0100670012 oil_market
0100670013 gas_market
0100670014 oil_price
0100670015 gas_price
0100670016 oil_trade
0100670017 gas_trade
0100670018 oil_regulation
0100670019 gas_regulation
0100670020 oil_gas_monitoring
0100670021 oil_gas_crisis
0100670022 oil_gas_supply_disruption
0100670023 oil_gas_recovery
0100670024 oil_gas_reform
0100670025 oil_gas_transition
0100670026 oil_gas_stability
0100670027 oil_gas_analysis
0100670028 oil_gas_data
0100670029 oil_gas_system_design
0100670030 oil_gas_system_state

# ------------------------------------------------------------
# 068_electric_power
# ------------------------------------------------------------
0100680001 electric_power
0100680002 power_generation
0100680003 power_plant
0100680004 power_grid
0100680005 transmission_network
0100680006 distribution_network
0100680007 power_operator
0100680008 electricity_market
0100680009 electricity_price
0100680010 electricity_demand
0100680011 electricity_supply
0100680012 power_capacity
0100680013 power_storage
0100680014 power_outage
0100680015 grid_management
0100680016 grid_stability
0100680017 electricity_regulation
0100680018 electricity_policy
0100680019 electricity_monitoring
0100680020 electricity_data
0100680021 electricity_crisis
0100680022 blackout
0100680023 electricity_recovery
0100680024 electricity_reform
0100680025 electricity_transition
0100680026 electricity_stability
0100680027 electricity_analysis
0100680028 electricity_coordination
0100680029 electricity_system_design
0100680030 electricity_system_state

# ------------------------------------------------------------
# 069_water
# ------------------------------------------------------------
0100690001 water_system
0100690002 water_resource
0100690003 water_supply
0100690004 water_demand
0100690005 water_distribution
0100690006 water_treatment
0100690007 water_utility
0100690008 water_network
0100690009 water_storage
0100690010 water_quality
0100690011 drinking_water
0100690012 wastewater
0100690013 sanitation
0100690014 irrigation_water
0100690015 water_infrastructure
0100690016 water_policy
0100690017 water_regulation
0100690018 water_monitoring
0100690019 water_data
0100690020 water_management
0100690021 water_crisis
0100690022 water_shortage
0100690023 water_pollution
0100690024 water_recovery
0100690025 water_reform
0100690026 water_transition
0100690027 water_stability
0100690028 water_analysis
0100690029 water_system_design
0100690030 water_system_state

# ------------------------------------------------------------
# 070_environment
# ------------------------------------------------------------
0100700001 environment
0100700002 ecosystem
0100700003 biodiversity
0100700004 natural_resource
0100700005 environmental_quality
0100700006 environmental_risk
0100700007 environmental_monitoring
0100700008 environmental_data
0100700009 environmental_management
0100700010 environmental_policy
0100700011 environmental_regulation
0100700012 environmental_protection
0100700013 pollution
0100700014 pollution_control
0100700015 waste_management
0100700016 recycling_system
0100700017 environmental_impact
0100700018 environmental_assessment
0100700019 environmental_governance
0100700020 environmental_planning
0100700021 environmental_crisis
0100700022 environmental_disaster
0100700023 environmental_recovery
0100700024 environmental_reform
0100700025 environmental_transition
0100700026 environmental_stability
0100700027 environmental_coordination
0100700028 environmental_analysis
0100700029 environmental_system_design
0100700030 environmental_system_state

# ------------------------------------------------------------
# 071_climate
# ------------------------------------------------------------
0100710001 climate
0100710002 climate_system
0100710003 climate_pattern
0100710004 climate_variability
0100710005 climate_trend
0100710006 climate_change
0100710007 climate_driver
0100710008 climate_indicator
0100710009 climate_model
0100710010 climate_projection
0100710011 greenhouse_gas
0100710012 carbon_emission
0100710013 carbon_cycle
0100710014 global_temperature
0100710015 climate_risk
0100710016 climate_impact
0100710017 climate_policy
0100710018 climate_regulation
0100710019 climate_monitoring
0100710020 climate_data
0100710021 climate_crisis
0100710022 climate_adaptation
0100710023 climate_mitigation
0100710024 climate_recovery
0100710025 climate_transition
0100710026 climate_stability
0100710027 climate_coordination
0100710028 climate_analysis
0100710029 climate_system_design
0100710030 climate_system_state

# ------------------------------------------------------------
# 072_disaster_management
# ------------------------------------------------------------
0100720001 disaster
0100720002 disaster_event
0100720003 disaster_risk
0100720004 disaster_hazard
0100720005 disaster_exposure
0100720006 disaster_vulnerability
0100720007 disaster_impact
0100720008 disaster_warning
0100720009 disaster_response
0100720010 disaster_recovery
0100720011 disaster_prevention
0100720012 disaster_preparedness
0100720013 disaster_resilience
0100720014 disaster_management_system
0100720015 disaster_operation
0100720016 disaster_coordination
0100720017 disaster_policy
0100720018 disaster_regulation
0100720019 disaster_monitoring
0100720020 disaster_data
0100720021 disaster_crisis
0100720022 disaster_response_operation
0100720023 disaster_reconstruction
0100720024 disaster_reform
0100720025 disaster_transition
0100720026 disaster_stability
0100720027 disaster_analysis
0100720028 disaster_command
0100720029 disaster_system_design
0100720030 disaster_system_state

# ------------------------------------------------------------
# 073_urban
# ------------------------------------------------------------
0100730001 urban_system
0100730002 city
0100730003 urban_area
0100730004 urban_population
0100730005 urban_infrastructure
0100730006 urban_transport
0100730007 urban_service
0100730008 urban_governance
0100730009 urban_policy
0100730010 urban_planning
0100730011 urban_land_use
0100730012 urban_development
0100730013 urban_density
0100730014 urban_economy
0100730015 urban_environment
0100730016 urban_housing
0100730017 urban_mobility
0100730018 urban_network
0100730019 urban_monitoring
0100730020 urban_data
0100730021 urban_crisis
0100730022 urban_disaster
0100730023 urban_recovery
0100730024 urban_reform
0100730025 urban_transition
0100730026 urban_stability
0100730027 urban_coordination
0100730028 urban_analysis
0100730029 urban_system_design
0100730030 urban_system_state

# ------------------------------------------------------------
# 074_rural
# ------------------------------------------------------------
0100740001 rural_system
0100740002 rural_area
0100740003 rural_population
0100740004 rural_economy
0100740005 rural_agriculture
0100740006 rural_resource
0100740007 rural_infrastructure
0100740008 rural_service
0100740009 rural_governance
0100740010 rural_policy
0100740011 rural_development
0100740012 rural_land_use
0100740013 rural_network
0100740014 rural_transport
0100740015 rural_market
0100740016 rural_labor
0100740017 rural_community
0100740018 rural_monitoring
0100740019 rural_data
0100740020 rural_management
0100740021 rural_crisis
0100740022 rural_decline
0100740023 rural_recovery
0100740024 rural_reform
0100740025 rural_transition
0100740026 rural_stability
0100740027 rural_coordination
0100740028 rural_analysis
0100740029 rural_system_design
0100740030 rural_system_state

# ------------------------------------------------------------
# 075_education
# ------------------------------------------------------------
0100750001 education_system
0100750002 education_institution
0100750003 school
0100750004 student
0100750005 teacher
0100750006 curriculum
0100750007 education_program
0100750008 education_policy
0100750009 education_regulation
0100750010 education_standard
0100750011 education_access
0100750012 education_quality
0100750013 education_outcome
0100750014 education_assessment
0100750015 education_funding
0100750016 education_infrastructure
0100750017 education_governance
0100750018 education_monitoring
0100750019 education_data
0100750020 education_management
0100750021 education_crisis
0100750022 education_disruption
0100750023 education_recovery
0100750024 education_reform
0100750025 education_transition
0100750026 education_stability
0100750027 education_coordination
0100750028 education_analysis
0100750029 education_system_design
0100750030 education_system_state

# ------------------------------------------------------------
# 076_research_university
# ------------------------------------------------------------
0100760001 research_university
0100760002 university
0100760003 research_lab
0100760004 researcher
0100760005 academic_department
0100760006 research_program
0100760007 research_project
0100760008 academic_publication
0100760009 research_output
0100760010 research_collaboration
0100760011 university_governance
0100760012 university_funding
0100760013 research_infrastructure
0100760014 academic_network
0100760015 research_capacity
0100760016 research_impact
0100760017 university_policy
0100760018 university_regulation
0100760019 research_monitoring
0100760020 research_data
0100760021 research_crisis
0100760022 research_disruption
0100760023 research_recovery
0100760024 research_reform
0100760025 research_transition
0100760026 research_stability
0100760027 research_coordination
0100760028 research_analysis
0100760029 research_system_design
0100760030 research_system_state

# ------------------------------------------------------------
# 077_research_funding
# ------------------------------------------------------------
0100770001 research_funding
0100770002 research_grant
0100770003 funding_agency
0100770004 funding_program
0100770005 grant_application
0100770006 grant_review
0100770007 grant_award
0100770008 research_budget
0100770009 research_finance
0100770010 funding_allocation
0100770011 funding_policy
0100770012 funding_strategy
0100770013 funding_priority
0100770014 research_investment
0100770015 research_endowment
0100770016 research_sponsorship
0100770017 funding_regulation
0100770018 funding_monitoring
0100770019 funding_data
0100770020 funding_management
0100770021 funding_crisis
0100770022 funding_shortage
0100770023 funding_recovery
0100770024 funding_reform
0100770025 funding_transition
0100770026 funding_stability
0100770027 funding_coordination
0100770028 funding_analysis
0100770029 funding_system_design
0100770030 funding_system_state

# ------------------------------------------------------------
# 078_science
# ------------------------------------------------------------
0100780001 science
0100780002 scientific_field
0100780003 scientific_method
0100780004 scientific_theory
0100780005 scientific_model
0100780006 scientific_experiment
0100780007 scientific_data
0100780008 scientific_discovery
0100780009 scientific_innovation
0100780010 scientific_community
0100780011 scientific_publication
0100780012 scientific_collaboration
0100780013 scientific_network
0100780014 scientific_infrastructure
0100780015 scientific_knowledge
0100780016 scientific_standard
0100780017 science_policy
0100780018 science_regulation
0100780019 science_monitoring
0100780020 science_management
0100780021 science_crisis
0100780022 science_disruption
0100780023 science_recovery
0100780024 science_reform
0100780025 science_transition
0100780026 science_stability
0100780027 science_coordination
0100780028 science_analysis
0100780029 science_system_design
0100780030 science_system_state

# ------------------------------------------------------------
# 079_technology
# ------------------------------------------------------------
0100790001 technology
0100790002 technology_system
0100790003 technology_platform
0100790004 technology_infrastructure
0100790005 technology_standard
0100790006 technology_development
0100790007 technology_transfer
0100790008 technology_adoption
0100790009 technology_diffusion
0100790010 technology_lifecycle
0100790011 technology_innovation
0100790012 technology_company
0100790013 technology_market
0100790014 technology_policy
0100790015 technology_regulation
0100790016 technology_governance
0100790017 technology_monitoring
0100790018 technology_data
0100790019 technology_management
0100790020 technology_strategy
0100790021 technology_crisis
0100790022 technology_disruption
0100790023 technology_recovery
0100790024 technology_reform
0100790025 technology_transition
0100790026 technology_stability
0100790027 technology_coordination
0100790028 technology_analysis
0100790029 technology_system_design
0100790030 technology_system_state

# ------------------------------------------------------------
# 080_innovation
# ------------------------------------------------------------
0100800001 innovation
0100800002 innovation_system
0100800003 innovation_ecosystem
0100800004 innovation_actor
0100800005 innovation_network
0100800006 innovation_process
0100800007 innovation_project
0100800008 innovation_platform
0100800009 innovation_strategy
0100800010 innovation_policy
0100800011 innovation_funding
0100800012 innovation_program
0100800013 innovation_lab
0100800014 innovation_cluster
0100800015 innovation_output
0100800016 innovation_diffusion
0100800017 innovation_adoption
0100800018 innovation_monitoring
0100800019 innovation_data
0100800020 innovation_management
0100800021 innovation_crisis
0100800022 innovation_disruption
0100800023 innovation_recovery
0100800024 innovation_reform
0100800025 innovation_transition
0100800026 innovation_stability
0100800027 innovation_coordination
0100800028 innovation_analysis
0100800029 innovation_system_design
0100800030 innovation_system_state

# ------------------------------------------------------------
# 081_data
# ------------------------------------------------------------
0100810001 data
0100810002 dataset
0100810003 data_source
0100810004 data_collection
0100810005 data_processing
0100810006 data_storage
0100810007 data_pipeline
0100810008 data_platform
0100810009 data_catalog
0100810010 data_registry
0100810011 data_quality
0100810012 data_validation
0100810013 data_standard
0100810014 data_schema
0100810015 data_integration
0100810016 data_exchange
0100810017 data_governance
0100810018 data_policy
0100810019 data_monitoring
0100810020 data_management
0100810021 data_risk
0100810022 data_breach
0100810023 data_recovery
0100810024 data_reform
0100810025 data_transition
0100810026 data_stability
0100810027 data_coordination
0100810028 data_analysis
0100810029 data_system_design
0100810030 data_system_state

# ------------------------------------------------------------
# 082_ai
# ------------------------------------------------------------
0100820001 artificial_intelligence
0100820002 ai_system
0100820003 ai_model
0100820004 ai_algorithm
0100820005 ai_training
0100820006 ai_inference
0100820007 ai_dataset
0100820008 ai_platform
0100820009 ai_application
0100820010 ai_service
0100820011 ai_governance
0100820012 ai_policy
0100820013 ai_regulation
0100820014 ai_safety
0100820015 ai_alignment
0100820016 ai_monitoring
0100820017 ai_evaluation
0100820018 ai_deployment
0100820019 ai_management
0100820020 ai_operations
0100820021 ai_risk
0100820022 ai_failure
0100820023 ai_recovery
0100820024 ai_reform
0100820025 ai_transition
0100820026 ai_stability
0100820027 ai_coordination
0100820028 ai_analysis
0100820029 ai_system_design
0100820030 ai_system_state

# ------------------------------------------------------------
# 083_cybersecurity
# ------------------------------------------------------------
0100830001 cybersecurity
0100830002 cyber_threat
0100830003 cyber_attack
0100830004 cyber_incident
0100830005 cyber_defense
0100830006 cyber_monitoring
0100830007 cyber_detection
0100830008 cyber_response
0100830009 cyber_recovery
0100830010 cyber_resilience
0100830011 cyber_risk
0100830012 cyber_vulnerability
0100830013 cyber_protection
0100830014 cyber_policy
0100830015 cyber_regulation
0100830016 cyber_governance
0100830017 cyber_operations
0100830018 cyber_infrastructure
0100830019 cyber_data
0100830020 cyber_management
0100830021 cyber_crisis
0100830022 cyber_disruption
0100830023 cyber_reform
0100830024 cyber_transition
0100830025 cyber_stability
0100830026 cyber_coordination
0100830027 cyber_analysis
0100830028 cyber_intelligence
0100830029 cyber_system_design
0100830030 cyber_system_state

# ------------------------------------------------------------
# 084_communications
# ------------------------------------------------------------
0100840001 communication_system
0100840002 communication_network
0100840003 communication_channel
0100840004 communication_protocol
0100840005 communication_platform
0100840006 communication_service
0100840007 communication_provider
0100840008 communication_infrastructure
0100840009 communication_flow
0100840010 communication_exchange
0100840011 communication_standard
0100840012 communication_policy
0100840013 communication_regulation
0100840014 communication_governance
0100840015 communication_monitoring
0100840016 communication_data
0100840017 communication_management
0100840018 communication_strategy
0100840019 communication_operations
0100840020 communication_security
0100840021 communication_crisis
0100840022 communication_disruption
0100840023 communication_recovery
0100840024 communication_reform
0100840025 communication_transition
0100840026 communication_stability
0100840027 communication_coordination
0100840028 communication_analysis
0100840029 communication_system_design
0100840030 communication_system_state

# ------------------------------------------------------------
# 085_telecom
# ------------------------------------------------------------
0100850001 telecom
0100850002 telecom_network
0100850003 telecom_operator
0100850004 telecom_service
0100850005 telecom_infrastructure
0100850006 telecom_station
0100850007 telecom_frequency
0100850008 telecom_bandwidth
0100850009 telecom_capacity
0100850010 telecom_traffic
0100850011 telecom_standard
0100850012 telecom_policy
0100850013 telecom_regulation
0100850014 telecom_governance
0100850015 telecom_monitoring
0100850016 telecom_data
0100850017 telecom_management
0100850018 telecom_operations
0100850019 telecom_security
0100850020 telecom_service_quality
0100850021 telecom_crisis
0100850022 telecom_outage
0100850023 telecom_recovery
0100850024 telecom_reform
0100850025 telecom_transition
0100850026 telecom_stability
0100850027 telecom_coordination
0100850028 telecom_analysis
0100850029 telecom_system_design
0100850030 telecom_system_state

# ------------------------------------------------------------
# 086_internet
# ------------------------------------------------------------
0100860001 internet
0100860002 internet_network
0100860003 internet_protocol
0100860004 internet_service
0100860005 internet_provider
0100860006 internet_platform
0100860007 internet_infrastructure
0100860008 internet_exchange
0100860009 internet_domain
0100860010 internet_routing
0100860011 internet_traffic
0100860012 internet_standard
0100860013 internet_governance
0100860014 internet_policy
0100860015 internet_regulation
0100860016 internet_monitoring
0100860017 internet_data
0100860018 internet_management
0100860019 internet_security
0100860020 internet_operations
0100860021 internet_crisis
0100860022 internet_outage
0100860023 internet_recovery
0100860024 internet_reform
0100860025 internet_transition
0100860026 internet_stability
0100860027 internet_coordination
0100860028 internet_analysis
0100860029 internet_system_design
0100860030 internet_system_state

# ------------------------------------------------------------
# 087_space
# ------------------------------------------------------------
0100870001 space
0100870002 space_system
0100870003 space_mission
0100870004 space_agency
0100870005 spacecraft
0100870006 satellite
0100870007 launch_vehicle
0100870008 launch_site
0100870009 space_orbit
0100870010 space_payload
0100870011 space_navigation
0100870012 space_communication
0100870013 space_observation
0100870014 space_research
0100870015 space_policy
0100870016 space_regulation
0100870017 space_governance
0100870018 space_monitoring
0100870019 space_data
0100870020 space_operations
0100870021 space_crisis
0100870022 space_collision
0100870023 space_recovery
0100870024 space_reform
0100870025 space_transition
0100870026 space_stability
0100870027 space_coordination
0100870028 space_analysis
0100870029 space_system_design
0100870030 space_system_state

# ------------------------------------------------------------
# 088_space_economy
# ------------------------------------------------------------
0100880001 space_economy
0100880002 space_market
0100880003 space_industry
0100880004 space_company
0100880005 space_service
0100880006 satellite_service
0100880007 launch_service
0100880008 space_resource
0100880009 space_mining
0100880010 space_trade
0100880011 space_investment
0100880012 space_finance
0100880013 space_business_model
0100880014 space_value_chain
0100880015 space_policy
0100880016 space_regulation
0100880017 space_governance
0100880018 space_monitoring
0100880019 space_data
0100880020 space_management
0100880021 space_crisis
0100880022 space_disruption
0100880023 space_recovery
0100880024 space_reform
0100880025 space_transition
0100880026 space_stability
0100880027 space_coordination
0100880028 space_analysis
0100880029 space_system_design
0100880030 space_system_state

# ------------------------------------------------------------
# 089_bioeconomy
# ------------------------------------------------------------
0100890001 bioeconomy
0100890002 biotechnology
0100890003 bio_industry
0100890004 bio_resource
0100890005 bio_production
0100890006 bio_product
0100890007 bio_material
0100890008 bio_energy
0100890009 bio_manufacturing
0100890010 bio_research
0100890011 bio_market
0100890012 bio_company
0100890013 bio_innovation
0100890014 bio_policy
0100890015 bio_regulation
0100890016 bio_governance
0100890017 bio_monitoring
0100890018 bio_data
0100890019 bio_management
0100890020 bio_operations
0100890021 bio_crisis
0100890022 bio_risk
0100890023 bio_recovery
0100890024 bio_reform
0100890025 bio_transition
0100890026 bio_stability
0100890027 bio_coordination
0100890028 bio_analysis
0100890029 bio_system_design
0100890030 bio_system_state

# ------------------------------------------------------------
# 090_healthcare
# ------------------------------------------------------------
0100900001 healthcare_system
0100900002 healthcare_provider
0100900003 hospital
0100900004 clinic
0100900005 healthcare_worker
0100900006 patient
0100900007 medical_service
0100900008 medical_procedure
0100900009 healthcare_infrastructure
0100900010 healthcare_delivery
0100900011 healthcare_policy
0100900012 healthcare_regulation
0100900013 healthcare_governance
0100900014 healthcare_financing
0100900015 healthcare_insurance
0100900016 healthcare_quality
0100900017 healthcare_monitoring
0100900018 healthcare_data
0100900019 healthcare_management
0100900020 healthcare_operations
0100900021 healthcare_crisis
0100900022 healthcare_outbreak
0100900023 healthcare_recovery
0100900024 healthcare_reform
0100900025 healthcare_transition
0100900026 healthcare_stability
0100900027 healthcare_coordination
0100900028 healthcare_analysis
0100900029 healthcare_system_design
0100900030 healthcare_system_state

# ------------------------------------------------------------
# 091_public_health
# ------------------------------------------------------------
0100910001 public_health_system
0100910002 public_health_agency
0100910003 disease_surveillance
0100910004 epidemic_monitoring
0100910005 outbreak_detection
0100910006 vaccination_program
0100910007 public_health_policy
0100910008 public_health_regulation
0100910009 health_promotion
0100910010 health_prevention
0100910011 epidemiology
0100910012 population_health
0100910013 health_risk
0100910014 health_indicator
0100910015 health_data
0100910016 health_monitoring
0100910017 health_infrastructure
0100910018 health_response
0100910019 health_management
0100910020 health_governance
0100910021 public_health_crisis
0100910022 pandemic_event
0100910023 public_health_recovery
0100910024 public_health_reform
0100910025 public_health_transition
0100910026 public_health_stability
0100910027 public_health_coordination
0100910028 public_health_analysis
0100910029 public_health_system_design
0100910030 public_health_system_state

# ------------------------------------------------------------
# 092_social_welfare
# ------------------------------------------------------------
0100920001 social_welfare
0100920002 welfare_system
0100920003 welfare_program
0100920004 welfare_benefit
0100920005 welfare_recipient
0100920006 welfare_agency
0100920007 welfare_service
0100920008 welfare_policy
0100920009 welfare_regulation
0100920010 welfare_management
0100920011 social_support
0100920012 social_protection
0100920013 income_support
0100920014 disability_support
0100920015 elderly_support
0100920016 family_support
0100920017 welfare_financing
0100920018 welfare_monitoring
0100920019 welfare_data
0100920020 welfare_governance
0100920021 welfare_crisis
0100920022 welfare_shortage
0100920023 welfare_recovery
0100920024 welfare_reform
0100920025 welfare_transition
0100920026 welfare_stability
0100920027 welfare_coordination
0100920028 welfare_analysis
0100920029 welfare_system_design
0100920030 welfare_system_state

# ------------------------------------------------------------
# 093_housing
# ------------------------------------------------------------
0100930001 housing_system
0100930002 housing_unit
0100930003 housing_market
0100930004 housing_supply
0100930005 housing_demand
0100930006 housing_policy
0100930007 housing_regulation
0100930008 housing_development
0100930009 housing_management
0100930010 housing_financing
0100930011 housing_mortgage
0100930012 housing_subsidy
0100930013 housing_affordability
0100930014 housing_quality
0100930015 housing_infrastructure
0100930016 housing_planning
0100930017 housing_monitoring
0100930018 housing_data
0100930019 housing_governance
0100930020 housing_service
0100930021 housing_crisis
0100930022 housing_shortage
0100930023 housing_recovery
0100930024 housing_reform
0100930025 housing_transition
0100930026 housing_stability
0100930027 housing_coordination
0100930028 housing_analysis
0100930029 housing_system_design
0100930030 housing_system_state

# ------------------------------------------------------------
# 094_religion
# ------------------------------------------------------------
0100940001 religion
0100940002 religious_institution
0100940003 religious_organization
0100940004 religious_leader
0100940005 religious_member
0100940006 religious_community
0100940007 religious_practice
0100940008 religious_ritual
0100940009 religious_belief
0100940010 religious_tradition
0100940011 religious_authority
0100940012 religious_law
0100940013 religious_event
0100940014 religious_network
0100940015 religious_influence
0100940016 religious_conflict
0100940017 religious_policy
0100940018 religious_regulation
0100940019 religious_monitoring
0100940020 religious_data
0100940021 religious_crisis
0100940022 religious_reform
0100940023 religious_transition
0100940024 religious_stability
0100940025 religious_coordination
0100940026 religious_analysis
0100940027 religious_governance
0100940028 religious_management
0100940029 religious_system_design
0100940030 religious_system_state

# ------------------------------------------------------------
# 095_civil_society
# ------------------------------------------------------------
0100950001 civil_society
0100950002 civic_organization
0100950003 non_profit
0100950004 ngo
0100950005 volunteer
0100950006 civic_network
0100950007 civic_participation
0100950008 civic_engagement
0100950009 civic_initiative
0100950010 civic_movement
0100950011 civic_leadership
0100950012 civic_service
0100950013 civic_program
0100950014 civic_support
0100950015 civic_policy
0100950016 civic_regulation
0100950017 civic_monitoring
0100950018 civic_data
0100950019 civic_governance
0100950020 civic_management
0100950021 civic_crisis
0100950022 civic_conflict
0100950023 civic_recovery
0100950024 civic_reform
0100950025 civic_transition
0100950026 civic_stability
0100950027 civic_coordination
0100950028 civic_analysis
0100950029 civic_system_design
0100950030 civic_system_state

# ------------------------------------------------------------
# 096_media
# ------------------------------------------------------------
0100960001 media
0100960002 media_platform
0100960003 media_company
0100960004 media_content
0100960005 media_distribution
0100960006 media_channel
0100960007 media_network
0100960008 media_audience
0100960009 media_market
0100960010 media_service
0100960011 journalism
0100960012 news_system
0100960013 media_regulation
0100960014 media_policy
0100960015 media_governance
0100960016 media_monitoring
0100960017 media_data
0100960018 media_management
0100960019 media_operations
0100960020 media_infrastructure
0100960021 media_crisis
0100960022 media_disruption
0100960023 media_recovery
0100960024 media_reform
0100960025 media_transition
0100960026 media_stability
0100960027 media_coordination
0100960028 media_analysis
0100960029 media_system_design
0100960030 media_system_state

# ------------------------------------------------------------
# 097_culture
# ------------------------------------------------------------
0100970001 culture
0100970002 cultural_system
0100970003 cultural_institution
0100970004 cultural_heritage
0100970005 cultural_tradition
0100970006 cultural_expression
0100970007 cultural_event
0100970008 cultural_program
0100970009 cultural_network
0100970010 cultural_community
0100970011 cultural_policy
0100970012 cultural_regulation
0100970013 cultural_governance
0100970014 cultural_monitoring
0100970015 cultural_data
0100970016 cultural_management
0100970017 cultural_service
0100970018 cultural_infrastructure
0100970019 cultural_market
0100970020 cultural_innovation
0100970021 cultural_crisis
0100970022 cultural_conflict
0100970023 cultural_recovery
0100970024 cultural_reform
0100970025 cultural_transition
0100970026 cultural_stability
0100970027 cultural_coordination
0100970028 cultural_analysis
0100970029 cultural_system_design
0100970030 cultural_system_state

# ------------------------------------------------------------
# 098_entertainment
# ------------------------------------------------------------
0100980001 entertainment
0100980002 entertainment_industry
0100980003 entertainment_company
0100980004 entertainment_platform
0100980005 entertainment_content
0100980006 entertainment_event
0100980007 entertainment_market
0100980008 entertainment_distribution
0100980009 entertainment_audience
0100980010 entertainment_service
0100980011 entertainment_production
0100980012 entertainment_program
0100980013 entertainment_network
0100980014 entertainment_policy
0100980015 entertainment_regulation
0100980016 entertainment_governance
0100980017 entertainment_monitoring
0100980018 entertainment_data
0100980019 entertainment_management
0100980020 entertainment_operations
0100980021 entertainment_crisis
0100980022 entertainment_disruption
0100980023 entertainment_recovery
0100980024 entertainment_reform
0100980025 entertainment_transition
0100980026 entertainment_stability
0100980027 entertainment_coordination
0100980028 entertainment_analysis
0100980029 entertainment_system_design
0100980030 entertainment_system_state

# ------------------------------------------------------------
# 099_sports
# ------------------------------------------------------------
0100990001 sports
0100990002 sports_organization
0100990003 sports_league
0100990004 sports_team
0100990005 athlete
0100990006 sports_event
0100990007 sports_competition
0100990008 sports_facility
0100990009 sports_market
0100990010 sports_service
0100990011 sports_training
0100990012 sports_performance
0100990013 sports_management
0100990014 sports_policy
0100990015 sports_regulation
0100990016 sports_governance
0100990017 sports_monitoring
0100990018 sports_data
0100990019 sports_infrastructure
0100990020 sports_program
0100990021 sports_crisis
0100990022 sports_disruption
0100990023 sports_recovery
0100990024 sports_reform
0100990025 sports_transition
0100990026 sports_stability
0100990027 sports_coordination
0100990028 sports_analysis
0100990029 sports_system_design
0100990030 sports_system_state

# ------------------------------------------------------------
# 100_tourism
# ------------------------------------------------------------
0101000001 tourism
0101000002 tourism_industry
0101000003 tourism_destination
0101000004 tourism_service
0101000005 tourism_operator
0101000006 tourism_market
0101000007 tourism_flow
0101000008 tourism_infrastructure
0101000009 tourism_facility
0101000010 tourism_experience
0101000011 tourism_policy
0101000012 tourism_regulation
0101000013 tourism_governance
0101000014 tourism_monitoring
0101000015 tourism_data
0101000016 tourism_management
0101000017 tourism_program
0101000018 tourism_network
0101000019 tourism_platform
0101000020 tourism_investment
0101000021 tourism_crisis
0101000022 tourism_disruption
0101000023 tourism_recovery
0101000024 tourism_reform
0101000025 tourism_transition
0101000026 tourism_stability
0101000027 tourism_coordination
0101000028 tourism_analysis
0101000029 tourism_system_design
0101000030 tourism_system_state

# ------------------------------------------------------------
# 101_hospitality
# ------------------------------------------------------------
0101010001 hospitality_system
0101010002 hospitality_structure
0101010003 hospitality_network
0101010004 hospitality_institution
0101010005 hospitality_actor
0101010006 hospitality_organization
0101010007 hospitality_process
0101010008 hospitality_operation
0101010009 hospitality_service
0101010010 hospitality_market
0101010011 hospitality_policy
0101010012 hospitality_regulation
0101010013 hospitality_governance
0101010014 hospitality_management
0101010015 hospitality_coordination
0101010016 hospitality_monitoring
0101010017 hospitality_data
0101010018 hospitality_analysis
0101010019 hospitality_infrastructure
0101010020 hospitality_platform
0101010021 hospitality_crisis
0101010022 hospitality_disruption
0101010023 hospitality_recovery
0101010024 hospitality_reform
0101010025 hospitality_transition
0101010026 hospitality_stability
0101010027 hospitality_risk
0101010028 hospitality_capacity
0101010029 hospitality_system_design
0101010030 hospitality_system_state

# ------------------------------------------------------------
# 102_resource_economy
# ------------------------------------------------------------
0101020001 resource_economy_system
0101020002 resource_economy_structure
0101020003 resource_economy_network
0101020004 resource_economy_institution
0101020005 resource_economy_actor
0101020006 resource_economy_organization
0101020007 resource_economy_process
0101020008 resource_economy_operation
0101020009 resource_economy_service
0101020010 resource_economy_market
0101020011 resource_economy_policy
0101020012 resource_economy_regulation
0101020013 resource_economy_governance
0101020014 resource_economy_management
0101020015 resource_economy_coordination
0101020016 resource_economy_monitoring
0101020017 resource_economy_data
0101020018 resource_economy_analysis
0101020019 resource_economy_infrastructure
0101020020 resource_economy_platform
0101020021 resource_economy_crisis
0101020022 resource_economy_disruption
0101020023 resource_economy_recovery
0101020024 resource_economy_reform
0101020025 resource_economy_transition
0101020026 resource_economy_stability
0101020027 resource_economy_risk
0101020028 resource_economy_capacity
0101020029 resource_economy_system_design
0101020030 resource_economy_system_state

# ------------------------------------------------------------
# 103_circular_economy
# ------------------------------------------------------------
0101030001 circular_economy_system
0101030002 circular_economy_structure
0101030003 circular_economy_network
0101030004 circular_economy_institution
0101030005 circular_economy_actor
0101030006 circular_economy_organization
0101030007 circular_economy_process
0101030008 circular_economy_operation
0101030009 circular_economy_service
0101030010 circular_economy_market
0101030011 circular_economy_policy
0101030012 circular_economy_regulation
0101030013 circular_economy_governance
0101030014 circular_economy_management
0101030015 circular_economy_coordination
0101030016 circular_economy_monitoring
0101030017 circular_economy_data
0101030018 circular_economy_analysis
0101030019 circular_economy_infrastructure
0101030020 circular_economy_platform
0101030021 circular_economy_crisis
0101030022 circular_economy_disruption
0101030023 circular_economy_recovery
0101030024 circular_economy_reform
0101030025 circular_economy_transition
0101030026 circular_economy_stability
0101030027 circular_economy_risk
0101030028 circular_economy_capacity
0101030029 circular_economy_system_design
0101030030 circular_economy_system_state

# ------------------------------------------------------------
# 104_marine
# ------------------------------------------------------------
0101040001 marine_system
0101040002 marine_structure
0101040003 marine_network
0101040004 marine_institution
0101040005 marine_actor
0101040006 marine_organization
0101040007 marine_process
0101040008 marine_operation
0101040009 marine_service
0101040010 marine_market
0101040011 marine_policy
0101040012 marine_regulation
0101040013 marine_governance
0101040014 marine_management
0101040015 marine_coordination
0101040016 marine_monitoring
0101040017 marine_data
0101040018 marine_analysis
0101040019 marine_infrastructure
0101040020 marine_platform
0101040021 marine_crisis
0101040022 marine_disruption
0101040023 marine_recovery
0101040024 marine_reform
0101040025 marine_transition
0101040026 marine_stability
0101040027 marine_risk
0101040028 marine_capacity
0101040029 marine_system_design
0101040030 marine_system_state

# ------------------------------------------------------------
# 105_ocean_trade
# ------------------------------------------------------------
0101050001 ocean_trade_system
0101050002 ocean_trade_structure
0101050003 ocean_trade_network
0101050004 ocean_trade_institution
0101050005 ocean_trade_actor
0101050006 ocean_trade_organization
0101050007 ocean_trade_process
0101050008 ocean_trade_operation
0101050009 ocean_trade_service
0101050010 ocean_trade_market
0101050011 ocean_trade_policy
0101050012 ocean_trade_regulation
0101050013 ocean_trade_governance
0101050014 ocean_trade_management
0101050015 ocean_trade_coordination
0101050016 ocean_trade_monitoring
0101050017 ocean_trade_data
0101050018 ocean_trade_analysis
0101050019 ocean_trade_infrastructure
0101050020 ocean_trade_platform
0101050021 ocean_trade_crisis
0101050022 ocean_trade_disruption
0101050023 ocean_trade_recovery
0101050024 ocean_trade_reform
0101050025 ocean_trade_transition
0101050026 ocean_trade_stability
0101050027 ocean_trade_risk
0101050028 ocean_trade_capacity
0101050029 ocean_trade_system_design
0101050030 ocean_trade_system_state

# ------------------------------------------------------------
# 106_platform_economy
# ------------------------------------------------------------
0101060001 platform_economy_system
0101060002 platform_economy_structure
0101060003 platform_economy_network
0101060004 platform_economy_institution
0101060005 platform_economy_actor
0101060006 platform_economy_organization
0101060007 platform_economy_process
0101060008 platform_economy_operation
0101060009 platform_economy_service
0101060010 platform_economy_market
0101060011 platform_economy_policy
0101060012 platform_economy_regulation
0101060013 platform_economy_governance
0101060014 platform_economy_management
0101060015 platform_economy_coordination
0101060016 platform_economy_monitoring
0101060017 platform_economy_data
0101060018 platform_economy_analysis
0101060019 platform_economy_infrastructure
0101060020 platform_economy_platform
0101060021 platform_economy_crisis
0101060022 platform_economy_disruption
0101060023 platform_economy_recovery
0101060024 platform_economy_reform
0101060025 platform_economy_transition
0101060026 platform_economy_stability
0101060027 platform_economy_risk
0101060028 platform_economy_capacity
0101060029 platform_economy_system_design
0101060030 platform_economy_system_state

# ------------------------------------------------------------
# 107_digital_government
# ------------------------------------------------------------
0101070001 digital_government_system
0101070002 digital_government_structure
0101070003 digital_government_network
0101070004 digital_government_institution
0101070005 digital_government_actor
0101070006 digital_government_organization
0101070007 digital_government_process
0101070008 digital_government_operation
0101070009 digital_government_service
0101070010 digital_government_market
0101070011 digital_government_policy
0101070012 digital_government_regulation
0101070013 digital_government_governance
0101070014 digital_government_management
0101070015 digital_government_coordination
0101070016 digital_government_monitoring
0101070017 digital_government_data
0101070018 digital_government_analysis
0101070019 digital_government_infrastructure
0101070020 digital_government_platform
0101070021 digital_government_crisis
0101070022 digital_government_disruption
0101070023 digital_government_recovery
0101070024 digital_government_reform
0101070025 digital_government_transition
0101070026 digital_government_stability
0101070027 digital_government_risk
0101070028 digital_government_capacity
0101070029 digital_government_system_design
0101070030 digital_government_system_state

# ------------------------------------------------------------
# 108_standards
# ------------------------------------------------------------
0101080001 standards_system
0101080002 standards_structure
0101080003 standards_network
0101080004 standards_institution
0101080005 standards_actor
0101080006 standards_organization
0101080007 standards_process
0101080008 standards_operation
0101080009 standards_service
0101080010 standards_market
0101080011 standards_policy
0101080012 standards_regulation
0101080013 standards_governance
0101080014 standards_management
0101080015 standards_coordination
0101080016 standards_monitoring
0101080017 standards_data
0101080018 standards_analysis
0101080019 standards_infrastructure
0101080020 standards_platform
0101080021 standards_crisis
0101080022 standards_disruption
0101080023 standards_recovery
0101080024 standards_reform
0101080025 standards_transition
0101080026 standards_stability
0101080027 standards_risk
0101080028 standards_capacity
0101080029 standards_system_design
0101080030 standards_system_state

# ------------------------------------------------------------
# 109_intellectual_property
# ------------------------------------------------------------
0101090001 intellectual_property_system
0101090002 intellectual_property_structure
0101090003 intellectual_property_network
0101090004 intellectual_property_institution
0101090005 intellectual_property_actor
0101090006 intellectual_property_organization
0101090007 intellectual_property_process
0101090008 intellectual_property_operation
0101090009 intellectual_property_service
0101090010 intellectual_property_market
0101090011 intellectual_property_policy
0101090012 intellectual_property_regulation
0101090013 intellectual_property_governance
0101090014 intellectual_property_management
0101090015 intellectual_property_coordination
0101090016 intellectual_property_monitoring
0101090017 intellectual_property_data
0101090018 intellectual_property_analysis
0101090019 intellectual_property_infrastructure
0101090020 intellectual_property_platform
0101090021 intellectual_property_crisis
0101090022 intellectual_property_disruption
0101090023 intellectual_property_recovery
0101090024 intellectual_property_reform
0101090025 intellectual_property_transition
0101090026 intellectual_property_stability
0101090027 intellectual_property_risk
0101090028 intellectual_property_capacity
0101090029 intellectual_property_system_design
0101090030 intellectual_property_system_state

# ------------------------------------------------------------
# 110_consumer_protection
# ------------------------------------------------------------
0101100001 consumer_protection_system
0101100002 consumer_protection_structure
0101100003 consumer_protection_network
0101100004 consumer_protection_institution
0101100005 consumer_protection_actor
0101100006 consumer_protection_organization
0101100007 consumer_protection_process
0101100008 consumer_protection_operation
0101100009 consumer_protection_service
0101100010 consumer_protection_market
0101100011 consumer_protection_policy
0101100012 consumer_protection_regulation
0101100013 consumer_protection_governance
0101100014 consumer_protection_management
0101100015 consumer_protection_coordination
0101100016 consumer_protection_monitoring
0101100017 consumer_protection_data
0101100018 consumer_protection_analysis
0101100019 consumer_protection_infrastructure
0101100020 consumer_protection_platform
0101100021 consumer_protection_crisis
0101100022 consumer_protection_disruption
0101100023 consumer_protection_recovery
0101100024 consumer_protection_reform
0101100025 consumer_protection_transition
0101100026 consumer_protection_stability
0101100027 consumer_protection_risk
0101100028 consumer_protection_capacity
0101100029 consumer_protection_system_design
0101100030 consumer_protection_system_state

# ------------------------------------------------------------
# 111_labor_relations
# ------------------------------------------------------------
0101110001 labor_relations_system
0101110002 labor_relations_structure
0101110003 labor_relations_network
0101110004 labor_relations_institution
0101110005 labor_relations_actor
0101110006 labor_relations_organization
0101110007 labor_relations_process
0101110008 labor_relations_operation
0101110009 labor_relations_service
0101110010 labor_relations_market
0101110011 labor_relations_policy
0101110012 labor_relations_regulation
0101110013 labor_relations_governance
0101110014 labor_relations_management
0101110015 labor_relations_coordination
0101110016 labor_relations_monitoring
0101110017 labor_relations_data
0101110018 labor_relations_analysis
0101110019 labor_relations_infrastructure
0101110020 labor_relations_platform
0101110021 labor_relations_crisis
0101110022 labor_relations_disruption
0101110023 labor_relations_recovery
0101110024 labor_relations_reform
0101110025 labor_relations_transition
0101110026 labor_relations_stability
0101110027 labor_relations_risk
0101110028 labor_relations_capacity
0101110029 labor_relations_system_design
0101110030 labor_relations_system_state

# ------------------------------------------------------------
# 112_development_finance
# ------------------------------------------------------------
0101120001 development_finance_system
0101120002 development_finance_structure
0101120003 development_finance_network
0101120004 development_finance_institution
0101120005 development_finance_actor
0101120006 development_finance_organization
0101120007 development_finance_process
0101120008 development_finance_operation
0101120009 development_finance_service
0101120010 development_finance_market
0101120011 development_finance_policy
0101120012 development_finance_regulation
0101120013 development_finance_governance
0101120014 development_finance_management
0101120015 development_finance_coordination
0101120016 development_finance_monitoring
0101120017 development_finance_data
0101120018 development_finance_analysis
0101120019 development_finance_infrastructure
0101120020 development_finance_platform
0101120021 development_finance_crisis
0101120022 development_finance_disruption
0101120023 development_finance_recovery
0101120024 development_finance_reform
0101120025 development_finance_transition
0101120026 development_finance_stability
0101120027 development_finance_risk
0101120028 development_finance_capacity
0101120029 development_finance_system_design
0101120030 development_finance_system_state

# ------------------------------------------------------------
# 113_knowledge_economy
# ------------------------------------------------------------
0101130001 knowledge_economy_system
0101130002 knowledge_economy_structure
0101130003 knowledge_economy_network
0101130004 knowledge_economy_institution
0101130005 knowledge_economy_actor
0101130006 knowledge_economy_organization
0101130007 knowledge_economy_process
0101130008 knowledge_economy_operation
0101130009 knowledge_economy_service
0101130010 knowledge_economy_market
0101130011 knowledge_economy_policy
0101130012 knowledge_economy_regulation
0101130013 knowledge_economy_governance
0101130014 knowledge_economy_management
0101130015 knowledge_economy_coordination
0101130016 knowledge_economy_monitoring
0101130017 knowledge_economy_data
0101130018 knowledge_economy_analysis
0101130019 knowledge_economy_infrastructure
0101130020 knowledge_economy_platform
0101130021 knowledge_economy_crisis
0101130022 knowledge_economy_disruption
0101130023 knowledge_economy_recovery
0101130024 knowledge_economy_reform
0101130025 knowledge_economy_transition
0101130026 knowledge_economy_stability
0101130027 knowledge_economy_risk
0101130028 knowledge_economy_capacity
0101130029 knowledge_economy_system_design
0101130030 knowledge_economy_system_state

# ------------------------------------------------------------
# 114_financial_stability
# ------------------------------------------------------------
0101140001 financial_stability_system
0101140002 financial_stability_structure
0101140003 financial_stability_network
0101140004 financial_stability_institution
0101140005 financial_stability_actor
0101140006 financial_stability_organization
0101140007 financial_stability_process
0101140008 financial_stability_operation
0101140009 financial_stability_service
0101140010 financial_stability_market
0101140011 financial_stability_policy
0101140012 financial_stability_regulation
0101140013 financial_stability_governance
0101140014 financial_stability_management
0101140015 financial_stability_coordination
0101140016 financial_stability_monitoring
0101140017 financial_stability_data
0101140018 financial_stability_analysis
0101140019 financial_stability_infrastructure
0101140020 financial_stability_platform
0101140021 financial_stability_crisis
0101140022 financial_stability_disruption
0101140023 financial_stability_recovery
0101140024 financial_stability_reform
0101140025 financial_stability_transition
0101140026 financial_stability_stability
0101140027 financial_stability_risk
0101140028 financial_stability_capacity
0101140029 financial_stability_system_design
0101140030 financial_stability_system_state

# ------------------------------------------------------------
# 115_human_capital
# ------------------------------------------------------------
0101150001 human_capital_system
0101150002 human_capital_structure
0101150003 human_capital_network
0101150004 human_capital_institution
0101150005 human_capital_actor
0101150006 human_capital_organization
0101150007 human_capital_process
0101150008 human_capital_operation
0101150009 human_capital_service
0101150010 human_capital_market
0101150011 human_capital_policy
0101150012 human_capital_regulation
0101150013 human_capital_governance
0101150014 human_capital_management
0101150015 human_capital_coordination
0101150016 human_capital_monitoring
0101150017 human_capital_data
0101150018 human_capital_analysis
0101150019 human_capital_infrastructure
0101150020 human_capital_platform
0101150021 human_capital_crisis
0101150022 human_capital_disruption
0101150023 human_capital_recovery
0101150024 human_capital_reform
0101150025 human_capital_transition
0101150026 human_capital_stability
0101150027 human_capital_risk
0101150028 human_capital_capacity
0101150029 human_capital_system_design
0101150030 human_capital_system_state

# ------------------------------------------------------------
# 116_global_crisis
# ------------------------------------------------------------
0101160001 global_crisis_system
0101160002 global_crisis_structure
0101160003 global_crisis_network
0101160004 global_crisis_institution
0101160005 global_crisis_actor
0101160006 global_crisis_organization
0101160007 global_crisis_process
0101160008 global_crisis_operation
0101160009 global_crisis_service
0101160010 global_crisis_market
0101160011 global_crisis_policy
0101160012 global_crisis_regulation
0101160013 global_crisis_governance
0101160014 global_crisis_management
0101160015 global_crisis_coordination
0101160016 global_crisis_monitoring
0101160017 global_crisis_data
0101160018 global_crisis_analysis
0101160019 global_crisis_infrastructure
0101160020 global_crisis_platform
0101160021 global_crisis_crisis
0101160022 global_crisis_disruption
0101160023 global_crisis_recovery
0101160024 global_crisis_reform
0101160025 global_crisis_transition
0101160026 global_crisis_stability
0101160027 global_crisis_risk
0101160028 global_crisis_capacity
0101160029 global_crisis_system_design
0101160030 global_crisis_system_state

# ------------------------------------------------------------
# 117_democratic_system
# ------------------------------------------------------------
0101170001 democratic_system_system
0101170002 democratic_system_structure
0101170003 democratic_system_network
0101170004 democratic_system_institution
0101170005 democratic_system_actor
0101170006 democratic_system_organization
0101170007 democratic_system_process
0101170008 democratic_system_operation
0101170009 democratic_system_service
0101170010 democratic_system_market
0101170011 democratic_system_policy
0101170012 democratic_system_regulation
0101170013 democratic_system_governance
0101170014 democratic_system_management
0101170015 democratic_system_coordination
0101170016 democratic_system_monitoring
0101170017 democratic_system_data
0101170018 democratic_system_analysis
0101170019 democratic_system_infrastructure
0101170020 democratic_system_platform
0101170021 democratic_system_crisis
0101170022 democratic_system_disruption
0101170023 democratic_system_recovery
0101170024 democratic_system_reform
0101170025 democratic_system_transition
0101170026 democratic_system_stability
0101170027 democratic_system_risk
0101170028 democratic_system_capacity
0101170029 democratic_system_system_design
0101170030 democratic_system_system_state

# ------------------------------------------------------------
# 118_geopolitics
# ------------------------------------------------------------
0101180001 geopolitics_system
0101180002 geopolitics_structure
0101180003 geopolitics_network
0101180004 geopolitics_institution
0101180005 geopolitics_actor
0101180006 geopolitics_organization
0101180007 geopolitics_process
0101180008 geopolitics_operation
0101180009 geopolitics_service
0101180010 geopolitics_market
0101180011 geopolitics_policy
0101180012 geopolitics_regulation
0101180013 geopolitics_governance
0101180014 geopolitics_management
0101180015 geopolitics_coordination
0101180016 geopolitics_monitoring
0101180017 geopolitics_data
0101180018 geopolitics_analysis
0101180019 geopolitics_infrastructure
0101180020 geopolitics_platform
0101180021 geopolitics_crisis
0101180022 geopolitics_disruption
0101180023 geopolitics_recovery
0101180024 geopolitics_reform
0101180025 geopolitics_transition
0101180026 geopolitics_stability
0101180027 geopolitics_risk
0101180028 geopolitics_capacity
0101180029 geopolitics_system_design
0101180030 geopolitics_system_state

# ------------------------------------------------------------
# 119_global_trade_system
# ------------------------------------------------------------
0101190001 global_trade_system_system
0101190002 global_trade_system_structure
0101190003 global_trade_system_network
0101190004 global_trade_system_institution
0101190005 global_trade_system_actor
0101190006 global_trade_system_organization
0101190007 global_trade_system_process
0101190008 global_trade_system_operation
0101190009 global_trade_system_service
0101190010 global_trade_system_market
0101190011 global_trade_system_policy
0101190012 global_trade_system_regulation
0101190013 global_trade_system_governance
0101190014 global_trade_system_management
0101190015 global_trade_system_coordination
0101190016 global_trade_system_monitoring
0101190017 global_trade_system_data
0101190018 global_trade_system_analysis
0101190019 global_trade_system_infrastructure
0101190020 global_trade_system_platform
0101190021 global_trade_system_crisis
0101190022 global_trade_system_disruption
0101190023 global_trade_system_recovery
0101190024 global_trade_system_reform
0101190025 global_trade_system_transition
0101190026 global_trade_system_stability
0101190027 global_trade_system_risk
0101190028 global_trade_system_capacity
0101190029 global_trade_system_system_design
0101190030 global_trade_system_system_state

# ------------------------------------------------------------
# 120_civilization_meta
# ------------------------------------------------------------
0101200001 civilization_meta_system
0101200002 civilization_meta_structure
0101200003 civilization_meta_network
0101200004 civilization_meta_institution
0101200005 civilization_meta_actor
0101200006 civilization_meta_organization
0101200007 civilization_meta_process
0101200008 civilization_meta_operation
0101200009 civilization_meta_service
0101200010 civilization_meta_market
0101200011 civilization_meta_policy
0101200012 civilization_meta_regulation
0101200013 civilization_meta_governance
0101200014 civilization_meta_management
0101200015 civilization_meta_coordination
0101200016 civilization_meta_monitoring
0101200017 civilization_meta_data
0101200018 civilization_meta_analysis
0101200019 civilization_meta_infrastructure
0101200020 civilization_meta_platform
0101200021 civilization_meta_crisis
0101200022 civilization_meta_disruption
0101200023 civilization_meta_recovery
0101200024 civilization_meta_reform
0101200025 civilization_meta_transition
0101200026 civilization_meta_stability
0101200027 civilization_meta_risk
0101200028 civilization_meta_capacity
0101200029 civilization_meta_system_design
0101200030 civilization_meta_system_state

=============================================================
FILE: 0150000007_CIVILIZATION_MODEL_RELATIONS.md
=============================================================
# ============================================================
# CIVILIZATION MODEL RELATIONS
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0007

owner: Boss
prepared_by: Zero

purpose:

Define the relationship graph between
all CivilizationOS models.


# ============================================================
# RELATION TYPES
# ============================================================

dependency
governance
resource_flow
information_flow
regulation
ownership
membership
location
control


# ============================================================
# CORE CIVILIZATION RELATIONS
# ============================================================


# ------------------------------------------------------------
# GOVERNMENT STRUCTURE
# ------------------------------------------------------------

government
 -> legislative
 -> judicial
 -> public_administration
 -> military
 -> intelligence
 -> public_policy


# ------------------------------------------------------------
# ECONOMIC SYSTEM
# ------------------------------------------------------------

company
 -> labor
 -> banking
 -> taxation
 -> consumer_market
 -> supply_chain
 -> logistics


# ------------------------------------------------------------
# FINANCIAL SYSTEM
# ------------------------------------------------------------

banking
 -> central_bank
 -> payment
 -> capital_market
 -> currency


# ------------------------------------------------------------
# INFRASTRUCTURE
# ------------------------------------------------------------

infrastructure
 -> transport
 -> energy
 -> water
 -> communications


# ------------------------------------------------------------
# DIGITAL SYSTEM
# ------------------------------------------------------------

data
 -> ai
 -> cybersecurity
 -> internet
 -> telecom


# ------------------------------------------------------------
# SOCIAL SYSTEM
# ------------------------------------------------------------

education
 -> research_university
 -> science
 -> technology


healthcare
 -> public_health


media
 -> culture
 -> entertainment


# ------------------------------------------------------------
# GLOBAL SYSTEM
# ------------------------------------------------------------

nation
 -> diplomacy
 -> international_organization
 -> geopolitics
 -> global_trade_system


# ------------------------------------------------------------
# META LAYER
# ------------------------------------------------------------

civilization_meta
 -> global_crisis
 -> geopolitical_system
 -> global_trade_system


=============================================================
FILE: 0150000008_CIVILIZATION_ENTITY_MODEL.md
=============================================================
# ============================================================
# CIVILIZATION ENTITY MODEL
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0008

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the runtime entity structure
of CivilizationOS.

CivilizationOS is based on

Knowledge Graph
+
Event Driven Civilization Simulation


# ============================================================
# CORE CONCEPT
# ============================================================

Model

Defines a concept.

Example

company
nation
transport
banking


Entity

Instance of a model.

Example

Toyota
Japan
Tokyo Metro
Bank of Japan


State

Current condition of an entity.


Event

Changes entity state.


# ============================================================
# CORE STRUCTURE
# ============================================================

model
 ↓
entity
 ↓
state
 ↓
event


# ============================================================
# ENTITY STRUCTURE
# ============================================================

entity

entity_id
model_id
name
created_at
status
location
owner
metadata


# ============================================================
# STATE STRUCTURE
# ============================================================

entity_state

entity_id
state_type
state_value
valid_from
valid_to


# ============================================================
# EVENT STRUCTURE
# ============================================================

event

event_id
event_type
source_entity
target_entity
timestamp
payload


# ============================================================
# GRAPH STRUCTURE
# ============================================================

relationship

source_entity
target_entity
relation_type


# ============================================================
# EVENT TYPES
# ============================================================

creation
termination
ownership_change
location_change
state_change
policy_change
economic_transaction
conflict
cooperation


# ============================================================
# CIVILIZATION FLOW
# ============================================================

model
 ↓
entity created
 ↓
entity interacts
 ↓
events generated
 ↓
state updated
 ↓
graph evolves


# ============================================================
# SYSTEM RESULT
# ============================================================

CivilizationOS becomes

Knowledge Graph Civilization Engine



=============================================================
FILE: 0150000009_CIVILIZATION_STATE_MACHINE.md
=============================================================
# ============================================================
# CIVILIZATION STATE MACHINE
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0009

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define state transitions of CivilizationOS entities.

CivilizationOS operates as an

Event Driven Civilization Simulation Engine.


# ============================================================
# CORE STRUCTURE
# ============================================================

entity
 ↓
state
 ↓
event
 ↓
next_state


# ============================================================
# GENERIC STATES
# ============================================================

created
active
growing
stable
declining
crisis
collapsed
terminated


# ============================================================
# GENERIC EVENTS
# ============================================================

create
expand
stabilize
decline
crisis
recover
merge
split
terminate


# ============================================================
# COMPANY STATE MACHINE
# ============================================================

created
 ↓ (market_entry)

growing
 ↓ (market_expansion)

stable
 ↓ (competition_pressure)

declining
 ↓ (financial_crisis)

crisis
 ↓ (bankruptcy)

collapsed


# ============================================================
# NATION STATE MACHINE
# ============================================================

formation
 ↓ (institution_building)

expansion
 ↓ (territorial_growth)

stability
 ↓ (internal_conflict)

crisis
 ↓ (state_failure)

collapse


# ============================================================
# INFRASTRUCTURE STATE MACHINE
# ============================================================

planned
 ↓ (construction)

building
 ↓ (completion)

operational
 ↓ (aging)

degrading
 ↓ (failure)

collapsed


# ============================================================
# TECHNOLOGY STATE MACHINE
# ============================================================

concept
 ↓ (research)

prototype
 ↓ (development)

production
 ↓ (market_adoption)

mature
 ↓ (obsolescence)

obsolete


# ============================================================
# CIVILIZATION META STATE
# ============================================================

growth
 ↓

peak
 ↓

stagnation
 ↓

crisis
 ↓

transformation


# ============================================================
# SYSTEM RESULT
# ============================================================

CivilizationOS becomes a

Graph
+
State Machine
+
Event Engine

Civilization Simulation System.


=============================================================
FILE: 0150000010_CIVILIZATION_EVENT_ENGINE.md
=============================================================
# ============================================================
# CIVILIZATION EVENT ENGINE
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0010

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the event execution model of CivilizationOS.

CivilizationOS runs as:

Knowledge Graph
+
State Machine
+
Event Engine

The event engine is the runtime mechanism that
transforms civilization state over time.


# ============================================================
# CORE PRINCIPLE
# ============================================================

Nothing changes without an event.

All meaningful civilization changes must be represented
as events.

Events update:

- entity state
- model relations
- civilization indicators
- cross-domain dependencies


# ============================================================
# EVENT ENGINE FLOW
# ============================================================

trigger
 ↓
event creation
 ↓
event classification
 ↓
event validation
 ↓
severity evaluation
 ↓
propagation
 ↓
state transition
 ↓
relation update
 ↓
metric update
 ↓
history persistence


# ============================================================
# EVENT OBJECT
# ============================================================

event_id
event_type
event_domain
event_source
event_targets
event_timestamp
event_payload
event_severity
event_status
event_result


# ============================================================
# EVENT CATEGORIES
# ============================================================

entity events
state events
policy events
economic events
financial events
social events
infrastructure events
security events
civilization meta events


# ============================================================
# ENTITY EVENTS
# ============================================================

entity_created
entity_merged
entity_split
entity_moved
entity_terminated


# ============================================================
# STATE EVENTS
# ============================================================

state_entered
state_exited
state_changed
state_degraded
state_recovered


# ============================================================
# POLICY EVENTS
# ============================================================

policy_created
policy_updated
policy_enforced
policy_repealed
policy_failed


# ============================================================
# ECONOMIC EVENTS
# ============================================================

market_entry
market_exit
trade_disruption
supply_shortage
inflation_shock
demand_surge
production_decline


# ============================================================
# FINANCIAL EVENTS
# ============================================================

bank_failure
liquidity_crisis
credit_contraction
currency_devaluation
market_crash
bond_default
payment_disruption


# ============================================================
# SOCIAL EVENTS
# ============================================================

migration_wave
population_decline
population_growth
education_disruption
health_outbreak
housing_shortage
welfare_expansion


# ============================================================
# INFRASTRUCTURE EVENTS
# ============================================================

grid_failure
transport_disruption
water_shortage
network_outage
construction_delay
logistics_breakdown


# ============================================================
# SECURITY EVENTS
# ============================================================

border_incident
crime_wave
military_conflict
intelligence_alert
cyber_attack
emergency_declaration


# ============================================================
# CIVILIZATION META EVENTS
# ============================================================

systemic_crisis
civilization_transition
global_realignment
multi-domain shock
civilization_recovery
civilization_transformation


# ============================================================
# EVENT VALIDATION
# ============================================================

Before execution, every event must validate:

- source exists
- target exists
- relation is allowed
- transition is valid
- severity is assigned
- propagation targets are resolvable


# ============================================================
# EVENT SEVERITY
# ============================================================

S0 informational
S1 minor
S2 moderate
S3 major
S4 critical
S5 civilization threat


# ============================================================
# PROPAGATION MODEL
# ============================================================

Events may propagate through:

direct dependency
resource flow
information flow
institutional control
geographic adjacency
policy cascade
financial contagion
social contagion


# ============================================================
# PROPAGATION RULE
# ============================================================

Propagation must be deterministic.

An event may only propagate through
declared model relations.

No hidden propagation is allowed.


# ============================================================
# STATE TRANSITION INTEGRATION
# ============================================================

Each event may trigger one or more state changes.

Example

company
 stable
  ↓ event: liquidity_crisis
 crisis

nation
 stability
  ↓ event: internal_conflict
 crisis

infrastructure
 operational
  ↓ event: grid_failure
 degraded


# ============================================================
# RELATION UPDATE
# ============================================================

Events may also modify graph relations.

Example

trade_agreement_signed
 → create relation between nations

bankruptcy
 → remove active market relation

migration_wave
 → increase population relation between region and nation


# ============================================================
# METRIC UPDATE
# ============================================================

After event execution, update:

population metrics
economic metrics
financial metrics
infrastructure metrics
security metrics
civilization-level metrics


# ============================================================
# EVENT HISTORY
# ============================================================

Every event must be retained in history.

History supports:

- auditability
- causality tracing
- simulation replay
- civilization timeline reconstruction


# ============================================================
# EVENT ENGINE MODES
# ============================================================

real-time mode
scheduled mode
batch simulation mode
scenario mode
historical replay mode


# ============================================================
# FAILURE HANDLING
# ============================================================

If an event cannot be executed:

- mark failed
- retain payload
- record reason
- prevent silent mutation

No event may disappear without trace.


# ============================================================
# CORE RESULT
# ============================================================

CivilizationOS becomes a system where

models define concepts
entities instantiate concepts
states define condition
events create change
relations carry consequences

This event engine is the operational heart
of civilization simulation.


# ============================================================
# END
# ============================================================

=============================================================
FILE: 0150000010_CIVILIZATION_MODEL_LAYER_ARCHITECTURE.md
=============================================================
# ============================================================
# CIVILIZATION MODEL LAYER ARCHITECTURE
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0010
scope: civilization.model.layer-architecture
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define how civilization models are layered.


# ============================================================
# LAYER STRUCTURE
# ============================================================

CivilizationOS model layer has four conceptual levels.

Level 1
primitive layer

Level 2
domain layer

Level 3
model layer

Level 4
data realization layer


# ============================================================
# LEVEL 1
# PRIMITIVE LAYER
# ============================================================

The smallest conceptual building blocks.

space
person
social_structure
resource
event
rule
state


# ============================================================
# LEVEL 2
# DOMAIN LAYER
# ============================================================

The 120 domain partitions.

Examples

world
region
nation
government
economy
banking
education
healthcare
security


# ============================================================
# LEVEL 3
# MODEL LAYER
# ============================================================

The actual reusable conceptual model definitions.

Examples

country
citizenship
bank
loan
hospital
school
labor_market
trade_flow
energy_grid


# ============================================================
# LEVEL 4
# DATA REALIZATION LAYER
# ============================================================

Real-world instances and variants.

Examples

Japan
France
NASDAQ
Toyota
Tokyo University
US federal funds rate
Tokyo metropolitan government


# ============================================================
# MACRO / MESO / MICRO
# ============================================================

macro
world, region, nation, civilization-wide systems

meso
institution, market, organization, infrastructure systems

micro
person, household, local interaction systems


# ============================================================
# LAYER RULE
# ============================================================

A model must not try to represent
all four levels at once.

Bad example

banking_system_as_every_bank_variant_and_every_country_rule

Good example

banking_system
bank
bank_account
loan
deposit
bank_regulation

Country-specific detail goes to data or policy rules.


# ============================================================
# END
# ============================================================

=============================================================
FILE: 0150000011_CIVILIZATION_SIMULATION_LOOP.md
=============================================================
# ============================================================
# CIVILIZATION SIMULATION LOOP
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0011

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the simulation cycle of CivilizationOS.

CivilizationOS advances through repeated
simulation loops.

Each loop processes events, propagates impact,
updates states, recalculates indicators,
and records the resulting civilization snapshot.


# ============================================================
# CORE LOOP
# ============================================================

tick_start
 ↓
ingest_events
 ↓
validate_events
 ↓
classify_events
 ↓
evaluate_severity
 ↓
propagate_effects
 ↓
execute_state_transitions
 ↓
update_relations
 ↓
recalculate_metrics
 ↓
commit_snapshot
 ↓
tick_end


# ============================================================
# TICK CONCEPT
# ============================================================

A tick is one simulation step.

A tick may represent:

- real time
- daily cycle
- monthly cycle
- yearly cycle
- scenario step
- replay step


# ============================================================
# LOOP INPUTS
# ============================================================

inputs to a tick:

pending events
scheduled events
scenario events
policy updates
external shocks
state carry-over from previous tick


# ============================================================
# LOOP OUTPUTS
# ============================================================

outputs of a tick:

new entity states
new relations
updated indicators
generated follow-up events
snapshot of civilization state
history records


# ============================================================
# PHASE 1
# EVENT INGESTION
# ============================================================

collect all events relevant to the tick

sources:

manual events
scheduled events
generated cascade events
policy events
scenario injections


# ============================================================
# PHASE 2
# EVENT VALIDATION
# ============================================================

validation checks:

source exists
target exists
event type allowed
state transition allowed
relation path available
severity computable


# ============================================================
# PHASE 3
# EVENT CLASSIFICATION
# ============================================================

classify events by:

domain
scope
severity
locality
propagation type
state impact type


# ============================================================
# PHASE 4
# SEVERITY EVALUATION
# ============================================================

severity levels:

S0 informational
S1 minor
S2 moderate
S3 major
S4 critical
S5 civilization threat

severity dimensions:

population impact
territorial spread
economic loss
institutional instability
infrastructure damage
security escalation
cascade potential


# ============================================================
# PHASE 5
# PROPAGATION
# ============================================================

propagation follows declared relations only.

allowed propagation paths:

dependency
resource_flow
information_flow
institutional_control
financial_contagion
geographic_adjacency
policy_cascade
social_contagion


# ============================================================
# PHASE 6
# STATE TRANSITION
# ============================================================

state updates occur after propagation is resolved.

example:

company stable
 + liquidity_crisis
 -> company crisis

nation stability
 + internal_conflict
 -> nation crisis

power_grid operational
 + grid_failure
 -> power_grid degraded


# ============================================================
# PHASE 7
# RELATION UPDATE
# ============================================================

events may create, strengthen, weaken,
or remove relations.

examples:

trade_agreement_signed
-> add trade relation

migration_wave
-> strengthen region-population relation

bankruptcy
-> remove active commercial relation


# ============================================================
# PHASE 8
# METRIC RECALCULATION
# ============================================================

update:

population metrics
economic metrics
financial metrics
infrastructure metrics
security metrics
civilization metrics

all metrics are derived from updated state.


# ============================================================
# PHASE 9
# SNAPSHOT COMMIT
# ============================================================

at the end of each tick, create a snapshot.

snapshot contains:

tick id
entity state summary
relation summary
metric summary
critical events
system status


# ============================================================
# LOOP MODES
# ============================================================

real-time loop
scheduled loop
historical replay loop
scenario loop
stress-test loop
policy experiment loop


# ============================================================
# LOOP GUARDRails
# ============================================================

no hidden mutation

no uncited propagation path

no state update without triggering event

no snapshot omission

no failed event loss


# ============================================================
# RESULT
# ============================================================

CivilizationOS evolves as a repeated
simulation loop operating over

models
entities
states
events
relations
metrics

This loop is the execution rhythm
of the civilization engine.


# ============================================================
# END
# ============================================================

=============================================================
FILE: 0150000012_CIVILIZATION_CAUSALITY_TIMELINE.md
=============================================================
# ============================================================
# CIVILIZATION CAUSALITY TIMELINE
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0012

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define how CivilizationOS records causality,
event lineage, and timeline progression.

CivilizationOS must be able to answer:

- what happened
- why it happened
- what it affected
- what happened next
- what state emerged from it


# ============================================================
# CORE PRINCIPLE
# ============================================================

Every meaningful civilization change must be traceable.

No state may exist without causal history.

No major event may exist without timeline placement.


# ============================================================
# CAUSAL CHAIN
# ============================================================

root_cause
 ↓
trigger_event
 ↓
propagation_events
 ↓
state_changes
 ↓
derived_metrics
 ↓
civilization_outcome


# ============================================================
# TIMELINE STRUCTURE
# ============================================================

timeline consists of ordered records.

timeline_record

timeline_id
tick_id
timestamp
event_id
source_entity
target_entity
cause_id
effect_type
state_before
state_after
notes


# ============================================================
# CAUSALITY TYPES
# ============================================================

direct_cause
indirect_cause
structural_cause
policy_cause
resource_cause
financial_cause
geographic_cause
behavioral_cause
cascade_cause
systemic_cause


# ============================================================
# ROOT CAUSE RULE
# ============================================================

Every major event chain must identify
a root cause when possible.

Examples

liquidity_crisis
root cause:
credit contraction

migration_wave
root cause:
regional conflict

food_shortage
root cause:
supply_chain breakdown


# ============================================================
# EVENT LINEAGE
# ============================================================

Each event may have:

parent_event
child_events
peer_events
induced_events
suppressed_events

This creates an event tree or graph.


# ============================================================
# STATE LINEAGE
# ============================================================

Every state change must record:

previous state
triggering event
new state
resulting consequences

Example

company
stable
 ↓ event: liquidity_crisis
crisis
 ↓ event: bankruptcy
collapsed


# ============================================================
# TIMELINE LEVELS
# ============================================================

micro timeline
entity-level history

meso timeline
organization / institution history

macro timeline
nation / market / civilization history


# ============================================================
# CIVILIZATION TIMELINE
# ============================================================

civilization timeline is the ordered history of:

major events
major transitions
major crises
major recoveries
major policy shifts
major structural changes


# ============================================================
# TIMELINE MODES
# ============================================================

live timeline
historical replay
scenario timeline
branch timeline
counterfactual timeline


# ============================================================
# BRANCH TIMELINE
# ============================================================

CivilizationOS may support alternative branches.

same root state
 + different event choice
 = different future branch

This enables:

scenario comparison
policy simulation
counterfactual analysis


# ============================================================
# CAUSALITY STORAGE RULE
# ============================================================

Causality must preserve:

event order
cause-effect linkage
state transition reference
metric impact reference
relation update reference

No causal edge may be implicit
for major system events.


# ============================================================
# TIMELINE QUERIES
# ============================================================

CivilizationOS should support questions such as:

what caused this crisis
which events led to collapse
what policy preceded recovery
which domains were first impacted
how did the shock propagate
when did stability return


# ============================================================
# CRITICAL CHAIN DETECTION
# ============================================================

The system must identify:

single-point failure chains
multi-domain cascade chains
financial contagion chains
policy failure chains
infrastructure dependency chains
civilization-level crisis chains


# ============================================================
# SNAPSHOT LINKAGE
# ============================================================

Every timeline segment must link to snapshots.

snapshot_before_event
event_sequence
snapshot_after_event

This allows replay and audit.


# ============================================================
# RESULT
# ============================================================

CivilizationOS becomes explainable.

It does not merely simulate change.

It explains:

why change happened
how change spread
what change produced
when change stabilized


# ============================================================
# END
# ============================================================

=============================================================
FILE: 0150000013_CIVILIZATION_SCENARIO_ENGINE.md
=============================================================
# ============================================================
# CIVILIZATION SCENARIO ENGINE
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0013

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the scenario execution framework
of CivilizationOS.

The scenario engine allows CivilizationOS
to simulate alternative futures from
the same or modified civilization state.


# ============================================================
# CORE PRINCIPLE
# ============================================================

A scenario is a controlled branch
of civilization evolution.

base_state
 + scenario assumptions
 + scenario events
 = branch outcome


# ============================================================
# SCENARIO STRUCTURE
# ============================================================

scenario_id
scenario_name
scenario_type
base_snapshot
assumptions
trigger_events
constraints
time_horizon
evaluation_metrics
result_summary


# ============================================================
# SCENARIO TYPES
# ============================================================

policy scenario
economic scenario
financial scenario
infrastructure scenario
security scenario
population scenario
technology scenario
global crisis scenario
counterfactual scenario
stress test scenario


# ============================================================
# SCENARIO INPUTS
# ============================================================

base snapshot
policy change
event injection
parameter overrides
relation overrides
resource shocks
timing assumptions
domain restrictions


# ============================================================
# POLICY SCENARIO
# ============================================================

Examples

tax increase
interest rate cut
education expansion
welfare reform
climate regulation
industrial subsidy
trade liberalization


# ============================================================
# ECONOMIC SCENARIO
# ============================================================

Examples

inflation shock
recession
rapid growth
trade collapse
consumer boom
labor shortage
productivity surge


# ============================================================
# FINANCIAL SCENARIO
# ============================================================

Examples

bank run
currency crisis
bond default
credit contraction
market crash
liquidity injection
capital flight


# ============================================================
# INFRASTRUCTURE SCENARIO
# ============================================================

Examples

grid failure
water shortage
port disruption
telecom outage
transport bottleneck
major rebuild
infrastructure expansion


# ============================================================
# SECURITY SCENARIO
# ============================================================

Examples

border conflict
cyber attack
intelligence breach
military escalation
internal unrest
emergency declaration


# ============================================================
# POPULATION SCENARIO
# ============================================================

Examples

aging acceleration
migration surge
fertility decline
urban concentration
household fragmentation
labor force contraction


# ============================================================
# TECHNOLOGY SCENARIO
# ============================================================

Examples

ai acceleration
semiconductor shortage
internet fragmentation
automation wave
energy breakthrough
bioeconomy expansion


# ============================================================
# COUNTERFACTUAL SCENARIO
# ============================================================

A counterfactual asks:

what would have happened if
a key event or policy had been different

Examples

no interest rate hike
no war escalation
earlier welfare support
delayed crisis response


# ============================================================
# STRESS TEST SCENARIO
# ============================================================

Stress testing pushes a system
to extreme conditions.

Examples

multi-bank failure
simultaneous drought and recession
global shipping collapse
power outage plus cyber attack


# ============================================================
# BRANCH EXECUTION
# ============================================================

base snapshot
 ↓
branch creation
 ↓
inject scenario assumptions
 ↓
run simulation loop
 ↓
capture branch timeline
 ↓
compare against baseline


# ============================================================
# SCENARIO CONSTRAINTS
# ============================================================

Scenarios may define constraints.

Examples

no change to population
fixed energy supply
no international trade
frozen tax system
limited fiscal capacity


# ============================================================
# EVALUATION METRICS
# ============================================================

population stability
economic growth
financial stability
infrastructure resilience
security stability
governance continuity
social welfare
civilization continuity


# ============================================================
# OUTPUTS
# ============================================================

branch timeline
state divergence
relation divergence
metric divergence
critical failure chains
recovery pathways
scenario score


# ============================================================
# BASELINE COMPARISON
# ============================================================

Every scenario should support comparison with:

original baseline
alternative scenario
historical replay branch
stress scenario branch


# ============================================================
# SCENARIO RESULT TYPES
# ============================================================

improved state
neutral state
degraded state
crisis state
collapse state
transformation state


# ============================================================
# SAFETY RULE
# ============================================================

Scenarios must not mutate baseline reality.

All scenario execution must remain isolated
from the canonical civilization timeline.


# ============================================================
# RESULT
# ============================================================

CivilizationOS becomes able to simulate
not only what is,
but what could happen.

This enables:

policy testing
future planning
risk exploration
counterfactual analysis
strategic forecasting


# ============================================================
# END
# ============================================================

=============================================================
FILE: 0150000014_CIVILIZATION_CONTROL_LAYER.md
=============================================================
# ============================================================
# CIVILIZATION CONTROL LAYER
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0014

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define how CivilizationOS is controlled
as an operating system for civilization simulation.


# ============================================================
# CONTROL PRINCIPLE
# ============================================================

CivilizationOS must distinguish between

observation
simulation
intervention
policy execution
branch experimentation

The control layer governs all of them.


# ============================================================
# CONTROL OBJECTS
# ============================================================

control_command
control_scope
control_target
control_constraint
control_priority
control_window
control_result


# ============================================================
# CONTROL TYPES
# ============================================================

observe
pause
resume
inject_event
apply_policy
freeze_domain
branch_scenario
rollback_branch
commit_branch
terminate_run


# ============================================================
# CONTROL LEVELS
# ============================================================

global control
domain control
entity control
scenario control
timeline control


# ============================================================
# GLOBAL CONTROL
# ============================================================

start_simulation
pause_simulation
resume_simulation
stop_simulation
snapshot_now
rebuild_metrics
replay_history


# ============================================================
# DOMAIN CONTROL
# ============================================================

freeze_domain
throttle_domain
inject_domain_event
replace_domain_assumption
branch_domain_scenario


# ============================================================
# ENTITY CONTROL
# ============================================================

create_entity
disable_entity
move_entity
set_entity_state
inject_entity_event


# ============================================================
# SAFETY RULE
# ============================================================

No control action may mutate canonical history
without explicit commit.

All non-canonical actions must remain branch-isolated.


# ============================================================
# RESULT
# ============================================================

The control layer is the operating shell
of CivilizationOS.


=============================================================
FILE: 0150000015_CIVILIZATION_SNAPSHOT_REPLAY.md
=============================================================
# ============================================================
# CIVILIZATION SNAPSHOT REPLAY
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0015

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define snapshot creation, snapshot structure,
and replay behavior for CivilizationOS.


# ============================================================
# SNAPSHOT PRINCIPLE
# ============================================================

A snapshot is a consistent civilization state
captured at a simulation boundary.


# ============================================================
# SNAPSHOT CONTENT
# ============================================================

tick_id
timestamp
entity_state_summary
relation_summary
metric_summary
active_events
critical_events
domain_status
civilization_status


# ============================================================
# SNAPSHOT TYPES
# ============================================================

tick snapshot
scheduled snapshot
critical event snapshot
branch snapshot
baseline snapshot
terminal snapshot


# ============================================================
# REPLAY MODES
# ============================================================

full replay
domain replay
entity replay
event chain replay
branch replay
counterfactual replay


# ============================================================
# REPLAY RULES
# ============================================================

Replay must preserve:

event order
causal linkage
state transition order
metric derivation order
relation update order


# ============================================================
# USE CASES
# ============================================================

audit
historical reconstruction
scenario comparison
debugging
policy evaluation
causality validation


# ============================================================
# RESULT
# ============================================================

CivilizationOS becomes replayable and auditable.


=============================================================
FILE: 0150000016_CIVILIZATION_METRIC_ENGINE.md
=============================================================
# ============================================================
# CIVILIZATION METRIC ENGINE
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0016

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the metric derivation engine
for CivilizationOS.


# ============================================================
# PRINCIPLE
# ============================================================

Metrics are derived from entity states,
relations, and event outcomes.

Metrics do not create reality.
Metrics summarize reality.


# ============================================================
# METRIC CLASSES
# ============================================================

population metrics
economic metrics
financial metrics
infrastructure metrics
security metrics
knowledge metrics
health metrics
civilization metrics


# ============================================================
# METRIC EXAMPLES
# ============================================================

population stability
employment rate
inflation pressure
banking stress
grid reliability
education access
public health resilience
civilization continuity


# ============================================================
# METRIC FLOW
# ============================================================

state
 ↓
aggregation
 ↓
derivation
 ↓
metric output


# ============================================================
# METRIC RULES
# ============================================================

no metric without source state
no hidden metric formula
no contradictory metric state
all critical metrics must be reproducible


# ============================================================
# RESULT
# ============================================================

CivilizationOS becomes measurable at all levels.


=============================================================
FILE: 0150000017_CIVILIZATION_POLICY_EXECUTION_MODEL.md
=============================================================
# ============================================================
# CIVILIZATION POLICY EXECUTION MODEL
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0017

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define how policy is translated into
civilization effects.


# ============================================================
# POLICY EXECUTION PRINCIPLE
# ============================================================

Policy does not directly mutate civilization.

Policy changes:

rules
constraints
incentives
resource allocation
event probabilities
state transition bias


# ============================================================
# POLICY OBJECT
# ============================================================

policy_id
policy_domain
policy_target
policy_constraints
policy_effects
policy_duration
policy_status


# ============================================================
# POLICY EXECUTION FLOW
# ============================================================

policy definition
 ↓
policy validation
 ↓
policy activation
 ↓
rule update
 ↓
event / state impact
 ↓
metric observation
 ↓
policy review


# ============================================================
# POLICY RESULT TYPES
# ============================================================

stabilizing
destabilizing
redistributive
restrictive
expansionary
protective
transformative


# ============================================================
# RESULT
# ============================================================

CivilizationOS can simulate policy as a structured force,
not as arbitrary mutation.


=============================================================
FILE: 0150000018_CIVILIZATION_SHOCK_FRAMEWORK.md
=============================================================
# ============================================================
# CIVILIZATION SHOCK FRAMEWORK
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0018

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define exogenous and endogenous shocks
within CivilizationOS.


# ============================================================
# SHOCK TYPES
# ============================================================

economic shock
financial shock
infrastructure shock
security shock
environmental shock
climate shock
health shock
technology shock
geopolitical shock
multi-domain shock


# ============================================================
# SHOCK STRUCTURE
# ============================================================

shock_id
shock_source
shock_scope
shock_severity
shock_targets
shock_duration
shock_propagation_type
shock_result


# ============================================================
# SHOCK RULES
# ============================================================

A shock must enter through events.
A shock must propagate through declared relations.
A shock must produce auditable state changes.


# ============================================================
# RESULT
# ============================================================

CivilizationOS can model crisis and stress rigorously.


=============================================================
FILE: 0150000019_CIVILIZATION_SIMULATION_MODES.md
=============================================================
# ============================================================
# CIVILIZATION SIMULATION MODES
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0019

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define operating modes of CivilizationOS simulation.


# ============================================================
# MODES
# ============================================================

live mode
scheduled mode
historical replay mode
scenario mode
stress test mode
branch comparison mode
policy experiment mode


# ============================================================
# MODE DIFFERENCE
# ============================================================

live mode
follows current canonical timeline

scheduled mode
executes periodic ticks

historical replay mode
replays known event history

scenario mode
creates alternative branch futures

stress test mode
injects extreme shocks

branch comparison mode
compares multiple futures

policy experiment mode
tests intervention outcomes


# ============================================================
# RESULT
# ============================================================

CivilizationOS can operate as both
world model and simulation laboratory.


=============================================================
FILE: 0150000020_CIVILIZATION_AUDIT_REVIEW_RULE.md
=============================================================
# ============================================================
# CIVILIZATION AUDIT REVIEW RULE
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0020

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define audit and review discipline
for CivilizationOS simulation integrity.


# ============================================================
# AUDIT TARGETS
# ============================================================

event history
state transitions
relation changes
metric derivations
policy executions
scenario branches
control commands
snapshots


# ============================================================
# REVIEW RULES
# ============================================================

Every critical transition must be reviewable.
Every S4/S5 event chain must be explainable.
Every branch must be baseline-comparable.
No canonical mutation may be silent.


# ============================================================
# RESULT
# ============================================================

CivilizationOS remains explainable,
reviewable, and trustworthy.


=============================================================
FILE: 0150000020_CIVILIZATION_MODEL_RELATION_MAP.md
=============================================================
# ============================================================
# CIVILIZATION MODEL RELATION MAP
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0020
scope: civilization.model.relation-map
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the official relation types between models.


# ============================================================
# RELATION TYPES
# ============================================================

contains
depends_on
governs
regulates
funds
employs
supplies
consumes
measures
protects
transports
communicates_with
trades_with
belongs_to
participates_in
changes


# ============================================================
# PRIMARY RELATIONS
# ============================================================

person
belongs_to household

person
participates_in labor_market

person
belongs_to organization

household
consumes market_goods

organization
employs person

company
participates_in market

company
depends_on logistics

bank
funds company

nation
governs territory

government
regulates market

government
funds public_service

nation
participates_in diplomacy

trade_system
depends_on logistics

energy_system
supplies industry

education
develops human_capital

healthcare
protects population

security
protects nation


# ============================================================
# MODEL GRAPH PRINCIPLE
# ============================================================

No domain exists in isolation.

Civilization is a graph.

nodes:
models

edges:
relations


# ============================================================
# END
# ============================================================

=============================================================
FILE: 0150000030_CIVILIZATION_MODEL_CLASSIFICATION.md
=============================================================
# ============================================================
# CIVILIZATION MODEL CLASSIFICATION
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0030
scope: civilization.model.classification
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the official classification categories
for civilization models.


# ============================================================
# MODEL CLASSES
# ============================================================

entity_model
stable conceptual thing

structure_model
arrangement or organization form

process_model
flow or transformation

system_model
coordinated civilization subsystem

network_model
relationship topology

policy_model
governing rule framework

indicator_model
measurement abstraction

event_model
change abstraction

state_model
condition abstraction


# ============================================================
# EXAMPLES
# ============================================================

person
entity_model

household
entity_model
structure_model

market
system_model

trade_flow
process_model

supply_chain
network_model
system_model

tax_policy
policy_model

inflation_rate
indicator_model

election
event_model

financial_stability
state_model
indicator_model


# ============================================================
# END
# ============================================================

=============================================================
FILE: 0150000060_CIVILIZATION_MODEL_ID_SEMANTICS.md
=============================================================
# ============================================================
# CIVILIZATION MODEL ID SEMANTICS
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0060
scope: civilization.model.id-semantics
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define what a model id means semantically.


# ============================================================
# SEMANTIC RULE
# ============================================================

A model id identifies a conceptual slot,
not a data row.

A model id means:

- this concept exists
- this concept belongs to one official domain
- this concept has one stable name
- this concept may evolve in description
- this concept must not change identity


# ============================================================
# SEMANTIC STABILITY
# ============================================================

country
must always mean the sovereign national entity concept

bank
must always mean the bank concept

loan
must always mean the loan concept

If meaning changes radically,
create a new id.


# ============================================================
# END
# ============================================================

=============================================================
FILE: 0150000070_CIVILIZATION_MODEL_EVOLUTION_RULE.md
=============================================================
# ============================================================
# CIVILIZATION MODEL EVOLUTION RULE
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0070
scope: civilization.model.evolution-rule
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define how models are added, split, merged,
deprecated, and expanded.


# ============================================================
# RULES
# ============================================================

1.
new model only if existing models cannot represent
the concept cleanly

2.
prefer extending data semantics before adding models

3.
prefer adding relations before adding duplicate models

4.
prefer splitting a model only when the concept has
independent semantics

5.
deprecated models remain reserved in the registry


# ============================================================
# SPLIT RULE
# ============================================================

Split a model when one concept actually contains
two independent conceptual structures.

Example

organization
may stay one model

but if organizational_unit develops completely different
rules, it may split into a separate model.


# ============================================================
# MERGE RULE
# ============================================================

Merge models when multiple models represent
the same abstraction at different names.

Example

trade_market and commerce_market
should probably merge if semantics overlap.


# ============================================================
# END
# ============================================================

=============================================================
FILE: 0150000080_CIVILIZATION_MODEL_RELATION_GRAPH.md
=============================================================
# ============================================================
# CIVILIZATION MODEL RELATION GRAPH
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0080
scope: civilization.model.relation-graph
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the high-level civilization graph.


# ============================================================
# GRAPH
# ============================================================

space
↓
territory
↓
nation
↓
government
↓
policy

person
↓
household
↓
community
↓
organization
↓
market

resource
↓
production
↓
logistics
↓
trade
↓
consumption

education
↓
skills
↓
labor
↓
income
↓
household welfare

healthcare
↓
population health
↓
labor productivity
↓
economic resilience

security
↓
stability
↓
governance continuity
↓
civilization continuity


# ============================================================
# END
# ============================================================

=============================================================
FILE: 0150000090_CIVILIZATION_MODEL_DEPENDENCY_RULE.md
=============================================================
# ============================================================
# CIVILIZATION MODEL DEPENDENCY RULE
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0090
scope: civilization.model.dependency-rule
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define dependency discipline between models.


# ============================================================
# RULES
# ============================================================

dependencies must be explicit

no hidden cross-domain dependency

no circular dependency unless conceptually required

prefer graph relation over duplication

domain ownership must remain singular


# ============================================================
# EXAMPLES
# ============================================================

company depends_on labor_market  
company depends_on logistics  
company participates_in market  

bank depends_on regulation  
bank funds company  

nation depends_on territory  
nation depends_on population  
nation governs institutions


# ============================================================
# END
# ============================================================

=============================================================
FILE: 0150000100_CIVILIZATION_DOMAIN_MODEL_MAP.md
=============================================================
# ============================================================
# CIVILIZATION DOMAIN MODEL MAP
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0100
scope: civilization.domain.model-map
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the official domain-to-model allocation rule
for 120 domains and 3600 models.


# ============================================================
# DOMAIN RULE
# ============================================================

Each domain contains 30 models.

Each model belongs to exactly one domain.

Cross-domain meaning is represented
through relations, not duplicate ownership.


# ============================================================
# DOMAIN GROUP EXAMPLES
# ============================================================

0000 person

0001 world
0002 region
0003 nation
0004 subnational_government
0005 government

0031 banking
0032 central_bank
0033 currency
0034 payment

0091 education
0092 research
0093 science
0094 technology

0111 security
0112 military
0113 defense
0114 police


# ============================================================
# END
# ============================================================

=============================================================
FILE: 0150000200_CIVILIZATION_EVENT_UNIVERSE.md
=============================================================
# ============================================================
# CIVILIZATION EVENT UNIVERSE
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0200
scope: civilization.event.universe
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the official civilization event space.


# ============================================================
# EVENT GROUPS
# ============================================================

population events
migration
birth
death
household formation

governance events
election
law passage
policy change
crisis declaration

economic events
recession
inflation shock
trade disruption
investment surge

financial events
bank failure
liquidity stress
currency shock
market crash

social events
education reform
health outbreak
housing crisis
welfare expansion

security events
conflict
crime wave
emergency activation
diplomatic escalation


# ============================================================
# END
# ============================================================

=============================================================
FILE: 0150000210_CIVILIZATION_EVENT_SEVERITY_STANDARD.md
=============================================================
# ============================================================
# CIVILIZATION EVENT SEVERITY STANDARD
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0210
scope: civilization.event.severity-standard
owner: Boss
prepared_by: Zero


# ============================================================
# LEVELS
# ============================================================

S0 informational  
S1 minor  
S2 moderate  
S3 major  
S4 critical  
S5 civilization threat


# ============================================================
# EVALUATION
# ============================================================

population impact  
geographic scope  
economic damage  
infrastructure damage  
institutional damage  
security threat  
recovery duration  
cascade potential


# ============================================================
# END
# ============================================================

=============================================================
FILE: 0150000220_CIVILIZATION_EVENT_PROPAGATION_STANDARD.md
=============================================================
# ============================================================
# CIVILIZATION EVENT PROPAGATION STANDARD
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0220
scope: civilization.event.propagation-standard
owner: Boss
prepared_by: Zero


# ============================================================
# PROPAGATION TYPES
# ============================================================

direct operational  
supply chain  
financial  
policy  
legal  
social  
geographic  
infrastructure  
security  
informational  
behavioral  
environmental


# ============================================================
# END
# ============================================================

=============================================================
FILE: 0150000230_CIVILIZATION_EVENT_ROUTING_STANDARD.md
=============================================================
# ============================================================
# CIVILIZATION EVENT ROUTING STANDARD
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0230
scope: civilization.event.routing-standard
owner: Boss
prepared_by: Zero


# ============================================================
# ROUTING
# ============================================================

primary targets  
secondary targets  
policy listeners  
metric listeners  
review targets  
archive targets


# ============================================================
# RULE
# ============================================================

routing must be deterministic
and relation-based.


# ============================================================
# END
# ============================================================

=============================================================
FILE: 0150000300_CIVILIZATION_POLICY_MODEL_MAP.md
=============================================================
# ============================================================
# CIVILIZATION POLICY MODEL MAP
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0300
scope: civilization.policy.model-map
owner: Boss
prepared_by: Zero


# ============================================================
# POLICY FAMILIES
# ============================================================

monetary_policy
fiscal_policy
taxation_policy
industrial_policy
trade_policy
labor_policy
education_policy
healthcare_policy
housing_policy
welfare_policy
climate_policy
energy_policy
security_policy
foreign_policy


# ============================================================
# END
# ============================================================

=============================================================
FILE: 0150000400_CIVILIZATION_SYSTEM_DEPENDENCY_MAP.md
=============================================================
# ============================================================
# CIVILIZATION SYSTEM DEPENDENCY MAP
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0400
scope: civilization.system.dependency-map
owner: Boss
prepared_by: Zero


# ============================================================
# CORE DEPENDENCIES
# ============================================================

population → labor → economy  
economy → finance → investment  
investment → industry → infrastructure  
education → skills → labor productivity  
healthcare → population health → resilience  
security → stability → continuity  
policy → system direction  


# ============================================================
# END
# ============================================================

=============================================================
FILE: 0150000500_CIVILIZATION_SIMULATION_ENGINE_ARCHITECTURE.md
=============================================================
# ============================================================
# CIVILIZATION SIMULATION ENGINE ARCHITECTURE
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0500
scope: civilization.simulation.engine-architecture
owner: Boss
prepared_by: Zero


# ============================================================
# ENGINE FLOW
# ============================================================

state
→ event intake
→ severity
→ propagation
→ policy reaction
→ state transition
→ updated civilization state


# ============================================================
# END
# ============================================================

=============================================================
FILE: 0150000510_CIVILIZATION_SIMULATION_RULES.md
=============================================================
# ============================================================
# CIVILIZATION SIMULATION RULES
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0510
scope: civilization.simulation.rules
owner: Boss
prepared_by: Zero


# ============================================================
# RULES
# ============================================================

no model mutates without trigger

events create state change

policy modifies outcomes

relations carry propagation

ambiguity requires review


# ============================================================
# END
# ============================================================

=============================================================
FILE: 0150000900_CIVILIZATION_PER_DOMAIN_SPEC_TEMPLATE.md
=============================================================
# ============================================================
# CIVILIZATION PER DOMAIN SPEC TEMPLATE
# ============================================================

status: canonical-template
system_id: 01
domain_id: 5000
model_id: 0900
scope: civilization.per-domain-spec-template
owner: Boss
prepared_by: Zero


domain_name:
domain_purpose:

30_models:
related_domains:
events:
policies:
risks:
future_extensions:


=============================================================
FILE: 0150000910_CIVILIZATION_PER_MODEL_DESIGN_TEMPLATE.md
=============================================================
# ============================================================
# CIVILIZATION PER MODEL DESIGN TEMPLATE
# ============================================================

status: canonical-template
system_id: 01
domain_id: 5000
model_id: 0910
scope: civilization.per-model-design-template
owner: Boss
prepared_by: Zero


model_id:
model_name:
domain:
classification:
description:
relations:
events:
policies:
future_extensions:

