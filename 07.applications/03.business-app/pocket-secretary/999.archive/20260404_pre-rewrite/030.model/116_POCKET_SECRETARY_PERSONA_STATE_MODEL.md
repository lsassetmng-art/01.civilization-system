# ============================================================
# POCKET SECRETARY PERSONA STATE MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: persona-state-model
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines the runtime persona state
maintained by PocketSecretary.


# STATE ROLE

The persona state controls

active secretary
character expression
animation state
display configuration


# CORE STATE

active_secretary_id

expression_state

animation_state

character_mode


# EXPRESSION STATES

neutral
happy
thinking
surprised
sleep


# ANIMATION STATES

idle
talk
blink
gesture


# STATE FLOW

Runtime Engine
 ↓
Persona State
 ↓
persona-visual-runtime
 ↓
Character Rendering


# PERSISTENCE

Most persona states are transient.

Persistent settings are stored
in the configuration model.


# DESIGN PRINCIPLE

Persona state must remain lightweight
to ensure fast rendering updates.
