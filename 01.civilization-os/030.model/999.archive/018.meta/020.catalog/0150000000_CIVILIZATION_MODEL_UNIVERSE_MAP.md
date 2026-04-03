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
