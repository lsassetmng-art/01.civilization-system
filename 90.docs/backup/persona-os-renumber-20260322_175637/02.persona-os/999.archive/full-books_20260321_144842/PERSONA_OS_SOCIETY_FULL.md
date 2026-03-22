
# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/80.society/010.actor/SOCIETY_ACTOR_MODEL.md
# ============================================================
# ============================================================
# SOCIETY ACTOR MODEL
# ============================================================

status: canonical
layer: society

# PURPOSE
Defines actors within society.

# ACTOR TYPES

persona
group
organization
institution
state

# DESCRIPTION
Actors represent entities that
participate in social interaction.

# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/80.society/020.relationship/SOCIETY_RELATIONSHIP_MODEL.md
# ============================================================
# ============================================================
# SOCIETY RELATIONSHIP MODEL
# ============================================================

status: canonical
layer: society

# PURPOSE
Defines relationships between actors.

# RELATIONS

friendship
alliance
competition
conflict
hierarchy

# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/80.society/030.organization/SOCIETY_ORGANIZATION_MODEL.md
# ============================================================
# ============================================================
# SOCIETY ORGANIZATION MODEL
# ============================================================

status: canonical
layer: society

# PURPOSE
Defines social organizations.

# TYPES

company
guild
government
community

# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/80.society/040.economy/SOCIETY_ECONOMY_MODEL.md
# ============================================================
# ============================================================
# SOCIETY ECONOMY MODEL
# ============================================================

status: canonical
layer: society

# PURPOSE
Defines economic interactions.

# ELEMENTS

resource
production
exchange
consumption

# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/80.society/050.governance/SOCIETY_GOVERNANCE_MODEL.md
# ============================================================
# ============================================================
# SOCIETY GOVERNANCE MODEL
# ============================================================

status: canonical
layer: society

# PURPOSE
Defines governance structures.

# ELEMENTS

rules
authority
decision
policy

# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/80.society/060.culture/SOCIETY_CULTURE_MODEL.md
# ============================================================
# ============================================================
# SOCIETY CULTURE MODEL
# ============================================================

status: canonical
layer: society

# PURPOSE
Defines culture and shared values.

# ELEMENTS

belief
tradition
norm
symbol

# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/80.society/070.event/SOCIETY_EVENT_MODEL.md
# ============================================================
# ============================================================
# SOCIETY EVENT MODEL
# ============================================================

status: canonical
layer: society

# PURPOSE
Defines social events.

# TYPES

interaction
transaction
conflict
cooperation

# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/80.society/080.history/SOCIETY_HISTORY_MODEL.md
# ============================================================
# ============================================================
# SOCIETY HISTORY MODEL
# ============================================================

status: canonical
layer: society

# PURPOSE
Defines historical records.

# ELEMENTS

event_record
timeline
civilization_memory

# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/02.persona-os/80.society/SOCIETY_LAYER_ARCHITECTURE.md
# ============================================================
# ============================================================
# PERSONA OS
# SOCIETY LAYER ARCHITECTURE
# ============================================================

status: canonical
system_id: 02
layer: society
scope: persona.social_environment

owner: Boss
prepared_by: Zero


# PURPOSE

Defines the social environment
in which personas interact.

The society layer models
social structures and relationships
between personas.


# POSITION IN SYSTEM

persona
↓
society
↓
civilization
↓
world


# CORE STRUCTURES

relationship
group
organization
community
institution


# SOCIAL DYNAMICS

trust
reputation
cooperation
competition
conflict
alliance


# INTERACTIONS

persona ↔ persona
persona ↔ group
persona ↔ organization
persona ↔ community


# OUTPUT

social influence
relationship strength
network position

