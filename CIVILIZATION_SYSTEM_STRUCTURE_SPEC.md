# ============================================================
# CIVILIZATION SYSTEM STRUCTURE SPECIFICATION
# ============================================================

status: canonical
system: civilization-system
scope: global
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the official directory structure of the
Civilization System.

This structure separates:

foundation
platform operating systems
applications
documentation

The goal is to maintain clear system boundaries
and ensure long-term scalability.


# ============================================================
# ROOT STRUCTURE
# ============================================================

01.civilization-system

 ├ 00.foundation
 ├ 01.civilization-os
 ├ 02.persona-os
 ├ 03.business-os
 ├ 04.life-os
 ├ 05.game-os
 ├ 06.streaming-os
 │
 ├ 07.applications
 │
 └ 90.docs


# ============================================================
# 00 FOUNDATION
# ============================================================

Common rules for the entire Civilization System.

Contains:

constitution
core principles
safety rules
design standards
system philosophy


# ============================================================
# OS LAYER
# ============================================================

Operating systems provide system capabilities.

Each OS defines:

architecture
model
runtime
api
security
operations
development

Applications are NOT placed inside OS directories.


# ============================================================
# 01 CIVILIZATION OS
# ============================================================

Civilization simulation layer.

Responsible for:

nation
government
law
economy
war
population
religion
technology
history


# ============================================================
# 02 PERSONA OS
# ============================================================

Artificial persona system.

Responsible for:

identity
memory
emotion
cognition
behavior
relationship
growth


# ============================================================
# 03 BUSINESS OS
# ============================================================

Small-scale business tools platform.

Not ERP.

ERP exists in a separate system.

BusinessOS supports:

task management
project tracking
notes
mini CRM
calendar utilities


# ============================================================
# 04 LIFE OS
# ============================================================

Life management platform.

Responsible for:

health
sleep
meal
habit
home


# ============================================================
# 05 GAME OS
# ============================================================

Game simulation platform.

Responsible for:

player
quest
battle
items
scores


# ============================================================
# 06 STREAMING OS
# ============================================================

Streaming ecosystem platform.

Responsible for:

stream
viewer
chat
donation
fan communities


# ============================================================
# APPLICATION LAYER
# ============================================================

07.applications

Contains real applications.

Examples:

pocket-secretary
task-manager
mini-crm
journal
finance-lite

Applications may use multiple OS schemas.


# ============================================================
# DOCUMENTATION
# ============================================================

90.docs

System-wide documentation repository.

Contains:

architecture
design indexes
model catalog
bible documents


# ============================================================
# ERP SYSTEM
# ============================================================

ERP is NOT part of Civilization System.

ERP exists as a completely separate system.

Example location:

~/02.erp-system


# ============================================================
# DESIGN PRINCIPLES
# ============================================================

OS provides platform capabilities.

Applications provide user functionality.

ERP remains isolated from simulation systems.

Strict separation between:

platform
application
enterprise systems


