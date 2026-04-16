# ============================================================
# POCKET SECRETARY DESIGN FULL WITH META
# ============================================================

status: integrated
scope: pocket-secretary
owner: Boss
prepared_by: Zero

This file is an integrated dump of all PocketSecretary markdown files,
including meta and archive areas.



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/0000_POCKET_SECRETARY_DESIGN_FULL_CANONICAL.md
# ============================================================

# ============================================================
# POCKET SECRETARY DESIGN FULL CANONICAL
# ============================================================

status: integrated
scope: pocket-secretary
owner: Boss
prepared_by: Zero

This file is an integrated dump of PocketSecretary design documents
from the canonical layer structure.



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/010.constitution/0100000_POCKET_SECRETARY_CONSTITUTION_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY CONSTITUTION INDEX
# ============================================================

status: active
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/010.constitution/0100001_POCKET_SECRETARY_CONSTITUTION_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY CONSTITUTION OVERVIEW
# ============================================================

status: active
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/0200000_POCKET_SECRETARY_ARCHITECTURE_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY ARCHITECTURE INDEX
# ============================================================

status: active
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/0200001_POCKET_SECRETARY_ARCHITECTURE_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY ARCHITECTURE OVERVIEW
# ============================================================

status: active
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/100_POCKET_SECRETARY_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY OVERVIEW
# ============================================================

status: canonical
system: pocket-secretary
component: overview
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

PocketSecretary is a personal client application
centered around PersonaOS visual characters.

The application provides personal organization tools
while acting as the current primary user client
for the Civilization ecosystem.


# SYSTEM ROLE

PocketSecretary operates as:

- personal assistant application
- PersonaOS visual front-end
- ERP request entry point
- personal productivity tool


# SYSTEM POSITION

PocketSecretary is a client application
that interfaces with Civilization systems.

Structure:

User
 ↓
PocketSecretary
 ↓
PersonaOS
 ↓
Civilization Core


PocketSecretary does not directly operate
civilization subsystems.


# CIVILIZATION STRUCTURE

Civilization

 ├ PersonaOS
 ├ BusinessOS
 ├ Life Apps
 ├ Streaming
 ├ Game
 └ Client Applications


PocketSecretary belongs to the client layer.


# CLIENT STATUS

PocketSecretary is currently the primary
personal client application.

Additional clients may be introduced
in the future for other domains.


# USER MODEL

PocketSecretary is designed primarily
as a single-user application.


# PLAN MODEL

FREE
1 secretary

PRO
3 secretaries

BUSINESS
3 personal secretaries
+ company secretary


# ERP INTEGRATION

PocketSecretary may send requests
to enterprise ERP systems.

Example flow

PocketSecretary
 ↓
ERP Request API
 ↓
Enterprise ERP


ERP systems are external to Civilization.


# CORE PRINCIPLE

Local-first architecture.

User data is stored locally
and only necessary requests
are transmitted to external systems.


# DESIGN PRINCIPLES

PocketSecretary must remain:

offline-capable  
user-controlled  
non-autonomous in financial operations


The application acts as a personal client,
not as a system controller.

# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/101_POCKET_SECRETARY_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY ARCHITECTURE
# ============================================================

status: canonical
system: pocket-secretary
component: architecture
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines the internal architecture
of the PocketSecretary application.


# ARCHITECTURE PRINCIPLE

PocketSecretary follows a layered architecture
designed for local-first operation.

Core principles:

local-first data handling  
offline-capable operation  
controlled external integration  
persona-centric UI rendering


# ARCHITECTURE LAYERS

The application consists of five logical layers.


# L1 USER INTERFACE LAYER

Responsible for visual presentation
and user interaction.

Components

Dashboard  
Character View  
Widgets  
Tool Panels  


The UI layer renders Persona characters
and displays user data.


# L2 APPLICATION LOGIC LAYER

Contains the functional modules
of the application.

Modules

Schedule Management  
Todo Management  
Archive System  
Note System  
Business Tools  


This layer coordinates
user actions and system behavior.


# L3 PERSONA RENDERING LAYER

Responsible for character rendering.

Rendering pipeline

PocketSecretary
 ↓
Manifest API
 ↓
persona-visual-runtime
 ↓
Bitmap composition


Rendering uses the Anchor-based
visual composition model.


# L4 LOCAL DATA LAYER

Responsible for local storage.

Technologies

Room Database  
Local File Storage  


Stored data includes

schedule  
todo  
notes  
settings  
archive files


User data is always stored locally.


# L5 INTEGRATION LAYER

Handles communication with
external systems.

Integrations

PersonaOS APIs  
Enterprise ERP APIs  


External integrations are optional
and never required for core operation.


# NETWORK POLICY

All core functionality must operate
without network connectivity.

Network access is only used for

persona asset retrieval  
ERP request submission  
optional synchronization


# CIVILIZATION POSITION

PocketSecretary functions as a
client application within the
Civilization ecosystem.

Structure

User
 ↓
PocketSecretary
 ↓
PersonaOS
 ↓
Civilization Core


# DESIGN CONSTRAINTS

PocketSecretary must not

control Civilization subsystems  
modify external systems automatically  
execute financial operations autonomously

# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/139_POCKET_SECRETARY_FILE_STORAGE_STRUCTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY FILE STORAGE STRUCTURE
# ============================================================

status: canonical
system: pocket-secretary
component: file-storage-structure
owner: Boss
prepared_by: Zero


# PURPOSE

Defines local file storage layout.


# DIRECTORY STRUCTURE

archive/  
exports/  
persona_cache/  
attachments/  
temp/


# RULES

Temporary files must be periodically cleaned.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/142_POCKET_SECRETARY_MODULE_STRUCTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY MODULE STRUCTURE
# ============================================================

status: canonical
system: pocket-secretary
component: module-structure
owner: Boss
prepared_by: Zero


# PURPOSE

Defines internal module layout.


# MODULES

ui  
domain  
data  
integration


# RULE

Modules must depend inward only.

ui → domain → data


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/151_POCKET_SECRETARY_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY
# UI ARCHITECTURE
# ============================================================

status: canonical
layer: ui
component: pocket-secretary-ui

owner: Boss
prepared_by: Zero


# PURPOSE

Define the official UI architecture of PocketSecretary.


# DASHBOARD STRUCTURE

Background Layer
↓
Persona Layer
↓
Assistant Message
↓
Action Buttons


# BACKGROUND

Tap → Background Manager


Background Manager

background change
theme change
background marketplace


# PERSONA

Tap → Character Manager


Character Manager

persona change
costume change
voice change
persona marketplace


# ASSISTANT MESSAGE

Persona communicates with the user.

examples

Good morning
You have 2 schedules today
3 tasks remaining


# ACTION BUTTONS

Schedule
Tools
Library
TODO


# SCHEDULE

calendar
event list
reminders


# TODO

task list
task completion
task reminders


# TOOLS

calculator
transit
expense
notes
business card


# TRANSIT

Yahoo Transit

integration

Android Intent


# EXPENSE

travel expense

integration

ERP


# LIBRARY

Open Civilization Reader

Android Intent


# BUSINESS CARD

Open Business Card App

Android Intent


# MARKETPLACE ENTRY

Persona → Persona Marketplace

Background → Theme Marketplace

Library → Book Marketplace


# DESIGN GOAL

Persona-centered assistant UI.



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/POCKET_SECRETARY_APPLICATION_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY
# APPLICATION ARCHITECTURE
# ============================================================

status: canonical
layer: application

app_id: pocket-secretary

owner: Boss
prepared_by: Zero


# POSITION

User
↓
PocketSecretary
↓
Persona Runtime
↓
PersonaOS


# CORE ROLE

PocketSecretary is a local-first smartphone secretary
that hosts the Persona Runtime.

The application is responsible for:

persona interaction
assistant behavior
life assistance
knowledge access


# CORE STRUCTURE

PocketSecretary

ui_layer
assistant_engine
persona_runtime
life_assistant
notification_layer
library_layer
reader_engine
optional_online_layer


# PERSONA RUNTIME HOST

PocketSecretary hosts the Persona Runtime.

runtime components:

persona_visual
persona_emotion
persona_voice
persona_interaction
persona_memory


# RUNTIME ASSET SYSTEM

Runtime assets are stored locally.

runtime assets include:

persona
background
voice
animation
ui assets


Example structure:

assets/runtime

persona
background
voice
animation


Runtime assets are loaded by the runtime engine.


# ASSISTANT ENGINE

Assistant logic manages:

conversation
notifications
suggestions
assistant responses


# LIFE ASSISTANT

Local life support functions:

schedule
task
notes
journal
calculator


# LIBRARY

Local knowledge storage.

library manages:

installed books
documents
learning materials


# READER ENGINE

Reader engine supports two modes.


Standard Reader

pdf
epub
html


Civilization Reader

annotation
knowledge linking
ai explanation
highlight
bookmark


# ONLINE EXTENSION

Online features are optional.

marketplace
shared library
asset download
persona growth sync


# DESIGN RULE

PocketSecretary must remain usable
without internet connectivity.


# SUMMARY

PocketSecretary is a local-first
assistant application that hosts
the Persona Runtime and provides
life support and knowledge access.



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/POCKET_SECRETARY_APPLICATION_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY
# APPLICATION OVERVIEW
# ============================================================

status: canonical
layer: application

app_id: pocket-secretary

owner: Boss
prepared_by: Zero


# PURPOSE

Pocket Secretary is a local-first smartphone secretary application.

It is not the entry point of BusinessOS.

It is primarily a personal assistant application
built on PersonaOS and LifeOS.


# PRIMARY ROLE

Pocket Secretary provides:

persona interaction
life assistance
local task support
local schedule support
local notes and journal
local library and reader


# LOCAL-FIRST PRINCIPLE

Pocket Secretary must remain usable
without online connectivity.

Core functions must work locally.


# OPTIONAL ONLINE FUNCTIONS

Some optional online functions may exist.

Examples:

persona growth sync for additional characters
shared library
marketplace access
asset download


# OS RELATION

Primary systems:

PersonaOS
LifeOS

Optional online support:

BusinessOS


# SUMMARY

Pocket Secretary is a local-first
smartphone secretary application
with optional Civilization services.



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/POCKET_SECRETARY_MODULE_STRUCTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY
# MODULE STRUCTURE
# ============================================================

status: canonical
layer: implementation

app_id: pocket-secretary

owner: Boss
prepared_by: Zero


# PURPOSE

Define the module boundaries of PocketSecretary.

PocketSecretary contains more than 200 Java files.
Modules must be separated to maintain stability.


# MODULE OVERVIEW

PocketSecretary modules

app
ui
assistant_engine
persona_runtime
life_assistant
notification_engine
library_engine
reader_engine
data_storage
infra


# APP MODULE

Application bootstrap.

components:

PocketSecretaryApp
MainActivity
BaseActivity
SettingsActivity


Responsibilities:

application initialization
activity management
lifecycle control


# UI MODULE

User interface components.

components:

dashboard
settings
dialogs
widgets


Responsibilities:

UI rendering
user input
screen navigation


# ASSISTANT ENGINE

Core assistant logic.

components:

conversation handler
assistant response engine
suggestion system


Responsibilities:

assistant responses
user assistance
notification suggestions


# PERSONA RUNTIME

Persona execution environment.

components:

persona engine
emotion system
visual system
voice system
interaction system


Responsibilities:

persona behavior
persona reactions
persona conversation


# LIFE ASSISTANT

Local life support engine.

components:

schedule
calendar
task
notes
journal
calculator


Responsibilities:

personal productivity
life management


# NOTIFICATION ENGINE

Notification management.

components:

notification scheduler
event notifications
reminder engine


Responsibilities:

reminders
assistant notifications
system alerts


# LIBRARY ENGINE

Local knowledge storage.

components:

book storage
document storage
reading progress


Responsibilities:

manage installed books
manage documents


# READER ENGINE

Book and document reader.

reader modes:

standard reader

pdf
epub
html


civilization reader

annotation
knowledge link
ai explanation


# DATA STORAGE

Local data layer.

components:

preferences
local database
cache


Responsibilities:

persistent data storage


# INFRA

Infrastructure layer.

components:

personaos client
edge communication
runtime asset loader


Responsibilities:

external system communication
asset loading


# MODULE DEPENDENCY

UI
↓
Assistant Engine
↓
Persona Runtime
↓
Life Assistant
↓
Data Storage


Infra modules may be used by all layers.


# DESIGN RULE

Modules must not bypass defined boundaries.

UI must not directly access infrastructure.


# SUMMARY

PocketSecretary is structured as a modular
assistant system combining:

persona runtime
assistant logic
life management
knowledge access.



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/POCKET_SECRETARY_MODULE_STRUCTURE_CANONICAL.md
# ============================================================

# ============================================================
# POCKET SECRETARY MODULE STRUCTURE
# ============================================================

status: canonical
system: Civilization
application: PocketSecretary

owner: Boss
prepared_by: Zero



# PURPOSE

Define Android module and package structure.


# PACKAGE ROOT

com.lsam.pocketsecretary



# CORE MODULES

ui
persona
schedule
task
notes
journal
calculator
transit
marketplace
asset
business
ai
settings



# UI MODULE

ui.dashboard
ui.persona
ui.tools
ui.marketplace



# PERSONA MODULE

persona.runtime
persona.manager
persona.state



# TOOLS MODULE

schedule.manager
task.manager
notes.manager
journal.manager
calculator.core



# MARKETPLACE MODULE

marketplace.client
marketplace.install
marketplace.purchase



# ASSET MODULE

asset.manager
asset.cache
asset.renderer



# BUSINESS MODULE

business.expense
business.erp
business.card



# AI MODULE

ai.assistant
ai.conversation
ai.summary
ai.schedule



# INFRASTRUCTURE

data.local
data.sync
network
repository



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/POCKET_SECRETARY_UI_ARCHITECTURE_CANONICAL.md
# ============================================================

# ============================================================
# POCKET SECRETARY UI ARCHITECTURE
# ============================================================

status: canonical
system: Civilization
application: PocketSecretary

owner: Boss
prepared_by: Zero


# PURPOSE

Define the user interface architecture.


# UI CONCEPT

PocketSecretary UI is centered on a Persona.

Persona acts as the visual interface
of the personal assistant.


Main elements

persona display
background
quick access tools
notifications
schedule preview



# DASHBOARD

Main application screen.


Elements

persona view
background view
quick actions
notification panel


Interactions

tap persona -> character manager
tap background -> asset manager



# QUICK ACTIONS

Main tools

Schedule
Task
Notes
Journal
Calculator
Transit Search



# MARKETPLACE ACCESS

Marketplace may be opened from

dashboard
character manager
asset manager



# BUSINESS FEATURES

Business users can access

ERP
travel expense
business card manager



# AI FEATURES

Pro and Business plans support

AI consultation
AI conversation
AI summarization
AI schedule suggestion


# ============================================================
# VISUAL RUNTIME INTEGRATION
# ============================================================

PocketSecretary does not implement
any image composition pipeline.

All visual rendering must be delegated to
persona-visual-runtime.

The application only selects assets
and requests rendering.


Rendering Flow

UI
↓
Scene Request
↓
visual-runtime
↓
Bitmap Result
↓
UI Display



# ============================================================
# DASHBOARD SCENE MODEL
# ============================================================

The dashboard screen is defined as a scene.


dashboard_scene

background
persona
effects
overlay


background and persona are rendered by
visual-runtime.


# ============================================================
# BACKGROUND INTERACTION
# ============================================================

User may tap background.

Actions

change background
open background marketplace


Background selection is handled by
PocketSecretary.

Rendering is handled by visual-runtime.



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/0300000_POCKET_SECRETARY_MODEL_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY MODEL INDEX
# ============================================================

status: active
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/0300001_POCKET_SECRETARY_MODEL_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY MODEL OVERVIEW
# ============================================================

status: active
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/103_POCKET_SECRETARY_LOCAL_DATA_MODEL.md
# ============================================================

# ============================================================
# LOCAL DATA MODEL
# ============================================================

status: canonical
component: local-data-model
owner: Boss
prepared_by: Zero


# STORAGE PRINCIPLE

PocketSecretary stores personal data locally.


# ROOM DATABASE TABLES

schedule

todo

notes

settings

secretary_config


# FILE STORAGE

Archive files stored locally.

Supported types:

PDF
PNG
JPEG
CSV
TXT
XLSX


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/108_POCKET_SECRETARY_UI_MODEL.md
# ============================================================

# ============================================================
# UI MODEL
# ============================================================

status: canonical
component: ui-model
owner: Boss
prepared_by: Zero


# DASHBOARD STRUCTURE

Root

 ├ Background
 ├ Character
 └ Widgets


# DISPLAY CONTENT

Secretary character
Today's schedule
Todo list
Quick tools


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/109_POCKET_SECRETARY_SECURITY_MODEL.md
# ============================================================

# ============================================================
# SECURITY MODEL
# ============================================================

status: canonical
component: security-model
owner: Boss
prepared_by: Zero


# PRINCIPLE

User control over all external actions.


# SECURITY RULES

ERP requests require manual confirmation.

Sensitive data must not be transmitted automatically.

Local data must remain accessible offline.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/110_POCKET_SECRETARY_SYNC_MODEL.md
# ============================================================

# ============================================================
# SYNC MODEL
# ============================================================

status: canonical
component: sync-model
owner: Boss
prepared_by: Zero


# SYNC PRINCIPLE

Local-first architecture.


# OPTIONAL SYNC

Cloud backup

ERP submission

Future external calendar sync.


# CONFLICT RULE

Local data has priority unless explicitly overwritten.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/111_POCKET_SECRETARY_MARKETPLACE_MODEL.md
# ============================================================

# ============================================================
# MARKETPLACE MODEL
# ============================================================

status: canonical
component: marketplace-model
owner: Boss
prepared_by: Zero


# PURPOSE

Defines distribution of Persona assets.


# MARKETPLACE ITEMS

Persona packages

Voice packs

Costumes

DLC content


# DISTRIBUTION MODEL

Assets downloaded and installed locally.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/113_POCKET_SECRETARY_EXTENSION_MODEL.md
# ============================================================

# ============================================================
# EXTENSION MODEL
# ============================================================

status: canonical
component: extension-model
owner: Boss
prepared_by: Zero


# FUTURE FEATURES

AI assistant

Voice interaction

Recommendation engine

Persona emotion system


# DESIGN RULE

Extensions must not break local-first operation.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/115_POCKET_SECRETARY_DATA_SCHEMA.md
# ============================================================

# ============================================================
# POCKET SECRETARY DATA SCHEMA
# ============================================================

status: canonical
system: pocket-secretary
component: data-schema
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines the persistent local data schema
used by PocketSecretary.


# STORAGE MODEL

PocketSecretary uses local storage
as the primary data source.

Technologies

Room Database
Local File Storage


# ROOM TABLES

schedule

schedule_id
title
start_time
end_time
location
note
created_at
updated_at


todo

todo_id
title
status
priority
created_at
completed_at


notes

note_id
title
content
created_at
updated_at


secretary_profile

secretary_id
persona_id
display_name
active_flag
created_at


settings

setting_key
setting_value


archive_metadata

archive_id
file_name
file_type
file_path
created_at


# FILE STORAGE

Archive files are stored locally.

Supported formats

PDF
PNG
JPEG
CSV
TXT
XLSX


# DESIGN PRINCIPLE

All user data must remain locally accessible
without network connectivity.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/116_POCKET_SECRETARY_PERSONA_STATE_MODEL.md
# ============================================================

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


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/117_POCKET_SECRETARY_CONFIGURATION_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY CONFIGURATION MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: configuration-model
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines the configuration system
for PocketSecretary.


# STORAGE

Configuration is stored using

SharedPreferences


# CONFIGURATION ITEMS

erp_company_code

erp_endpoint

erp_api_key


active_secretary_id


ui_layout_mode


tool_order


notification_enabled


background_theme


# ERP CONFIGURATION

Example

company_code = LSAM001

erp_endpoint = https://erp.example.com

api_key = xxxxxx


# UI CONFIGURATION

Stores user interface preferences

dashboard layout
tool ordering
theme selection


# DESIGN PRINCIPLE

Configuration must remain

simple
recoverable
locally stored


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/121_CHARACTER_INTERACTION_MODEL.md
# ============================================================

# ============================================================
# CHARACTER INTERACTION MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: character-interaction

# PURPOSE

Defines interaction with the secretary character.


# INTERACTIONS

tap
long press
gesture


# RESULT

expression change
dialog display
tool access


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/122_DASHBOARD_WIDGET_MODEL.md
# ============================================================

# ============================================================
# DASHBOARD WIDGET MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: widget-model

# PURPOSE

Defines dashboard widgets.


# WIDGET TYPES

schedule widget
todo widget
status widget


# DESIGN PRINCIPLE

Widgets must be lightweight
and refresh independently.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/123_LOCAL_FILE_STORAGE_MODEL.md
# ============================================================

# ============================================================
# LOCAL FILE STORAGE MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: file-storage

# PURPOSE

Defines local file storage structure.


# STORAGE TYPES

archive files
image assets
temporary files


# DESIGN PRINCIPLE

All files remain locally accessible.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/124_DATA_BACKUP_MODEL.md
# ============================================================

# ============================================================
# DATA BACKUP MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: data-backup

# PURPOSE

Defines backup and export mechanisms.


# BACKUP METHODS

manual export
cloud backup (future)


# DATA TYPES

schedule
todo
notes
configuration


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/125_SECRETARY_PROFILE_MODEL.md
# ============================================================

# ============================================================
# SECRETARY PROFILE MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: secretary-profile

# PURPOSE

Defines the profile of a secretary.


# PROFILE FIELDS

secretary_id
persona_id
display_name
voice_profile
active_flag


# DESIGN PRINCIPLE

Profiles reference PersonaPackage.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/127_ERP_REQUEST_MODEL.md
# ============================================================

# ============================================================
# ERP REQUEST MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: erp-request-model

# PURPOSE

Defines ERP request structure.


# REQUEST FLOW

PocketSecretary
 ↓
REST API
 ↓
ERP


# REQUEST TYPES

transport expense
approval request
business submission


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/128_ERP_AUTHENTICATION_MODEL.md
# ============================================================

# ============================================================
# ERP AUTHENTICATION MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: erp-authentication

# PURPOSE

Defines ERP authentication model.


# AUTHENTICATION DATA

company_code
erp_endpoint
api_key


# SECURITY PRINCIPLE

Credentials stored locally
and transmitted only during requests.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/129_POCKET_SECRETARY_SECURITY_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY SECURITY MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: security-model
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines the security architecture
of PocketSecretary.


# SECURITY PRINCIPLES

Local-first data model

Manual ERP submission only

No autonomous financial operations


# SECURITY DOMAINS

1 Device Security
2 Network Security
3 ERP Integration Security
4 Persona Asset Security


# DEVICE SECURITY

User personal data is stored locally.

Storage systems:

Room Database
Local file storage


Sensitive data:

ERP tokens
Authentication keys

must be stored in

Android Keystore.


# NETWORK SECURITY

All external communication must use HTTPS.

Certificate validation is required.


# ERP REQUEST SECURITY

ERP requests must contain:

company_code
user_identifier
request_payload
request_timestamp


ERP requests must be manually initiated.


# PROHIBITED OPERATIONS

PocketSecretary must never perform:

automatic ERP submission
automatic ERP approval
financial transaction execution


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/130_POCKET_SECRETARY_PERMISSION_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY PERMISSION MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: permission-model
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines Android permission usage.


# REQUIRED PERMISSIONS

INTERNET

POST_NOTIFICATIONS


# OPTIONAL PERMISSIONS

READ_EXTERNAL_STORAGE

WRITE_EXTERNAL_STORAGE

CAMERA (business card OCR)


# PERMISSION PRINCIPLES

Permissions must follow:

minimal access
feature-based request
runtime permission request


Permissions must never be requested
before the related feature is used.


# STORAGE POLICY

Local files stored in

app private storage.

External storage is optional.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/132_POCKET_SECRETARY_API_ERROR_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY API ERROR MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: api-error-model
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines API error categories.


# ERROR CATEGORIES

CLIENT_ERROR

NETWORK_ERROR

SERVER_ERROR

ERP_REJECTION


# ERROR STRUCTURE

error_code
error_message
timestamp


# CLIENT_ERROR

Invalid request payload.


# NETWORK_ERROR

Connectivity failure
timeout
DNS failure.


# SERVER_ERROR

Unexpected server response.


# ERP_REJECTION

ERP approval rejected
by ERP system.


# ERROR HANDLING PRINCIPLE

User must be notified
for ERP related failures.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/133_POCKET_SECRETARY_ROOM_ENTITY_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY ROOM ENTITY MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: room-entity-model
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines Room database entities.


# ENTITY LIST

ScheduleEntity

TodoEntity

NoteEntity

ArchiveEntity

SecretaryEntity

SettingsEntity


# SCHEDULE ENTITY

id
title
start_time
end_time
location
memo
created_at
updated_at


# TODO ENTITY

id
title
completed
deadline
created_at


# NOTE ENTITY

id
title
content
created_at


# ARCHIVE ENTITY

id
file_path
file_type
created_at


# SECRETARY ENTITY

id
persona_id
name
active_flag


# SETTINGS ENTITY

id
setting_key
setting_value


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/134_POCKET_SECRETARY_DATABASE_MIGRATION_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY DATABASE MIGRATION MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: database-migration-model
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines database migration rules.


# VERSIONING

Room database must use
versioned schema management.


Example

v1
v2
v3


# MIGRATION REQUIREMENT

Each version upgrade must define
a migration script.


# MIGRATION PRINCIPLES

No destructive schema change.

Existing user data must be preserved.


# PROHIBITED OPERATIONS

DROP TABLE

DROP COLUMN

without migration path.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/135_POCKET_SECRETARY_NAVIGATION_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY NAVIGATION MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: navigation-model
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines screen navigation structure.


# MAIN SCREENS

Dashboard

Schedule

Todo

Archive

Tools

Settings


# ROOT STRUCTURE

MainActivity

DashboardFragment

ScheduleFragment

TodoFragment

ArchiveFragment

ToolsFragment

SettingsFragment


# NAVIGATION MODEL

Bottom navigation.


# NAVIGATION PRINCIPLES

Navigation must preserve
local application state.


Network connection must not be
required for navigation.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/136_POCKET_SECRETARY_VIEWMODEL_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY VIEWMODEL MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: viewmodel-model
owner: Boss
prepared_by: Zero


# PURPOSE

Defines ViewModel responsibilities for PocketSecretary.


# VIEWMODEL STRUCTURE

DashboardViewModel  
ScheduleViewModel  
TodoViewModel  
ArchiveViewModel  
ToolsViewModel  
SettingsViewModel


# RESPONSIBILITIES

ViewModel must:

- expose UI state
- call repository layer
- transform data for UI
- handle UI actions


# CONSTRAINTS

ViewModel must not:

- directly access database
- perform network operations

All data access must go through repositories.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/137_POCKET_SECRETARY_BACKGROUND_TASK_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY BACKGROUND TASK MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: background-task-model
owner: Boss
prepared_by: Zero


# PURPOSE

Defines background task processing.


# IMPLEMENTATION

Android WorkManager.


# TASK TYPES

schedule_reminder_worker  
todo_deadline_worker  
erp_status_worker


# PRINCIPLES

Background tasks must be:

- retry safe
- idempotent
- resource efficient


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/138_POCKET_SECRETARY_NOTIFICATION_TRIGGER_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY NOTIFICATION TRIGGER MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: notification-trigger-model
owner: Boss
prepared_by: Zero


# PURPOSE

Defines notification trigger conditions.


# TRIGGERS

Schedule reminder  
Todo deadline  
ERP request result


# DELIVERY

Android NotificationManager.


# POLICY

Notifications must be user-configurable.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/140_POCKET_SECRETARY_ERROR_HANDLING_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY ERROR HANDLING MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: error-handling-model
owner: Boss
prepared_by: Zero


# PURPOSE

Defines runtime error handling policy.


# ERROR TYPES

database_error  
network_error  
persona_asset_error  
erp_request_error


# POLICY

Errors must be:

- logged
- surfaced to UI when relevant
- recoverable where possible


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/141_POCKET_SECRETARY_LOGGING_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY LOGGING MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: logging-model
owner: Boss
prepared_by: Zero


# PURPOSE

Defines runtime logging.


# LOG LEVELS

INFO  
WARN  
ERROR  
DEBUG


# OUTPUT

Android Logcat  
Optional local log file


# RULE

Sensitive data must never be logged.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/143_POCKET_SECRETARY_REPOSITORY_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY REPOSITORY MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: repository-model
owner: Boss
prepared_by: Zero


# PURPOSE

Defines repository abstraction.


# REPOSITORIES

ScheduleRepository  
TodoRepository  
ArchiveRepository  
SettingsRepository


# ROLE

Repository mediates between:

Room database  
Remote APIs


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/144_POCKET_SECRETARY_USECASE_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY USECASE MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: usecase-model
owner: Boss
prepared_by: Zero


# PURPOSE

Defines application use cases.


# USECASES

create_schedule  
complete_todo  
submit_erp_request  
switch_secretary


# RULE

Use cases orchestrate repositories.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/145_POCKET_SECRETARY_UI_STATE_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY UI STATE MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: ui-state-model
owner: Boss
prepared_by: Zero


# PURPOSE

Defines UI state structures.


# STATE TYPES

Loading  
Success  
Error  
Empty


# RULE

UI must be driven by state objects.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/146_POCKET_SECRETARY_TEST_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY TEST MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: test-model
owner: Boss
prepared_by: Zero


# PURPOSE

Defines testing strategy.


# TEST TYPES

unit tests  
repository tests  
ui tests


# TOOLING

JUnit  
AndroidX Test


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/147_POCKET_SECRETARY_BUILD_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY BUILD MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: build-model
owner: Boss
prepared_by: Zero


# PURPOSE

Defines Android build configuration.


# TOOLCHAIN

Gradle  
Android SDK


# BUILD TYPES

debug  
release


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/148_POCKET_SECRETARY_DEPENDENCY_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY DEPENDENCY MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: dependency-model
owner: Boss
prepared_by: Zero


# CORE LIBRARIES

AndroidX  
Room  
WorkManager  
OkHttp


# RULE

Dependencies must remain minimal.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/149_POCKET_SECRETARY_DEPLOYMENT_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY DEPLOYMENT MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: deployment-model
owner: Boss
prepared_by: Zero


# DISTRIBUTION

Google Play  
Direct APK distribution


# VERSIONING

Semantic versioning recommended.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/150_POCKET_SECRETARY_EVOLUTION_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY EVOLUTION MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: evolution-model
owner: Boss
prepared_by: Zero


# PURPOSE

Defines long-term evolution path.


# FUTURE CAPABILITIES

AI secretary  
voice interaction  
persona emotion system  
cross-device sync


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/POCKET_SECRETARY_DATA_MODEL_CANONICAL.md
# ============================================================

# ============================================================
# POCKET SECRETARY DATA MODEL
# ============================================================

status: canonical
system: Civilization
application: PocketSecretary

owner: Boss
prepared_by: Zero



# DATABASE

SQLite

Recommended implementation

Android Room



# PERSONA INSTANCE

persona_instance

instance_id
persona_id
persona_name
installed_at
growth_state
active_flag



# SCHEDULE

schedule

schedule_id
title
description
start_time
end_time
location
reminder_flag
created_at



# TASK

task

task_id
title
description
status
priority
due_date
created_at



# NOTE

note

note_id
title
content
created_at
updated_at



# JOURNAL

journal

journal_id
entry_text
mood
created_at



# ASSET CACHE

asset_cache

asset_id
asset_type
asset_name
file_path
installed_at



# PURCHASE HISTORY

purchase_history

purchase_id
item_id
item_type
price
purchase_date



# TRANSIT HISTORY

transit_history

search_id
origin
destination
route_data
search_time



# EXPENSE RECORD

expense_record

expense_id
amount
route
date
submitted_flag



# SETTINGS

app_settings

setting_key
setting_value


# ============================================================
# PERSONA INSTANCE MODEL
# ============================================================

PocketSecretary loads installed personas
as Persona Instances.


persona_instance

instance_id
persona_id
owner_user_id
installed_at
version



# ============================================================
# PERSONA STATE
# ============================================================

Persona state represents growth values
maintained by PersonaOS.


examples

trust
discipline
curiosity
stability



# ============================================================
# SCENE DATA
# ============================================================

dashboard_scene

background_asset_id
persona_instance_id
effect_set



# ============================================================
# RENDER REQUEST MODEL
# ============================================================

render_request

scene_type
background_asset
persona_manifest
effect_manifest



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/POCKET_SECRETARY_FUNCTION_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY
# FUNCTION MODEL
# ============================================================

status: canonical
layer: application

app_id: pocket-secretary

owner: Boss
prepared_by: Zero


# CORE FUNCTIONS

01 persona
02 conversation
03 schedule
04 task
05 note
06 journal
07 calculator
08 notification
09 local_library
10 book_reader
11 settings
12 local_data_manager


# OPTIONAL ONLINE FUNCTIONS

13 marketplace
14 asset_manager
15 shared_library_sync
16 persona_growth_sync


# READER MODEL

Reader Layer

standard_reader
civilization_reader


# STANDARD READER

Supports:

pdf
epub
html
markdown


# CIVILIZATION READER

Supports:

annotation
knowledge link
ai explanation
highlight
bookmark
note


# BOOK MODEL

Books are treated as digital assets.

digital_asset_type = book


# SUMMARY

Pocket Secretary combines
assistant functions,
life support,
and knowledge access
in a local-first structure.



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/POCKET_SECRETARY_NAVIGATION_MODEL_CANONICAL.md
# ============================================================

# ============================================================
# POCKET SECRETARY NAVIGATION MODEL
# ============================================================

status: canonical
system: Civilization
application: PocketSecretary

owner: Boss
prepared_by: Zero



# NAVIGATION STRUCTURE

Dashboard

 -> Character Manager
 -> Asset Manager
 -> Marketplace
 -> Schedule
 -> Tasks
 -> Notes
 -> Journal
 -> Calculator
 -> Transit Search



# PERSONA NAVIGATION

Dashboard

tap persona

 -> Character Manager


Character Manager

 -> Persona Switch
 -> Persona Install
 -> Marketplace



# BACKGROUND NAVIGATION

Dashboard

tap background

 -> Asset Manager



# MARKETPLACE FLOW

Marketplace

 -> Item List
 -> Item Detail
 -> Purchase
 -> Install



# BUSINESS NAVIGATION

Business users

 -> Travel Expense
 -> ERP Integration
 -> Business Card Manager



# AI NAVIGATION

Persona interaction

 -> AI Conversation
 -> AI Consultation
 -> AI Suggestion


# ============================================================
# BACKGROUND NAVIGATION
# ============================================================

Dashboard
↓
Tap Background
↓
Background Selector
↓
Marketplace (optional)



# ============================================================
# CHARACTER NAVIGATION
# ============================================================

Dashboard
↓
Tap Persona
↓
Character Selector
↓
Marketplace (optional)



# ============================================================
# MARKETPLACE ENTRY POINTS
# ============================================================

Marketplace can be opened from

background selector
character selector
asset manager



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/POCKET_SECRETARY_OS_SCHEMA_USAGE.md
# ============================================================

# ============================================================
# POCKET SECRETARY
# OS / SCHEMA USAGE
# ============================================================

status: canonical
layer: application

app_id: pocket-secretary

owner: Boss
prepared_by: Zero


# PRIMARY OS

PersonaOS
LifeOS


# OPTIONAL OS

BusinessOS


# PRIMARY SCHEMA

personaos
life


# OPTIONAL SCHEMA

business


# PRIMARY USE

PersonaOS

persona runtime
persona visuals
persona interaction
persona state


LifeOS

schedule
task
journal
life records


# OPTIONAL USE

BusinessOS

marketplace
shared library
online asset distribution
online purchase records


# SUMMARY

Pocket Secretary is primarily
a PersonaOS + LifeOS application
with optional BusinessOS connectivity.



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/POCKET_SECRETARY_PLAN_MODEL_CANONICAL.md
# ============================================================

# ============================================================
# POCKET SECRETARY PLAN MODEL
# Canonical Design
# ============================================================

status: canonical
system: Civilization
application: PocketSecretary

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define subscription plans and feature availability
for PocketSecretary.


# ============================================================
# PLAN STRUCTURE
# ============================================================

PocketSecretary has three plans.

Free
Pro
For Business


Concept

Free
Basic Tools

Pro
AI Secretary

For Business
Corporate Secretary


# ============================================================
# PERSONA LIMIT
# ============================================================

Persona slots depend on the subscription plan.


Free

initial_persona = 3
additional_persona = 1

maximum = 4


Pro

initial_persona = 3
additional_persona = 3

maximum = 6


For Business

initial_persona = 3
additional_persona = 3

maximum = 6


Persona growth rule

growth_enabled = additional_persona_only


# ============================================================
# FEATURE MATRIX
# ============================================================


# ------------------------------------------------------------
# BASIC PERSONAL TOOLS
# ------------------------------------------------------------

Schedule
Task / Todo
Notes
Journal
Calculator
Route Search


Free      enabled
Pro       enabled
For Business  enabled


# ------------------------------------------------------------
# PERSONA SYSTEM
# ------------------------------------------------------------

Persona interaction
Persona switching
Persona growth


Free      enabled
Pro       enhanced
For Business  enhanced


# ------------------------------------------------------------
# AI SECRETARY
# ------------------------------------------------------------

AI powered assistance features.


Functions

AI conversation
AI consultation
AI suggestion
AI summarization


Free

disabled


Pro

enabled


For Business

enabled


# ------------------------------------------------------------
# AI DOCUMENT FUNCTIONS
# ------------------------------------------------------------

Document summarization
Content evaluation


Free

disabled


Pro

enabled


For Business

enabled


# ------------------------------------------------------------
# SCHEDULE AI
# ------------------------------------------------------------

AI assisted schedule optimization.


Functions

schedule suggestion
time optimization


Free

disabled


Pro

enabled


For Business

enabled


# ------------------------------------------------------------
# MARKETPLACE
# ------------------------------------------------------------

Marketplace access for digital assets.


Items

personas
backgrounds
voices
costumes
books


Free

enabled


Pro

enabled


For Business

enabled


# ------------------------------------------------------------
# ASSET MANAGEMENT
# ------------------------------------------------------------

Manage installed assets.


Functions

install asset
remove asset
switch background


Free

enabled


Pro

enabled


For Business

enabled


# ------------------------------------------------------------
# ERP INTEGRATION
# ------------------------------------------------------------

Enterprise system integration.


Functions

travel expense submission
expense creation
approval status


Free

disabled


Pro

disabled


For Business

enabled


# ------------------------------------------------------------
# BUSINESS CARD MANAGEMENT
# ------------------------------------------------------------

Business card manager integration.


Functions

card scan
contact search
contact storage


Free

disabled


Pro

disabled


For Business

enabled


# ------------------------------------------------------------
# COMPANY SECRETARY
# ------------------------------------------------------------

Corporate assistant persona.


Free

disabled


Pro

disabled


For Business

enabled


# ============================================================
# TRANSPORT ROUTE SEARCH
# ============================================================

Provider

Yahoo Transit


Functions

route search
travel time
fare calculation


Free      enabled
Pro       enabled
For Business  enabled


# ============================================================
# TRAVEL EXPENSE
# ============================================================

Travel expense support.


Functions

manual expense input
expense creation from transit route
ERP submission by user choice


Free

manual only
no ERP submission


Pro

manual only
no ERP submission


For Business

manual input
expense creation from transit route
ERP submission available


# ============================================================
# RELEASE STRATEGY
# ============================================================

Version 1.0

No AI features enabled by default.
No user-side AI setting changes required.

Goal

pass Google Play review first.


Version 1.1+

AI features may be added by version upgrade
after initial review approval.


# ============================================================
# FUTURE FEATURES
# ============================================================

The following features are planned after
initial Google Play approval.


AI document analysis

library summarization
knowledge recommendation


Google Calendar integration


# ============================================================
# SUMMARY
# ============================================================

Free

basic personal assistant


Pro

AI powered secretary


For Business

corporate secretary with ERP integration
and company secretary support


# ============================================================
# END
# ============================================================



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/0400000_POCKET_SECRETARY_RUNTIME_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY RUNTIME INDEX
# ============================================================

status: active
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/0400001_POCKET_SECRETARY_RUNTIME_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY RUNTIME OVERVIEW
# ============================================================

status: active
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/106_POCKET_SECRETARY_TODO_SYSTEM.md
# ============================================================

# ============================================================
# TODO SYSTEM
# ============================================================

status: canonical
component: todo-system
owner: Boss
prepared_by: Zero


# FEATURES

Add task
Complete task
Delete task
Reorder tasks


# STORAGE

Stored locally using Room DB.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/114_POCKET_SECRETARY_RUNTIME_ENGINE.md
# ============================================================

# ============================================================
# POCKET SECRETARY RUNTIME ENGINE
# ============================================================

status: canonical
system: pocket-secretary
component: runtime-engine
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines the runtime engine responsible for
application execution flow, UI refresh cycles,
and persona rendering updates.


# RUNTIME ROLE

The runtime engine coordinates

user interaction
persona rendering
local data updates
UI refresh cycles


The engine operates entirely on-device.


# RUNTIME LOOP MODEL

PocketSecretary operates using
an event-driven runtime loop.

Flow

Application Start
 ↓
Initialize Runtime
 ↓
Load Persona State
 ↓
Render Dashboard
 ↓
Event Loop


# EVENT LOOP

The runtime loop reacts to events.

Examples

user interaction
schedule updates
todo changes
persona state refresh
UI refresh requests


Event handling must remain lightweight
to ensure smooth UI performance.


# PERSONA RENDER UPDATE

Persona rendering is updated when

secretary changes
expression changes
animation state changes
application start


Rendering flow

Runtime Engine
 ↓
Manifest Request
 ↓
persona-visual-runtime
 ↓
Bitmap Composition
 ↓
UI Update


# STATE MANAGEMENT

Runtime maintains transient state

active secretary
UI mode
temporary session data


Persistent data must be stored
in the local data layer.


# DATA FLOW

User Action
 ↓
Application Logic
 ↓
Local Data Update
 ↓
Runtime Event
 ↓
UI Refresh


# PERFORMANCE PRINCIPLE

The runtime must ensure

smooth rendering
low memory overhead
minimal blocking operations


Heavy operations must not
execute on the UI thread.


# DESIGN CONSTRAINTS

The runtime engine must remain

local-first
offline-capable
deterministic


External systems must never control
the runtime execution.


# END
# ============================================================


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/120_POCKET_SECRETARY_NOTIFICATION_SYSTEM.md
# ============================================================

# ============================================================
# POCKET SECRETARY NOTIFICATION SYSTEM
# ============================================================

status: canonical
system: pocket-secretary
component: notification-system
owner: Boss
prepared_by: Zero

# PURPOSE

Defines the notification framework.


# NOTIFICATION TYPES

schedule reminder
todo reminder
erp request result
system alerts


# DELIVERY

Android notification system.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/POCKET_SECRETARY_RUNTIME_SPEC.md
# ============================================================

# ============================================================
# POCKET SECRETARY
# RUNTIME SPECIFICATION
# ============================================================

status: canonical
layer: runtime

app_id: pocket-secretary

owner: Boss
prepared_by: Zero


# PURPOSE

Define the runtime environment used by PocketSecretary.

PocketSecretary hosts the Persona Runtime and
manages local runtime assets.


# RUNTIME OVERVIEW

PocketSecretary Runtime includes:

persona runtime
asset runtime
emotion runtime
voice runtime
interaction runtime


# RUNTIME LAYERS

PocketSecretary Runtime

application layer
assistant engine
persona runtime
asset runtime
life assistant
reader engine


# PERSONA RUNTIME

Persona runtime manages the execution of persona behavior.

components:

persona profile
behavior profile
persona state
interaction logic


Persona runtime is responsible for:

persona reactions
conversation behavior
assistant responses
personality expression


# EMOTION RUNTIME

Emotion runtime controls persona emotional state.

examples:

calm
happy
sad
surprised
neutral


emotion influences:

voice tone
expression
assistant responses


# VISUAL RUNTIME

Visual runtime manages persona appearance.

components:

character assets
expressions
animation states


example expressions:

idle
blink
talk
reaction


# VOICE RUNTIME

Voice runtime manages speech output.

voice types:

tts
voice pack


voice parameters:

speed
tone
style


# ASSET RUNTIME

Runtime assets are loaded from:

assets/runtime


asset types:

persona
background
voice
animation
ui assets


example structure:

assets/runtime

persona
background
voice
animation


# RUNTIME LOADING

Runtime loading sequence:

load persona manifest
load persona assets
initialize persona runtime
initialize emotion state
initialize interaction engine


# INTERACTION RUNTIME

Interaction runtime handles user communication.

components:

conversation handler
assistant response engine
persona reaction system


# LIFE ASSISTANT RUNTIME

Life assistant runtime supports local life functions.

schedule
tasks
notes
journal
calculator


# LIBRARY RUNTIME

Library runtime manages local knowledge assets.

books
documents
learning materials


# READER RUNTIME

Reader runtime supports two modes.

Standard Reader

pdf
epub
html


Civilization Reader

annotation
knowledge linking
ai explanation


# ONLINE EXTENSION

Optional runtime extensions may connect to:

PersonaOS
Marketplace
Shared Library


These are not required for core functionality.


# RUNTIME DESIGN RULE

PocketSecretary runtime must function
without internet connectivity.


# SUMMARY

PocketSecretary runtime provides
a local execution environment for:

persona behavior
assistant functions
life assistance
knowledge access

while optionally connecting to
Civilization services.



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/0500000_POCKET_SECRETARY_FLOW_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY FLOW INDEX
# ============================================================

status: active
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/0500001_POCKET_SECRETARY_FLOW_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY FLOW OVERVIEW
# ============================================================

status: active
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/112_POCKET_SECRETARY_RUNTIME_FLOW.md
# ============================================================

# ============================================================
# RUNTIME FLOW
# ============================================================

status: canonical
component: runtime-flow
owner: Boss
prepared_by: Zero


# APPLICATION START

Launch app
 ↓
Load secretary profile
 ↓
Initialize persona runtime
 ↓
Render dashboard


# UPDATE FLOW

User interaction
 ↓
Local data update
 ↓
UI refresh


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/0600000_POCKET_SECRETARY_INTEGRATION_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY INTEGRATION INDEX
# ============================================================

status: active
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/0600001_POCKET_SECRETARY_INTEGRATION_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY INTEGRATION OVERVIEW
# ============================================================

status: active
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/102_POCKET_SECRETARY_PERSONA_INTEGRATION.md
# ============================================================

# ============================================================
# PERSONA INTEGRATION
# ============================================================

status: canonical
component: persona-integration
owner: Boss
prepared_by: Zero


# PURPOSE

Defines integration between PocketSecretary
and PersonaOS.


# RENDERING FLOW

PocketSecretary
 ↓
Manifest API
 ↓
persona-visual-runtime
 ↓
Bitmap composition


# CHARACTER MODEL

Characters are created from PersonaPackage.

PersonaPackage

 ├ persona_profile
 ├ visual_profile
 ├ voice_profile
 └ skill_pack


# SECRETARY SWITCHING

Users may switch active secretaries.

Character rendering updates automatically.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/104_POCKET_SECRETARY_ERP_INTEGRATION.md
# ============================================================

# ============================================================
# ERP INTEGRATION
# ============================================================

status: canonical
component: erp-integration
owner: Boss
prepared_by: Zero


# PURPOSE

Defines interaction between PocketSecretary and ERP.


# CONNECTION MODEL

Company Code
ERP URL
API Key


Example

LSAM001
https://erp.example.com
api_key_xxxx


# REQUEST FLOW

PocketSecretary
 ↓
ERP Request API
 ↓
ERP Approval Workflow


# SECURITY RULE

ERP submission must be manually triggered by the user.

Automatic financial operations are prohibited.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/131_POCKET_SECRETARY_API_SPECIFICATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY API SPECIFICATION
# ============================================================

status: canonical
system: pocket-secretary
component: api-specification
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines API interactions between
PocketSecretary and external systems.


# API TYPES

1 Persona Manifest API
2 Persona Asset API
3 ERP Request API
4 ERP Status API


# PERSONA MANIFEST API

Purpose:

Retrieve visual layer manifest
for Persona rendering.


Response:

persona_id
layer_manifest
render_parameters


# ERP REQUEST API

Purpose:

Submit ERP requests from the user.


Request structure:

request_type
amount
date
description


# ERP STATUS API

Purpose:

Retrieve approval result.


Response:

request_status

PENDING
APPROVED
REJECTED


# API CONSTRAINTS

All ERP requests must originate
from explicit user actions.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/070.operations/0700000_POCKET_SECRETARY_OPERATIONS_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY OPERATIONS INDEX
# ============================================================

status: active
layer: 070.operations
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/070.operations/0700001_POCKET_SECRETARY_OPERATIONS_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY OPERATIONS OVERVIEW
# ============================================================

status: active
layer: 070.operations
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/0800000_POCKET_SECRETARY_POLICY_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY POLICY INDEX
# ============================================================

status: active
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/0800001_POCKET_SECRETARY_POLICY_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY POLICY OVERVIEW
# ============================================================

status: active
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/0900000_POCKET_SECRETARY_INTERFACE_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY INTERFACE INDEX
# ============================================================

status: active
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/0900001_POCKET_SECRETARY_INTERFACE_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY INTERFACE OVERVIEW
# ============================================================

status: active
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/118_POCKET_SECRETARY_UI_LAYOUT_SYSTEM.md
# ============================================================

# ============================================================
# POCKET SECRETARY UI LAYOUT SYSTEM
# ============================================================

status: canonical
system: pocket-secretary
component: ui-layout-system
owner: Boss
prepared_by: Zero

# PURPOSE

Defines the UI layout structure
of the PocketSecretary dashboard.


# DASHBOARD STRUCTURE

Root

 ├ Background Layer
 ├ Character Layer
 ├ Widget Layer
 └ Tool Panel


# LAYER RESPONSIBILITY

Background Layer
visual theme

Character Layer
Persona rendering

Widget Layer
schedule, todo, status

Tool Panel
utility tools


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/100.security/1000000_POCKET_SECRETARY_SECURITY_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY SECURITY INDEX
# ============================================================

status: active
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/100.security/1000001_POCKET_SECRETARY_SECURITY_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY SECURITY OVERVIEW
# ============================================================

status: active
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/110.infrastructure/1100000_POCKET_SECRETARY_INFRASTRUCTURE_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY INFRASTRUCTURE INDEX
# ============================================================

status: active
layer: 110.infrastructure
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/110.infrastructure/1100001_POCKET_SECRETARY_INFRASTRUCTURE_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY INFRASTRUCTURE OVERVIEW
# ============================================================

status: active
layer: 110.infrastructure
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/1200000_POCKET_SECRETARY_IMPLEMENTATION_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY IMPLEMENTATION INDEX
# ============================================================

status: active
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/1200001_POCKET_SECRETARY_IMPLEMENTATION_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY IMPLEMENTATION OVERVIEW
# ============================================================

status: active
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/130.development/1300000_POCKET_SECRETARY_DEVELOPMENT_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY DEVELOPMENT INDEX
# ============================================================

status: active
layer: 130.development
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/130.development/1300001_POCKET_SECRETARY_DEVELOPMENT_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY DEVELOPMENT OVERVIEW
# ============================================================

status: active
layer: 130.development
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/010.constitution/0100000_POCKET_SECRETARY_CONSTITUTION_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY CONSTITUTION INDEX
# ============================================================

status: active
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/010.constitution/0100001_POCKET_SECRETARY_CONSTITUTION_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY CONSTITUTION OVERVIEW
# ============================================================

status: active
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/0200000_POCKET_SECRETARY_ARCHITECTURE_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY ARCHITECTURE INDEX
# ============================================================

status: active
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/0200001_POCKET_SECRETARY_ARCHITECTURE_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY ARCHITECTURE OVERVIEW
# ============================================================

status: active
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/100_POCKET_SECRETARY_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY OVERVIEW
# ============================================================

status: canonical
system: pocket-secretary
component: overview
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

PocketSecretary is a personal client application
centered around PersonaOS visual characters.

The application provides personal organization tools
while acting as the current primary user client
for the Civilization ecosystem.


# SYSTEM ROLE

PocketSecretary operates as:

- personal assistant application
- PersonaOS visual front-end
- ERP request entry point
- personal productivity tool


# SYSTEM POSITION

PocketSecretary is a client application
that interfaces with Civilization systems.

Structure:

User
 ↓
PocketSecretary
 ↓
PersonaOS
 ↓
Civilization Core


PocketSecretary does not directly operate
civilization subsystems.


# CIVILIZATION STRUCTURE

Civilization

 ├ PersonaOS
 ├ BusinessOS
 ├ Life Apps
 ├ Streaming
 ├ Game
 └ Client Applications


PocketSecretary belongs to the client layer.


# CLIENT STATUS

PocketSecretary is currently the primary
personal client application.

Additional clients may be introduced
in the future for other domains.


# USER MODEL

PocketSecretary is designed primarily
as a single-user application.


# PLAN MODEL

FREE
1 secretary

PRO
3 secretaries

BUSINESS
3 personal secretaries
+ company secretary


# ERP INTEGRATION

PocketSecretary may send requests
to enterprise ERP systems.

Example flow

PocketSecretary
 ↓
ERP Request API
 ↓
Enterprise ERP


ERP systems are external to Civilization.


# CORE PRINCIPLE

Local-first architecture.

User data is stored locally
and only necessary requests
are transmitted to external systems.


# DESIGN PRINCIPLES

PocketSecretary must remain:

offline-capable  
user-controlled  
non-autonomous in financial operations


The application acts as a personal client,
not as a system controller.

# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/101_POCKET_SECRETARY_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY ARCHITECTURE
# ============================================================

status: canonical
system: pocket-secretary
component: architecture
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines the internal architecture
of the PocketSecretary application.


# ARCHITECTURE PRINCIPLE

PocketSecretary follows a layered architecture
designed for local-first operation.

Core principles:

local-first data handling  
offline-capable operation  
controlled external integration  
persona-centric UI rendering


# ARCHITECTURE LAYERS

The application consists of five logical layers.


# L1 USER INTERFACE LAYER

Responsible for visual presentation
and user interaction.

Components

Dashboard  
Character View  
Widgets  
Tool Panels  


The UI layer renders Persona characters
and displays user data.


# L2 APPLICATION LOGIC LAYER

Contains the functional modules
of the application.

Modules

Schedule Management  
Todo Management  
Archive System  
Note System  
Business Tools  


This layer coordinates
user actions and system behavior.


# L3 PERSONA RENDERING LAYER

Responsible for character rendering.

Rendering pipeline

PocketSecretary
 ↓
Manifest API
 ↓
persona-visual-runtime
 ↓
Bitmap composition


Rendering uses the Anchor-based
visual composition model.


# L4 LOCAL DATA LAYER

Responsible for local storage.

Technologies

Room Database  
Local File Storage  


Stored data includes

schedule  
todo  
notes  
settings  
archive files


User data is always stored locally.


# L5 INTEGRATION LAYER

Handles communication with
external systems.

Integrations

PersonaOS APIs  
Enterprise ERP APIs  


External integrations are optional
and never required for core operation.


# NETWORK POLICY

All core functionality must operate
without network connectivity.

Network access is only used for

persona asset retrieval  
ERP request submission  
optional synchronization


# CIVILIZATION POSITION

PocketSecretary functions as a
client application within the
Civilization ecosystem.

Structure

User
 ↓
PocketSecretary
 ↓
PersonaOS
 ↓
Civilization Core


# DESIGN CONSTRAINTS

PocketSecretary must not

control Civilization subsystems  
modify external systems automatically  
execute financial operations autonomously

# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/139_POCKET_SECRETARY_FILE_STORAGE_STRUCTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY FILE STORAGE STRUCTURE
# ============================================================

status: canonical
system: pocket-secretary
component: file-storage-structure
owner: Boss
prepared_by: Zero


# PURPOSE

Defines local file storage layout.


# DIRECTORY STRUCTURE

archive/  
exports/  
persona_cache/  
attachments/  
temp/


# RULES

Temporary files must be periodically cleaned.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/142_POCKET_SECRETARY_MODULE_STRUCTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY MODULE STRUCTURE
# ============================================================

status: canonical
system: pocket-secretary
component: module-structure
owner: Boss
prepared_by: Zero


# PURPOSE

Defines internal module layout.


# MODULES

ui  
domain  
data  
integration


# RULE

Modules must depend inward only.

ui → domain → data


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/151_POCKET_SECRETARY_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY
# UI ARCHITECTURE
# ============================================================

status: canonical
layer: ui
component: pocket-secretary-ui

owner: Boss
prepared_by: Zero


# PURPOSE

Define the official UI architecture of PocketSecretary.


# DASHBOARD STRUCTURE

Background Layer
↓
Persona Layer
↓
Assistant Message
↓
Action Buttons


# BACKGROUND

Tap → Background Manager


Background Manager

background change
theme change
background marketplace


# PERSONA

Tap → Character Manager


Character Manager

persona change
costume change
voice change
persona marketplace


# ASSISTANT MESSAGE

Persona communicates with the user.

examples

Good morning
You have 2 schedules today
3 tasks remaining


# ACTION BUTTONS

Schedule
Tools
Library
TODO


# SCHEDULE

calendar
event list
reminders


# TODO

task list
task completion
task reminders


# TOOLS

calculator
transit
expense
notes
business card


# TRANSIT

Yahoo Transit

integration

Android Intent


# EXPENSE

travel expense

integration

ERP


# LIBRARY

Open Civilization Reader

Android Intent


# BUSINESS CARD

Open Business Card App

Android Intent


# MARKETPLACE ENTRY

Persona → Persona Marketplace

Background → Theme Marketplace

Library → Book Marketplace


# DESIGN GOAL

Persona-centered assistant UI.



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/POCKET_SECRETARY_APPLICATION_ARCHITECTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY
# APPLICATION ARCHITECTURE
# ============================================================

status: canonical
layer: application

app_id: pocket-secretary

owner: Boss
prepared_by: Zero


# POSITION

User
↓
PocketSecretary
↓
Persona Runtime
↓
PersonaOS


# CORE ROLE

PocketSecretary is a local-first smartphone secretary
that hosts the Persona Runtime.

The application is responsible for:

persona interaction
assistant behavior
life assistance
knowledge access


# CORE STRUCTURE

PocketSecretary

ui_layer
assistant_engine
persona_runtime
life_assistant
notification_layer
library_layer
reader_engine
optional_online_layer


# PERSONA RUNTIME HOST

PocketSecretary hosts the Persona Runtime.

runtime components:

persona_visual
persona_emotion
persona_voice
persona_interaction
persona_memory


# RUNTIME ASSET SYSTEM

Runtime assets are stored locally.

runtime assets include:

persona
background
voice
animation
ui assets


Example structure:

assets/runtime

persona
background
voice
animation


Runtime assets are loaded by the runtime engine.


# ASSISTANT ENGINE

Assistant logic manages:

conversation
notifications
suggestions
assistant responses


# LIFE ASSISTANT

Local life support functions:

schedule
task
notes
journal
calculator


# LIBRARY

Local knowledge storage.

library manages:

installed books
documents
learning materials


# READER ENGINE

Reader engine supports two modes.


Standard Reader

pdf
epub
html


Civilization Reader

annotation
knowledge linking
ai explanation
highlight
bookmark


# ONLINE EXTENSION

Online features are optional.

marketplace
shared library
asset download
persona growth sync


# DESIGN RULE

PocketSecretary must remain usable
without internet connectivity.


# SUMMARY

PocketSecretary is a local-first
assistant application that hosts
the Persona Runtime and provides
life support and knowledge access.



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/POCKET_SECRETARY_APPLICATION_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY
# APPLICATION OVERVIEW
# ============================================================

status: canonical
layer: application

app_id: pocket-secretary

owner: Boss
prepared_by: Zero


# PURPOSE

Pocket Secretary is a local-first smartphone secretary application.

It is not the entry point of BusinessOS.

It is primarily a personal assistant application
built on PersonaOS and LifeOS.


# PRIMARY ROLE

Pocket Secretary provides:

persona interaction
life assistance
local task support
local schedule support
local notes and journal
local library and reader


# LOCAL-FIRST PRINCIPLE

Pocket Secretary must remain usable
without online connectivity.

Core functions must work locally.


# OPTIONAL ONLINE FUNCTIONS

Some optional online functions may exist.

Examples:

persona growth sync for additional characters
shared library
marketplace access
asset download


# OS RELATION

Primary systems:

PersonaOS
LifeOS

Optional online support:

BusinessOS


# SUMMARY

Pocket Secretary is a local-first
smartphone secretary application
with optional Civilization services.



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/POCKET_SECRETARY_MODULE_STRUCTURE.md
# ============================================================

# ============================================================
# POCKET SECRETARY
# MODULE STRUCTURE
# ============================================================

status: canonical
layer: implementation

app_id: pocket-secretary

owner: Boss
prepared_by: Zero


# PURPOSE

Define the module boundaries of PocketSecretary.

PocketSecretary contains more than 200 Java files.
Modules must be separated to maintain stability.


# MODULE OVERVIEW

PocketSecretary modules

app
ui
assistant_engine
persona_runtime
life_assistant
notification_engine
library_engine
reader_engine
data_storage
infra


# APP MODULE

Application bootstrap.

components:

PocketSecretaryApp
MainActivity
BaseActivity
SettingsActivity


Responsibilities:

application initialization
activity management
lifecycle control


# UI MODULE

User interface components.

components:

dashboard
settings
dialogs
widgets


Responsibilities:

UI rendering
user input
screen navigation


# ASSISTANT ENGINE

Core assistant logic.

components:

conversation handler
assistant response engine
suggestion system


Responsibilities:

assistant responses
user assistance
notification suggestions


# PERSONA RUNTIME

Persona execution environment.

components:

persona engine
emotion system
visual system
voice system
interaction system


Responsibilities:

persona behavior
persona reactions
persona conversation


# LIFE ASSISTANT

Local life support engine.

components:

schedule
calendar
task
notes
journal
calculator


Responsibilities:

personal productivity
life management


# NOTIFICATION ENGINE

Notification management.

components:

notification scheduler
event notifications
reminder engine


Responsibilities:

reminders
assistant notifications
system alerts


# LIBRARY ENGINE

Local knowledge storage.

components:

book storage
document storage
reading progress


Responsibilities:

manage installed books
manage documents


# READER ENGINE

Book and document reader.

reader modes:

standard reader

pdf
epub
html


civilization reader

annotation
knowledge link
ai explanation


# DATA STORAGE

Local data layer.

components:

preferences
local database
cache


Responsibilities:

persistent data storage


# INFRA

Infrastructure layer.

components:

personaos client
edge communication
runtime asset loader


Responsibilities:

external system communication
asset loading


# MODULE DEPENDENCY

UI
↓
Assistant Engine
↓
Persona Runtime
↓
Life Assistant
↓
Data Storage


Infra modules may be used by all layers.


# DESIGN RULE

Modules must not bypass defined boundaries.

UI must not directly access infrastructure.


# SUMMARY

PocketSecretary is structured as a modular
assistant system combining:

persona runtime
assistant logic
life management
knowledge access.



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/POCKET_SECRETARY_MODULE_STRUCTURE_CANONICAL.md
# ============================================================

# ============================================================
# POCKET SECRETARY MODULE STRUCTURE
# ============================================================

status: canonical
system: Civilization
application: PocketSecretary

owner: Boss
prepared_by: Zero



# PURPOSE

Define Android module and package structure.


# PACKAGE ROOT

com.lsam.pocketsecretary



# CORE MODULES

ui
persona
schedule
task
notes
journal
calculator
transit
marketplace
asset
business
ai
settings



# UI MODULE

ui.dashboard
ui.persona
ui.tools
ui.marketplace



# PERSONA MODULE

persona.runtime
persona.manager
persona.state



# TOOLS MODULE

schedule.manager
task.manager
notes.manager
journal.manager
calculator.core



# MARKETPLACE MODULE

marketplace.client
marketplace.install
marketplace.purchase



# ASSET MODULE

asset.manager
asset.cache
asset.renderer



# BUSINESS MODULE

business.expense
business.erp
business.card



# AI MODULE

ai.assistant
ai.conversation
ai.summary
ai.schedule



# INFRASTRUCTURE

data.local
data.sync
network
repository



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/020.architecture/POCKET_SECRETARY_UI_ARCHITECTURE_CANONICAL.md
# ============================================================

# ============================================================
# POCKET SECRETARY UI ARCHITECTURE
# ============================================================

status: canonical
system: Civilization
application: PocketSecretary

owner: Boss
prepared_by: Zero


# PURPOSE

Define the user interface architecture.


# UI CONCEPT

PocketSecretary UI is centered on a Persona.

Persona acts as the visual interface
of the personal assistant.


Main elements

persona display
background
quick access tools
notifications
schedule preview



# DASHBOARD

Main application screen.


Elements

persona view
background view
quick actions
notification panel


Interactions

tap persona -> character manager
tap background -> asset manager



# QUICK ACTIONS

Main tools

Schedule
Task
Notes
Journal
Calculator
Transit Search



# MARKETPLACE ACCESS

Marketplace may be opened from

dashboard
character manager
asset manager



# BUSINESS FEATURES

Business users can access

ERP
travel expense
business card manager



# AI FEATURES

Pro and Business plans support

AI consultation
AI conversation
AI summarization
AI schedule suggestion


# ============================================================
# VISUAL RUNTIME INTEGRATION
# ============================================================

PocketSecretary does not implement
any image composition pipeline.

All visual rendering must be delegated to
persona-visual-runtime.

The application only selects assets
and requests rendering.


Rendering Flow

UI
↓
Scene Request
↓
visual-runtime
↓
Bitmap Result
↓
UI Display



# ============================================================
# DASHBOARD SCENE MODEL
# ============================================================

The dashboard screen is defined as a scene.


dashboard_scene

background
persona
effects
overlay


background and persona are rendered by
visual-runtime.


# ============================================================
# BACKGROUND INTERACTION
# ============================================================

User may tap background.

Actions

change background
open background marketplace


Background selection is handled by
PocketSecretary.

Rendering is handled by visual-runtime.



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/0300000_POCKET_SECRETARY_MODEL_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY MODEL INDEX
# ============================================================

status: active
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/0300001_POCKET_SECRETARY_MODEL_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY MODEL OVERVIEW
# ============================================================

status: active
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/103_POCKET_SECRETARY_LOCAL_DATA_MODEL.md
# ============================================================

# ============================================================
# LOCAL DATA MODEL
# ============================================================

status: canonical
component: local-data-model
owner: Boss
prepared_by: Zero


# STORAGE PRINCIPLE

PocketSecretary stores personal data locally.


# ROOM DATABASE TABLES

schedule

todo

notes

settings

secretary_config


# FILE STORAGE

Archive files stored locally.

Supported types:

PDF
PNG
JPEG
CSV
TXT
XLSX


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/108_POCKET_SECRETARY_UI_MODEL.md
# ============================================================

# ============================================================
# UI MODEL
# ============================================================

status: canonical
component: ui-model
owner: Boss
prepared_by: Zero


# DASHBOARD STRUCTURE

Root

 ├ Background
 ├ Character
 └ Widgets


# DISPLAY CONTENT

Secretary character
Today's schedule
Todo list
Quick tools


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/109_POCKET_SECRETARY_SECURITY_MODEL.md
# ============================================================

# ============================================================
# SECURITY MODEL
# ============================================================

status: canonical
component: security-model
owner: Boss
prepared_by: Zero


# PRINCIPLE

User control over all external actions.


# SECURITY RULES

ERP requests require manual confirmation.

Sensitive data must not be transmitted automatically.

Local data must remain accessible offline.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/110_POCKET_SECRETARY_SYNC_MODEL.md
# ============================================================

# ============================================================
# SYNC MODEL
# ============================================================

status: canonical
component: sync-model
owner: Boss
prepared_by: Zero


# SYNC PRINCIPLE

Local-first architecture.


# OPTIONAL SYNC

Cloud backup

ERP submission

Future external calendar sync.


# CONFLICT RULE

Local data has priority unless explicitly overwritten.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/111_POCKET_SECRETARY_MARKETPLACE_MODEL.md
# ============================================================

# ============================================================
# MARKETPLACE MODEL
# ============================================================

status: canonical
component: marketplace-model
owner: Boss
prepared_by: Zero


# PURPOSE

Defines distribution of Persona assets.


# MARKETPLACE ITEMS

Persona packages

Voice packs

Costumes

DLC content


# DISTRIBUTION MODEL

Assets downloaded and installed locally.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/113_POCKET_SECRETARY_EXTENSION_MODEL.md
# ============================================================

# ============================================================
# EXTENSION MODEL
# ============================================================

status: canonical
component: extension-model
owner: Boss
prepared_by: Zero


# FUTURE FEATURES

AI assistant

Voice interaction

Recommendation engine

Persona emotion system


# DESIGN RULE

Extensions must not break local-first operation.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/115_POCKET_SECRETARY_DATA_SCHEMA.md
# ============================================================

# ============================================================
# POCKET SECRETARY DATA SCHEMA
# ============================================================

status: canonical
system: pocket-secretary
component: data-schema
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines the persistent local data schema
used by PocketSecretary.


# STORAGE MODEL

PocketSecretary uses local storage
as the primary data source.

Technologies

Room Database
Local File Storage


# ROOM TABLES

schedule

schedule_id
title
start_time
end_time
location
note
created_at
updated_at


todo

todo_id
title
status
priority
created_at
completed_at


notes

note_id
title
content
created_at
updated_at


secretary_profile

secretary_id
persona_id
display_name
active_flag
created_at


settings

setting_key
setting_value


archive_metadata

archive_id
file_name
file_type
file_path
created_at


# FILE STORAGE

Archive files are stored locally.

Supported formats

PDF
PNG
JPEG
CSV
TXT
XLSX


# DESIGN PRINCIPLE

All user data must remain locally accessible
without network connectivity.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/116_POCKET_SECRETARY_PERSONA_STATE_MODEL.md
# ============================================================

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


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/117_POCKET_SECRETARY_CONFIGURATION_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY CONFIGURATION MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: configuration-model
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines the configuration system
for PocketSecretary.


# STORAGE

Configuration is stored using

SharedPreferences


# CONFIGURATION ITEMS

erp_company_code

erp_endpoint

erp_api_key


active_secretary_id


ui_layout_mode


tool_order


notification_enabled


background_theme


# ERP CONFIGURATION

Example

company_code = LSAM001

erp_endpoint = https://erp.example.com

api_key = xxxxxx


# UI CONFIGURATION

Stores user interface preferences

dashboard layout
tool ordering
theme selection


# DESIGN PRINCIPLE

Configuration must remain

simple
recoverable
locally stored


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/121_CHARACTER_INTERACTION_MODEL.md
# ============================================================

# ============================================================
# CHARACTER INTERACTION MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: character-interaction

# PURPOSE

Defines interaction with the secretary character.


# INTERACTIONS

tap
long press
gesture


# RESULT

expression change
dialog display
tool access


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/122_DASHBOARD_WIDGET_MODEL.md
# ============================================================

# ============================================================
# DASHBOARD WIDGET MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: widget-model

# PURPOSE

Defines dashboard widgets.


# WIDGET TYPES

schedule widget
todo widget
status widget


# DESIGN PRINCIPLE

Widgets must be lightweight
and refresh independently.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/123_LOCAL_FILE_STORAGE_MODEL.md
# ============================================================

# ============================================================
# LOCAL FILE STORAGE MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: file-storage

# PURPOSE

Defines local file storage structure.


# STORAGE TYPES

archive files
image assets
temporary files


# DESIGN PRINCIPLE

All files remain locally accessible.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/124_DATA_BACKUP_MODEL.md
# ============================================================

# ============================================================
# DATA BACKUP MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: data-backup

# PURPOSE

Defines backup and export mechanisms.


# BACKUP METHODS

manual export
cloud backup (future)


# DATA TYPES

schedule
todo
notes
configuration


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/125_SECRETARY_PROFILE_MODEL.md
# ============================================================

# ============================================================
# SECRETARY PROFILE MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: secretary-profile

# PURPOSE

Defines the profile of a secretary.


# PROFILE FIELDS

secretary_id
persona_id
display_name
voice_profile
active_flag


# DESIGN PRINCIPLE

Profiles reference PersonaPackage.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/127_ERP_REQUEST_MODEL.md
# ============================================================

# ============================================================
# ERP REQUEST MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: erp-request-model

# PURPOSE

Defines ERP request structure.


# REQUEST FLOW

PocketSecretary
 ↓
REST API
 ↓
ERP


# REQUEST TYPES

transport expense
approval request
business submission


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/128_ERP_AUTHENTICATION_MODEL.md
# ============================================================

# ============================================================
# ERP AUTHENTICATION MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: erp-authentication

# PURPOSE

Defines ERP authentication model.


# AUTHENTICATION DATA

company_code
erp_endpoint
api_key


# SECURITY PRINCIPLE

Credentials stored locally
and transmitted only during requests.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/129_POCKET_SECRETARY_SECURITY_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY SECURITY MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: security-model
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines the security architecture
of PocketSecretary.


# SECURITY PRINCIPLES

Local-first data model

Manual ERP submission only

No autonomous financial operations


# SECURITY DOMAINS

1 Device Security
2 Network Security
3 ERP Integration Security
4 Persona Asset Security


# DEVICE SECURITY

User personal data is stored locally.

Storage systems:

Room Database
Local file storage


Sensitive data:

ERP tokens
Authentication keys

must be stored in

Android Keystore.


# NETWORK SECURITY

All external communication must use HTTPS.

Certificate validation is required.


# ERP REQUEST SECURITY

ERP requests must contain:

company_code
user_identifier
request_payload
request_timestamp


ERP requests must be manually initiated.


# PROHIBITED OPERATIONS

PocketSecretary must never perform:

automatic ERP submission
automatic ERP approval
financial transaction execution


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/130_POCKET_SECRETARY_PERMISSION_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY PERMISSION MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: permission-model
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines Android permission usage.


# REQUIRED PERMISSIONS

INTERNET

POST_NOTIFICATIONS


# OPTIONAL PERMISSIONS

READ_EXTERNAL_STORAGE

WRITE_EXTERNAL_STORAGE

CAMERA (business card OCR)


# PERMISSION PRINCIPLES

Permissions must follow:

minimal access
feature-based request
runtime permission request


Permissions must never be requested
before the related feature is used.


# STORAGE POLICY

Local files stored in

app private storage.

External storage is optional.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/132_POCKET_SECRETARY_API_ERROR_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY API ERROR MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: api-error-model
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines API error categories.


# ERROR CATEGORIES

CLIENT_ERROR

NETWORK_ERROR

SERVER_ERROR

ERP_REJECTION


# ERROR STRUCTURE

error_code
error_message
timestamp


# CLIENT_ERROR

Invalid request payload.


# NETWORK_ERROR

Connectivity failure
timeout
DNS failure.


# SERVER_ERROR

Unexpected server response.


# ERP_REJECTION

ERP approval rejected
by ERP system.


# ERROR HANDLING PRINCIPLE

User must be notified
for ERP related failures.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/133_POCKET_SECRETARY_ROOM_ENTITY_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY ROOM ENTITY MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: room-entity-model
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines Room database entities.


# ENTITY LIST

ScheduleEntity

TodoEntity

NoteEntity

ArchiveEntity

SecretaryEntity

SettingsEntity


# SCHEDULE ENTITY

id
title
start_time
end_time
location
memo
created_at
updated_at


# TODO ENTITY

id
title
completed
deadline
created_at


# NOTE ENTITY

id
title
content
created_at


# ARCHIVE ENTITY

id
file_path
file_type
created_at


# SECRETARY ENTITY

id
persona_id
name
active_flag


# SETTINGS ENTITY

id
setting_key
setting_value


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/134_POCKET_SECRETARY_DATABASE_MIGRATION_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY DATABASE MIGRATION MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: database-migration-model
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines database migration rules.


# VERSIONING

Room database must use
versioned schema management.


Example

v1
v2
v3


# MIGRATION REQUIREMENT

Each version upgrade must define
a migration script.


# MIGRATION PRINCIPLES

No destructive schema change.

Existing user data must be preserved.


# PROHIBITED OPERATIONS

DROP TABLE

DROP COLUMN

without migration path.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/135_POCKET_SECRETARY_NAVIGATION_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY NAVIGATION MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: navigation-model
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines screen navigation structure.


# MAIN SCREENS

Dashboard

Schedule

Todo

Archive

Tools

Settings


# ROOT STRUCTURE

MainActivity

DashboardFragment

ScheduleFragment

TodoFragment

ArchiveFragment

ToolsFragment

SettingsFragment


# NAVIGATION MODEL

Bottom navigation.


# NAVIGATION PRINCIPLES

Navigation must preserve
local application state.


Network connection must not be
required for navigation.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/136_POCKET_SECRETARY_VIEWMODEL_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY VIEWMODEL MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: viewmodel-model
owner: Boss
prepared_by: Zero


# PURPOSE

Defines ViewModel responsibilities for PocketSecretary.


# VIEWMODEL STRUCTURE

DashboardViewModel  
ScheduleViewModel  
TodoViewModel  
ArchiveViewModel  
ToolsViewModel  
SettingsViewModel


# RESPONSIBILITIES

ViewModel must:

- expose UI state
- call repository layer
- transform data for UI
- handle UI actions


# CONSTRAINTS

ViewModel must not:

- directly access database
- perform network operations

All data access must go through repositories.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/137_POCKET_SECRETARY_BACKGROUND_TASK_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY BACKGROUND TASK MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: background-task-model
owner: Boss
prepared_by: Zero


# PURPOSE

Defines background task processing.


# IMPLEMENTATION

Android WorkManager.


# TASK TYPES

schedule_reminder_worker  
todo_deadline_worker  
erp_status_worker


# PRINCIPLES

Background tasks must be:

- retry safe
- idempotent
- resource efficient


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/138_POCKET_SECRETARY_NOTIFICATION_TRIGGER_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY NOTIFICATION TRIGGER MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: notification-trigger-model
owner: Boss
prepared_by: Zero


# PURPOSE

Defines notification trigger conditions.


# TRIGGERS

Schedule reminder  
Todo deadline  
ERP request result


# DELIVERY

Android NotificationManager.


# POLICY

Notifications must be user-configurable.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/140_POCKET_SECRETARY_ERROR_HANDLING_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY ERROR HANDLING MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: error-handling-model
owner: Boss
prepared_by: Zero


# PURPOSE

Defines runtime error handling policy.


# ERROR TYPES

database_error  
network_error  
persona_asset_error  
erp_request_error


# POLICY

Errors must be:

- logged
- surfaced to UI when relevant
- recoverable where possible


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/141_POCKET_SECRETARY_LOGGING_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY LOGGING MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: logging-model
owner: Boss
prepared_by: Zero


# PURPOSE

Defines runtime logging.


# LOG LEVELS

INFO  
WARN  
ERROR  
DEBUG


# OUTPUT

Android Logcat  
Optional local log file


# RULE

Sensitive data must never be logged.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/143_POCKET_SECRETARY_REPOSITORY_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY REPOSITORY MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: repository-model
owner: Boss
prepared_by: Zero


# PURPOSE

Defines repository abstraction.


# REPOSITORIES

ScheduleRepository  
TodoRepository  
ArchiveRepository  
SettingsRepository


# ROLE

Repository mediates between:

Room database  
Remote APIs


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/144_POCKET_SECRETARY_USECASE_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY USECASE MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: usecase-model
owner: Boss
prepared_by: Zero


# PURPOSE

Defines application use cases.


# USECASES

create_schedule  
complete_todo  
submit_erp_request  
switch_secretary


# RULE

Use cases orchestrate repositories.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/145_POCKET_SECRETARY_UI_STATE_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY UI STATE MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: ui-state-model
owner: Boss
prepared_by: Zero


# PURPOSE

Defines UI state structures.


# STATE TYPES

Loading  
Success  
Error  
Empty


# RULE

UI must be driven by state objects.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/146_POCKET_SECRETARY_TEST_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY TEST MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: test-model
owner: Boss
prepared_by: Zero


# PURPOSE

Defines testing strategy.


# TEST TYPES

unit tests  
repository tests  
ui tests


# TOOLING

JUnit  
AndroidX Test


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/147_POCKET_SECRETARY_BUILD_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY BUILD MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: build-model
owner: Boss
prepared_by: Zero


# PURPOSE

Defines Android build configuration.


# TOOLCHAIN

Gradle  
Android SDK


# BUILD TYPES

debug  
release


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/148_POCKET_SECRETARY_DEPENDENCY_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY DEPENDENCY MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: dependency-model
owner: Boss
prepared_by: Zero


# CORE LIBRARIES

AndroidX  
Room  
WorkManager  
OkHttp


# RULE

Dependencies must remain minimal.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/149_POCKET_SECRETARY_DEPLOYMENT_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY DEPLOYMENT MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: deployment-model
owner: Boss
prepared_by: Zero


# DISTRIBUTION

Google Play  
Direct APK distribution


# VERSIONING

Semantic versioning recommended.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/150_POCKET_SECRETARY_EVOLUTION_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY EVOLUTION MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: evolution-model
owner: Boss
prepared_by: Zero


# PURPOSE

Defines long-term evolution path.


# FUTURE CAPABILITIES

AI secretary  
voice interaction  
persona emotion system  
cross-device sync


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/POCKET_SECRETARY_DATA_MODEL_CANONICAL.md
# ============================================================

# ============================================================
# POCKET SECRETARY DATA MODEL
# ============================================================

status: canonical
system: Civilization
application: PocketSecretary

owner: Boss
prepared_by: Zero



# DATABASE

SQLite

Recommended implementation

Android Room



# PERSONA INSTANCE

persona_instance

instance_id
persona_id
persona_name
installed_at
growth_state
active_flag



# SCHEDULE

schedule

schedule_id
title
description
start_time
end_time
location
reminder_flag
created_at



# TASK

task

task_id
title
description
status
priority
due_date
created_at



# NOTE

note

note_id
title
content
created_at
updated_at



# JOURNAL

journal

journal_id
entry_text
mood
created_at



# ASSET CACHE

asset_cache

asset_id
asset_type
asset_name
file_path
installed_at



# PURCHASE HISTORY

purchase_history

purchase_id
item_id
item_type
price
purchase_date



# TRANSIT HISTORY

transit_history

search_id
origin
destination
route_data
search_time



# EXPENSE RECORD

expense_record

expense_id
amount
route
date
submitted_flag



# SETTINGS

app_settings

setting_key
setting_value


# ============================================================
# PERSONA INSTANCE MODEL
# ============================================================

PocketSecretary loads installed personas
as Persona Instances.


persona_instance

instance_id
persona_id
owner_user_id
installed_at
version



# ============================================================
# PERSONA STATE
# ============================================================

Persona state represents growth values
maintained by PersonaOS.


examples

trust
discipline
curiosity
stability



# ============================================================
# SCENE DATA
# ============================================================

dashboard_scene

background_asset_id
persona_instance_id
effect_set



# ============================================================
# RENDER REQUEST MODEL
# ============================================================

render_request

scene_type
background_asset
persona_manifest
effect_manifest



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/POCKET_SECRETARY_FUNCTION_MODEL.md
# ============================================================

# ============================================================
# POCKET SECRETARY
# FUNCTION MODEL
# ============================================================

status: canonical
layer: application

app_id: pocket-secretary

owner: Boss
prepared_by: Zero


# CORE FUNCTIONS

01 persona
02 conversation
03 schedule
04 task
05 note
06 journal
07 calculator
08 notification
09 local_library
10 book_reader
11 settings
12 local_data_manager


# OPTIONAL ONLINE FUNCTIONS

13 marketplace
14 asset_manager
15 shared_library_sync
16 persona_growth_sync


# READER MODEL

Reader Layer

standard_reader
civilization_reader


# STANDARD READER

Supports:

pdf
epub
html
markdown


# CIVILIZATION READER

Supports:

annotation
knowledge link
ai explanation
highlight
bookmark
note


# BOOK MODEL

Books are treated as digital assets.

digital_asset_type = book


# SUMMARY

Pocket Secretary combines
assistant functions,
life support,
and knowledge access
in a local-first structure.



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/POCKET_SECRETARY_NAVIGATION_MODEL_CANONICAL.md
# ============================================================

# ============================================================
# POCKET SECRETARY NAVIGATION MODEL
# ============================================================

status: canonical
system: Civilization
application: PocketSecretary

owner: Boss
prepared_by: Zero



# NAVIGATION STRUCTURE

Dashboard

 -> Character Manager
 -> Asset Manager
 -> Marketplace
 -> Schedule
 -> Tasks
 -> Notes
 -> Journal
 -> Calculator
 -> Transit Search



# PERSONA NAVIGATION

Dashboard

tap persona

 -> Character Manager


Character Manager

 -> Persona Switch
 -> Persona Install
 -> Marketplace



# BACKGROUND NAVIGATION

Dashboard

tap background

 -> Asset Manager



# MARKETPLACE FLOW

Marketplace

 -> Item List
 -> Item Detail
 -> Purchase
 -> Install



# BUSINESS NAVIGATION

Business users

 -> Travel Expense
 -> ERP Integration
 -> Business Card Manager



# AI NAVIGATION

Persona interaction

 -> AI Conversation
 -> AI Consultation
 -> AI Suggestion


# ============================================================
# BACKGROUND NAVIGATION
# ============================================================

Dashboard
↓
Tap Background
↓
Background Selector
↓
Marketplace (optional)



# ============================================================
# CHARACTER NAVIGATION
# ============================================================

Dashboard
↓
Tap Persona
↓
Character Selector
↓
Marketplace (optional)



# ============================================================
# MARKETPLACE ENTRY POINTS
# ============================================================

Marketplace can be opened from

background selector
character selector
asset manager



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/POCKET_SECRETARY_OS_SCHEMA_USAGE.md
# ============================================================

# ============================================================
# POCKET SECRETARY
# OS / SCHEMA USAGE
# ============================================================

status: canonical
layer: application

app_id: pocket-secretary

owner: Boss
prepared_by: Zero


# PRIMARY OS

PersonaOS
LifeOS


# OPTIONAL OS

BusinessOS


# PRIMARY SCHEMA

personaos
life


# OPTIONAL SCHEMA

business


# PRIMARY USE

PersonaOS

persona runtime
persona visuals
persona interaction
persona state


LifeOS

schedule
task
journal
life records


# OPTIONAL USE

BusinessOS

marketplace
shared library
online asset distribution
online purchase records


# SUMMARY

Pocket Secretary is primarily
a PersonaOS + LifeOS application
with optional BusinessOS connectivity.



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/030.model/POCKET_SECRETARY_PLAN_MODEL_CANONICAL.md
# ============================================================

# ============================================================
# POCKET SECRETARY PLAN MODEL
# Canonical Design
# ============================================================

status: canonical
system: Civilization
application: PocketSecretary

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define subscription plans and feature availability
for PocketSecretary.


# ============================================================
# PLAN STRUCTURE
# ============================================================

PocketSecretary has three plans.

Free
Pro
For Business


Concept

Free
Basic Tools

Pro
AI Secretary

For Business
Corporate Secretary


# ============================================================
# PERSONA LIMIT
# ============================================================

Persona slots depend on the subscription plan.


Free

initial_persona = 3
additional_persona = 1

maximum = 4


Pro

initial_persona = 3
additional_persona = 3

maximum = 6


For Business

initial_persona = 3
additional_persona = 3

maximum = 6


Persona growth rule

growth_enabled = additional_persona_only


# ============================================================
# FEATURE MATRIX
# ============================================================


# ------------------------------------------------------------
# BASIC PERSONAL TOOLS
# ------------------------------------------------------------

Schedule
Task / Todo
Notes
Journal
Calculator
Route Search


Free      enabled
Pro       enabled
For Business  enabled


# ------------------------------------------------------------
# PERSONA SYSTEM
# ------------------------------------------------------------

Persona interaction
Persona switching
Persona growth


Free      enabled
Pro       enhanced
For Business  enhanced


# ------------------------------------------------------------
# AI SECRETARY
# ------------------------------------------------------------

AI powered assistance features.


Functions

AI conversation
AI consultation
AI suggestion
AI summarization


Free

disabled


Pro

enabled


For Business

enabled


# ------------------------------------------------------------
# AI DOCUMENT FUNCTIONS
# ------------------------------------------------------------

Document summarization
Content evaluation


Free

disabled


Pro

enabled


For Business

enabled


# ------------------------------------------------------------
# SCHEDULE AI
# ------------------------------------------------------------

AI assisted schedule optimization.


Functions

schedule suggestion
time optimization


Free

disabled


Pro

enabled


For Business

enabled


# ------------------------------------------------------------
# MARKETPLACE
# ------------------------------------------------------------

Marketplace access for digital assets.


Items

personas
backgrounds
voices
costumes
books


Free

enabled


Pro

enabled


For Business

enabled


# ------------------------------------------------------------
# ASSET MANAGEMENT
# ------------------------------------------------------------

Manage installed assets.


Functions

install asset
remove asset
switch background


Free

enabled


Pro

enabled


For Business

enabled


# ------------------------------------------------------------
# ERP INTEGRATION
# ------------------------------------------------------------

Enterprise system integration.


Functions

travel expense submission
expense creation
approval status


Free

disabled


Pro

disabled


For Business

enabled


# ------------------------------------------------------------
# BUSINESS CARD MANAGEMENT
# ------------------------------------------------------------

Business card manager integration.


Functions

card scan
contact search
contact storage


Free

disabled


Pro

disabled


For Business

enabled


# ------------------------------------------------------------
# COMPANY SECRETARY
# ------------------------------------------------------------

Corporate assistant persona.


Free

disabled


Pro

disabled


For Business

enabled


# ============================================================
# TRANSPORT ROUTE SEARCH
# ============================================================

Provider

Yahoo Transit


Functions

route search
travel time
fare calculation


Free      enabled
Pro       enabled
For Business  enabled


# ============================================================
# TRAVEL EXPENSE
# ============================================================

Travel expense support.


Functions

manual expense input
expense creation from transit route
ERP submission by user choice


Free

manual only
no ERP submission


Pro

manual only
no ERP submission


For Business

manual input
expense creation from transit route
ERP submission available


# ============================================================
# RELEASE STRATEGY
# ============================================================

Version 1.0

No AI features enabled by default.
No user-side AI setting changes required.

Goal

pass Google Play review first.


Version 1.1+

AI features may be added by version upgrade
after initial review approval.


# ============================================================
# FUTURE FEATURES
# ============================================================

The following features are planned after
initial Google Play approval.


AI document analysis

library summarization
knowledge recommendation


Google Calendar integration


# ============================================================
# SUMMARY
# ============================================================

Free

basic personal assistant


Pro

AI powered secretary


For Business

corporate secretary with ERP integration
and company secretary support


# ============================================================
# END
# ============================================================



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/0400000_POCKET_SECRETARY_RUNTIME_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY RUNTIME INDEX
# ============================================================

status: active
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/0400001_POCKET_SECRETARY_RUNTIME_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY RUNTIME OVERVIEW
# ============================================================

status: active
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/106_POCKET_SECRETARY_TODO_SYSTEM.md
# ============================================================

# ============================================================
# TODO SYSTEM
# ============================================================

status: canonical
component: todo-system
owner: Boss
prepared_by: Zero


# FEATURES

Add task
Complete task
Delete task
Reorder tasks


# STORAGE

Stored locally using Room DB.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/114_POCKET_SECRETARY_RUNTIME_ENGINE.md
# ============================================================

# ============================================================
# POCKET SECRETARY RUNTIME ENGINE
# ============================================================

status: canonical
system: pocket-secretary
component: runtime-engine
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines the runtime engine responsible for
application execution flow, UI refresh cycles,
and persona rendering updates.


# RUNTIME ROLE

The runtime engine coordinates

user interaction
persona rendering
local data updates
UI refresh cycles


The engine operates entirely on-device.


# RUNTIME LOOP MODEL

PocketSecretary operates using
an event-driven runtime loop.

Flow

Application Start
 ↓
Initialize Runtime
 ↓
Load Persona State
 ↓
Render Dashboard
 ↓
Event Loop


# EVENT LOOP

The runtime loop reacts to events.

Examples

user interaction
schedule updates
todo changes
persona state refresh
UI refresh requests


Event handling must remain lightweight
to ensure smooth UI performance.


# PERSONA RENDER UPDATE

Persona rendering is updated when

secretary changes
expression changes
animation state changes
application start


Rendering flow

Runtime Engine
 ↓
Manifest Request
 ↓
persona-visual-runtime
 ↓
Bitmap Composition
 ↓
UI Update


# STATE MANAGEMENT

Runtime maintains transient state

active secretary
UI mode
temporary session data


Persistent data must be stored
in the local data layer.


# DATA FLOW

User Action
 ↓
Application Logic
 ↓
Local Data Update
 ↓
Runtime Event
 ↓
UI Refresh


# PERFORMANCE PRINCIPLE

The runtime must ensure

smooth rendering
low memory overhead
minimal blocking operations


Heavy operations must not
execute on the UI thread.


# DESIGN CONSTRAINTS

The runtime engine must remain

local-first
offline-capable
deterministic


External systems must never control
the runtime execution.


# END
# ============================================================


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/120_POCKET_SECRETARY_NOTIFICATION_SYSTEM.md
# ============================================================

# ============================================================
# POCKET SECRETARY NOTIFICATION SYSTEM
# ============================================================

status: canonical
system: pocket-secretary
component: notification-system
owner: Boss
prepared_by: Zero

# PURPOSE

Defines the notification framework.


# NOTIFICATION TYPES

schedule reminder
todo reminder
erp request result
system alerts


# DELIVERY

Android notification system.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/040.runtime/POCKET_SECRETARY_RUNTIME_SPEC.md
# ============================================================

# ============================================================
# POCKET SECRETARY
# RUNTIME SPECIFICATION
# ============================================================

status: canonical
layer: runtime

app_id: pocket-secretary

owner: Boss
prepared_by: Zero


# PURPOSE

Define the runtime environment used by PocketSecretary.

PocketSecretary hosts the Persona Runtime and
manages local runtime assets.


# RUNTIME OVERVIEW

PocketSecretary Runtime includes:

persona runtime
asset runtime
emotion runtime
voice runtime
interaction runtime


# RUNTIME LAYERS

PocketSecretary Runtime

application layer
assistant engine
persona runtime
asset runtime
life assistant
reader engine


# PERSONA RUNTIME

Persona runtime manages the execution of persona behavior.

components:

persona profile
behavior profile
persona state
interaction logic


Persona runtime is responsible for:

persona reactions
conversation behavior
assistant responses
personality expression


# EMOTION RUNTIME

Emotion runtime controls persona emotional state.

examples:

calm
happy
sad
surprised
neutral


emotion influences:

voice tone
expression
assistant responses


# VISUAL RUNTIME

Visual runtime manages persona appearance.

components:

character assets
expressions
animation states


example expressions:

idle
blink
talk
reaction


# VOICE RUNTIME

Voice runtime manages speech output.

voice types:

tts
voice pack


voice parameters:

speed
tone
style


# ASSET RUNTIME

Runtime assets are loaded from:

assets/runtime


asset types:

persona
background
voice
animation
ui assets


example structure:

assets/runtime

persona
background
voice
animation


# RUNTIME LOADING

Runtime loading sequence:

load persona manifest
load persona assets
initialize persona runtime
initialize emotion state
initialize interaction engine


# INTERACTION RUNTIME

Interaction runtime handles user communication.

components:

conversation handler
assistant response engine
persona reaction system


# LIFE ASSISTANT RUNTIME

Life assistant runtime supports local life functions.

schedule
tasks
notes
journal
calculator


# LIBRARY RUNTIME

Library runtime manages local knowledge assets.

books
documents
learning materials


# READER RUNTIME

Reader runtime supports two modes.

Standard Reader

pdf
epub
html


Civilization Reader

annotation
knowledge linking
ai explanation


# ONLINE EXTENSION

Optional runtime extensions may connect to:

PersonaOS
Marketplace
Shared Library


These are not required for core functionality.


# RUNTIME DESIGN RULE

PocketSecretary runtime must function
without internet connectivity.


# SUMMARY

PocketSecretary runtime provides
a local execution environment for:

persona behavior
assistant functions
life assistance
knowledge access

while optionally connecting to
Civilization services.



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/0500000_POCKET_SECRETARY_FLOW_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY FLOW INDEX
# ============================================================

status: active
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/0500001_POCKET_SECRETARY_FLOW_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY FLOW OVERVIEW
# ============================================================

status: active
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/050.flow/112_POCKET_SECRETARY_RUNTIME_FLOW.md
# ============================================================

# ============================================================
# RUNTIME FLOW
# ============================================================

status: canonical
component: runtime-flow
owner: Boss
prepared_by: Zero


# APPLICATION START

Launch app
 ↓
Load secretary profile
 ↓
Initialize persona runtime
 ↓
Render dashboard


# UPDATE FLOW

User interaction
 ↓
Local data update
 ↓
UI refresh


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/0600000_POCKET_SECRETARY_INTEGRATION_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY INTEGRATION INDEX
# ============================================================

status: active
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/0600001_POCKET_SECRETARY_INTEGRATION_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY INTEGRATION OVERVIEW
# ============================================================

status: active
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/102_POCKET_SECRETARY_PERSONA_INTEGRATION.md
# ============================================================

# ============================================================
# PERSONA INTEGRATION
# ============================================================

status: canonical
component: persona-integration
owner: Boss
prepared_by: Zero


# PURPOSE

Defines integration between PocketSecretary
and PersonaOS.


# RENDERING FLOW

PocketSecretary
 ↓
Manifest API
 ↓
persona-visual-runtime
 ↓
Bitmap composition


# CHARACTER MODEL

Characters are created from PersonaPackage.

PersonaPackage

 ├ persona_profile
 ├ visual_profile
 ├ voice_profile
 └ skill_pack


# SECRETARY SWITCHING

Users may switch active secretaries.

Character rendering updates automatically.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/104_POCKET_SECRETARY_ERP_INTEGRATION.md
# ============================================================

# ============================================================
# ERP INTEGRATION
# ============================================================

status: canonical
component: erp-integration
owner: Boss
prepared_by: Zero


# PURPOSE

Defines interaction between PocketSecretary and ERP.


# CONNECTION MODEL

Company Code
ERP URL
API Key


Example

LSAM001
https://erp.example.com
api_key_xxxx


# REQUEST FLOW

PocketSecretary
 ↓
ERP Request API
 ↓
ERP Approval Workflow


# SECURITY RULE

ERP submission must be manually triggered by the user.

Automatic financial operations are prohibited.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/060.integration/131_POCKET_SECRETARY_API_SPECIFICATION.md
# ============================================================

# ============================================================
# POCKET SECRETARY API SPECIFICATION
# ============================================================

status: canonical
system: pocket-secretary
component: api-specification
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines API interactions between
PocketSecretary and external systems.


# API TYPES

1 Persona Manifest API
2 Persona Asset API
3 ERP Request API
4 ERP Status API


# PERSONA MANIFEST API

Purpose:

Retrieve visual layer manifest
for Persona rendering.


Response:

persona_id
layer_manifest
render_parameters


# ERP REQUEST API

Purpose:

Submit ERP requests from the user.


Request structure:

request_type
amount
date
description


# ERP STATUS API

Purpose:

Retrieve approval result.


Response:

request_status

PENDING
APPROVED
REJECTED


# API CONSTRAINTS

All ERP requests must originate
from explicit user actions.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/070.operations/0700000_POCKET_SECRETARY_OPERATIONS_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY OPERATIONS INDEX
# ============================================================

status: active
layer: 070.operations
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/070.operations/0700001_POCKET_SECRETARY_OPERATIONS_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY OPERATIONS OVERVIEW
# ============================================================

status: active
layer: 070.operations
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/0800000_POCKET_SECRETARY_POLICY_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY POLICY INDEX
# ============================================================

status: active
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/080.policy/0800001_POCKET_SECRETARY_POLICY_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY POLICY OVERVIEW
# ============================================================

status: active
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/0900000_POCKET_SECRETARY_INTERFACE_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY INTERFACE INDEX
# ============================================================

status: active
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/0900001_POCKET_SECRETARY_INTERFACE_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY INTERFACE OVERVIEW
# ============================================================

status: active
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/090.interface/118_POCKET_SECRETARY_UI_LAYOUT_SYSTEM.md
# ============================================================

# ============================================================
# POCKET SECRETARY UI LAYOUT SYSTEM
# ============================================================

status: canonical
system: pocket-secretary
component: ui-layout-system
owner: Boss
prepared_by: Zero

# PURPOSE

Defines the UI layout structure
of the PocketSecretary dashboard.


# DASHBOARD STRUCTURE

Root

 ├ Background Layer
 ├ Character Layer
 ├ Widget Layer
 └ Tool Panel


# LAYER RESPONSIBILITY

Background Layer
visual theme

Character Layer
Persona rendering

Widget Layer
schedule, todo, status

Tool Panel
utility tools


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/100.security/1000000_POCKET_SECRETARY_SECURITY_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY SECURITY INDEX
# ============================================================

status: active
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/100.security/1000001_POCKET_SECRETARY_SECURITY_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY SECURITY OVERVIEW
# ============================================================

status: active
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/110.infrastructure/1100000_POCKET_SECRETARY_INFRASTRUCTURE_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY INFRASTRUCTURE INDEX
# ============================================================

status: active
layer: 110.infrastructure
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/110.infrastructure/1100001_POCKET_SECRETARY_INFRASTRUCTURE_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY INFRASTRUCTURE OVERVIEW
# ============================================================

status: active
layer: 110.infrastructure
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/1200000_POCKET_SECRETARY_IMPLEMENTATION_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY IMPLEMENTATION INDEX
# ============================================================

status: active
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/120.implementation/1200001_POCKET_SECRETARY_IMPLEMENTATION_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY IMPLEMENTATION OVERVIEW
# ============================================================

status: active
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/130.development/1300000_POCKET_SECRETARY_DEVELOPMENT_INDEX.md
# ============================================================

# ============================================================
# POCKET SECRETARY DEVELOPMENT INDEX
# ============================================================

status: active
layer: 130.development
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/130.development/1300001_POCKET_SECRETARY_DEVELOPMENT_OVERVIEW.md
# ============================================================

# ============================================================
# POCKET SECRETARY DEVELOPMENT OVERVIEW
# ============================================================

status: active
layer: 130.development
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/920.meta/001.unclassified/105_POCKET_SECRETARY_SCHEDULE_SYSTEM.md
# ============================================================

# ============================================================
# SCHEDULE SYSTEM
# ============================================================

status: canonical
component: schedule-system
owner: Boss
prepared_by: Zero


# FEATURES

Create schedule
Edit schedule
Delete schedule
Recurring events
Notifications


# FUTURE EXTENSION

Google Calendar synchronization.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/920.meta/001.unclassified/119_POCKET_SECRETARY_TOOL_SYSTEM.md
# ============================================================

# ============================================================
# POCKET SECRETARY TOOL SYSTEM
# ============================================================

status: canonical
system: pocket-secretary
component: tool-system
owner: Boss
prepared_by: Zero

# PURPOSE

Defines the tool subsystem.


# TOOL TYPES

calculator
memo
archive
transportation
business tools


# DESIGN PRINCIPLE

Tools must be modular
and independently extendable.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/920.meta/001.unclassified/126_PERSONA_PACKAGE_BINDING.md
# ============================================================

# ============================================================
# PERSONA PACKAGE BINDING
# ============================================================

status: canonical
system: pocket-secretary
component: persona-package-binding

# PURPOSE

Defines binding between
PocketSecretary and PersonaPackage.


# BINDING MODEL

secretary_profile
 ↓
persona_package
 ↓
visual_runtime


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/920.meta/001.unclassified/POCKET_SECRETARY_DESIGN.md
# ============================================================

# ============================================================
# POCKET SECRETARY
# Canonical Design Specification v2
# ============================================================

status: canonical
system: pocket-secretary
owner: Boss
prepared_by: Zero


# ============================================================
# SYSTEM OVERVIEW
# ============================================================

PocketSecretary is a
Persona-centric personal management application.

It provides

- Persona visual interface
- Personal life management
- Business request gateway
- Persona interaction UI


Architecture

User
 ↓
PocketSecretary
 ↓
Persona API
 ↓
PersonaOS
 ↓
Civilization Core


# ============================================================
# APPLICATION LAYER POSITION
# ============================================================

Civilization OS Layer

Civilization
 ├ PersonaOS
 ├ ERP
 ├ LifeOS
 ├ GameOS
 └ StreamingOS


Application Layer

Apps
 └ PocketSecretary


PocketSecretary is an application
running on PersonaOS.


# ============================================================
# USER MODEL
# ============================================================

Single user application.


Plans

FREE
1 secretary

PRO
3 secretaries

BUSINESS
3 secretaries + company secretary


# ============================================================
# SECRETARY MODEL
# ============================================================

Secretaries are created from

PersonaPackage


PersonaPackage

Persona
Character
Voice
Skills


# ============================================================
# DASHBOARD
# ============================================================

Root

Background
Character
UI


Displayed

Persona character
Today's schedule
TODO
Shortcut tools


# ============================================================
# PERSONA DISPLAY
# ============================================================

Rendering engine

persona-visual-runtime


Pipeline

PocketSecretary
 ↓
Manifest API
 ↓
Visual Runtime
 ↓
Bitmap Compose


Composition method

Anchor based rendering


# ============================================================
# FUNCTION LIST
# ============================================================

Core functions

Schedule
TODO
Archive
Notes
Calculator
Mail shortcut
Business cards
Transportation cost
ERP submission
Secretary switch
Background change


# ============================================================
# LOCAL DATA POLICY
# ============================================================

PocketSecretary stores personal data locally.


Storage

Room database
Local files


Cloud storage optional.


ERP transmission is manual only.


# ============================================================
# OFFLINE FIRST DESIGN
# ============================================================

PocketSecretary must work offline.


Offline features

Schedule
TODO
Notes
Archive
Persona display
Calculator


Network only required for

ERP submission
Marketplace
Asset download


# ============================================================
# ERP INTEGRATION
# ============================================================

Connection

PocketSecretary
 ↓
Business Gateway
 ↓
ERP


Direct ERP connection is prohibited.


ERP request flow

User
 ↓
PocketSecretary
 ↓
ERP Request
 ↓
Company approval


# ============================================================
# PERSONA INTERACTION
# ============================================================

Secretaries may interact with users.


Examples

Morning greeting
Schedule reminders
Task suggestions
Mood expression


Interaction engine

Persona AI
Persona state
Persona event log


# ============================================================
# MARKETPLACE
# ============================================================

Persona Marketplace


Content

Persona packages
Voice packs
Costumes


# ============================================================
# SECURITY
# ============================================================

ERP requests must be manual.


Automatic submission is prohibited.


# ============================================================
# FUTURE EXPANSION
# ============================================================

AI secretary
Voice control
Proactive suggestions
Persona emotion system


# ============================================================
# END
# ============================================================



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/920.meta/001.unclassified/POCKET_SECRETARY_FEATURE_LIST_CANONICAL.md
# ============================================================

# ============================================================
# POCKET SECRETARY FEATURE LIST
# Canonical Design
# ============================================================

status: canonical
system: Civilization
application: PocketSecretary

owner: Boss
prepared_by: Zero



# ============================================================
# PURPOSE
# ============================================================

Define all functional modules of PocketSecretary.



# ============================================================
# CORE CONCEPT
# ============================================================

PocketSecretary is a

personal secretary
persona interface
civilization service gateway.



# ============================================================
# 0701 DASHBOARD
# ============================================================

Main application screen.


Functions

persona display
background display
quick access
notification preview
schedule preview



# ============================================================
# 0702 PERSONA SYSTEM
# ============================================================

Core interaction with persona characters.


Functions

persona display
persona switching
persona interaction
persona growth tracking
persona state sync



# ============================================================
# 0703 CHARACTER MANAGER
# ============================================================

Manage installed personas.


Functions

persona list
persona switch
persona install
persona remove
persona configuration



# ============================================================
# 0704 ASSET MANAGER
# ============================================================

Manage visual assets.


Assets

background
character assets
clothing
themes


Functions

asset install
asset removal
background change
asset preview



# ============================================================
# 0705 MARKETPLACE
# ============================================================

Marketplace for Civilization assets.


Items

personas
backgrounds
voices
clothing
books


Functions

browse items
purchase items
install assets



# ============================================================
# 0706 SCHEDULE MANAGEMENT
# ============================================================

Schedule management.


Functions

create schedule
edit schedule
delete schedule
reminder notification
calendar view



# ============================================================
# 0707 TASK MANAGEMENT
# ============================================================

Task / Todo management.


Functions

create task
edit task
complete task
task reminder
task list



# ============================================================
# 0708 NOTES
# ============================================================

Note management.


Functions

create note
edit note
search note
archive note



# ============================================================
# 0709 JOURNAL
# ============================================================

Personal journal.


Functions

write journal
browse journal
search journal
journal history



# ============================================================
# 0710 CALCULATOR
# ============================================================

Basic calculator.


Functions

basic calculation
calculation history



# ============================================================
# 0711 TRANSPORT ROUTE SEARCH
# ============================================================

Transit search integration.


Provider

Yahoo Transit


Functions

route search
travel time calculation
fare calculation



# ============================================================
# 0712 TRAVEL EXPENSE SUPPORT
# ============================================================

Travel expense support.


Functions

manual expense creation
route based expense creation
ERP submission (Business plan)



# ============================================================
# 0713 BUSINESS CARD MANAGER
# ============================================================

Business card management application.


Functions

open card manager
scan business card
search contacts



Available only for

For Business plan.



# ============================================================
# 0714 ERP INTEGRATION
# ============================================================

Enterprise system integration.


Functions

expense submission
approval status check


Available only for

For Business plan.



# ============================================================
# 0715 AI SECRETARY
# ============================================================

AI powered assistance.


Functions

AI conversation
AI consultation
AI schedule suggestion
AI summarization


Available for

Pro
For Business



# ============================================================
# 0716 MARKETPLACE INSTALLATION
# ============================================================

Install assets purchased from marketplace.


Functions

asset installation
persona installation
asset update
asset removal



# ============================================================
# SUMMARY
# ============================================================

PocketSecretary provides

personal assistant tools
persona interaction
marketplace integration
business support.



# ============================================================
# END
# ============================================================



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/920.meta/001.unclassified/POCKET_SECRETARY_FULL_CANONICAL.md
# ============================================================

# ============================================================
# POCKET SECRETARY FULL CANONICAL DESIGN
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# FILE: APP_MANIFEST.yml
# ============================================================
app_id: pocket-secretary
display_name: Pocket Secretary

status: canonical
owner: Boss
prepared_by: Zero

category: local_first_secretary_app

app_role:
  - smartphone_secretary
  - local_assistant
  - persona_client
  - life_assistant

local_first: true
offline_capable: true

used_os:
  - persona-os
  - life-os

optional_used_os:
  - business-os

used_schema:
  - personaos
  - life

optional_used_schema:
  - business

platforms:
  - android
  - mobile

core_functions:
  - persona_interaction
  - schedule_management
  - task_management
  - notes
  - journal
  - calculator
  - notification
  - local_library
  - local_reader

optional_online_functions:
  - persona_growth_sync
  - shared_library
  - marketplace
  - asset_download

integration_targets:
  - persona-runtime
  - local-storage
  - notification-engine
  - optional-marketplace-api
  - optional-library-api


# ============================================================
# FILE: POCKET_SECRETARY_APPLICATION_OVERVIEW.md
# ============================================================
# ============================================================
# POCKET SECRETARY
# APPLICATION OVERVIEW
# ============================================================

status: canonical
layer: application

app_id: pocket-secretary

owner: Boss
prepared_by: Zero


# PURPOSE

Pocket Secretary is a local-first smartphone secretary application.

It is not the entry point of BusinessOS.

It is primarily a personal assistant application
built on PersonaOS and LifeOS.


# PRIMARY ROLE

Pocket Secretary provides:

persona interaction
life assistance
local task support
local schedule support
local notes and journal
local library and reader


# LOCAL-FIRST PRINCIPLE

Pocket Secretary must remain usable
without online connectivity.

Core functions must work locally.


# OPTIONAL ONLINE FUNCTIONS

Some optional online functions may exist.

Examples:

persona growth sync for additional characters
shared library
marketplace access
asset download


# OS RELATION

Primary systems:

PersonaOS
LifeOS

Optional online support:

BusinessOS


# SUMMARY

Pocket Secretary is a local-first
smartphone secretary application
with optional Civilization services.


# ============================================================
# FILE: POCKET_SECRETARY_APPLICATION_ARCHITECTURE.md
# ============================================================
# ============================================================
# POCKET SECRETARY
# APPLICATION ARCHITECTURE
# ============================================================

status: canonical
layer: application

app_id: pocket-secretary

owner: Boss
prepared_by: Zero


# ARCHITECTURE POSITION

User
↓
PocketSecretary
↓
PersonaOS
LifeOS
↓
Optional BusinessOS services


# CORE STRUCTURE

PocketSecretary

local_ui
local_storage
persona_runtime_client
life_assistant_layer
notification_layer
library_layer
reader_layer
optional_online_layer


# PRIMARY DEPENDENCIES

PersonaOS

persona runtime
visual persona
emotion
voice
interaction


LifeOS

schedule
task
journal
life records
personal reminders


# OPTIONAL DEPENDENCIES

BusinessOS

marketplace
shared archive
online asset distribution
persona growth reflection for additional characters


# NON-GOAL

Pocket Secretary is not a BusinessOS terminal.

Pocket Secretary is not an ERP client.

Pocket Secretary is not a mandatory online client.


# DATA LAYERS

local data
↓
optional online sync
↓
optional downloaded assets


# SUMMARY

Pocket Secretary is a local-first assistant application
with optional online extension points.


# ============================================================
# FILE: POCKET_SECRETARY_FUNCTION_MODEL.md
# ============================================================
# ============================================================
# POCKET SECRETARY
# FUNCTION MODEL
# ============================================================

status: canonical
layer: application

app_id: pocket-secretary

owner: Boss
prepared_by: Zero


# CORE FUNCTIONS

01 persona
02 conversation
03 schedule
04 task
05 note
06 journal
07 calculator
08 notification
09 local_library
10 book_reader
11 settings
12 local_data_manager


# OPTIONAL ONLINE FUNCTIONS

13 marketplace
14 asset_manager
15 shared_library_sync
16 persona_growth_sync


# READER MODEL

Reader Layer

standard_reader
civilization_reader


# STANDARD READER

Supports:

pdf
epub
html
markdown


# CIVILIZATION READER

Supports:

annotation
knowledge link
ai explanation
highlight
bookmark
note


# BOOK MODEL

Books are treated as digital assets.

digital_asset_type = book


# SUMMARY

Pocket Secretary combines
assistant functions,
life support,
and knowledge access
in a local-first structure.


# ============================================================
# FILE: POCKET_SECRETARY_ONLINE_BOUNDARY.md


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/920.meta/001.unclassified/POCKET_SECRETARY_ONLINE_BOUNDARY.md
# ============================================================

# ============================================================
# POCKET SECRETARY
# ONLINE BOUNDARY
# ============================================================

status: canonical
layer: application

app_id: pocket-secretary

owner: Boss
prepared_by: Zero


# LOCAL ONLY AREA

persona interaction
local notes
local journal
local schedule
local tasks
local calculator
local notifications
local reader
local library cache


# OPTIONAL ONLINE AREA

marketplace
shared archive
asset download
persona growth sync for additional characters


# RULE

No core assistant functionality
must depend on online access.

Online access extends the application
but does not define the application.


# SUMMARY

Pocket Secretary must remain
fully meaningful in offline mode.



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/920.meta/001.unclassified/POCKET_SECRETARY_POSITIONING_CANONICAL.md
# ============================================================

# ============================================================
# POCKET SECRETARY
# POSITIONING
# ============================================================

status: canonical
layer: application

app_id: pocket-secretary

owner: Boss
prepared_by: Zero


# FORMAL POSITION

Pocket Secretary is a local-first smartphone secretary app.


# NOT THIS

not BusinessOS entry point
not Civilization official terminal
not ERP client
not mandatory cloud app


# THIS

local assistant
persona client
life assistant
knowledge reader
optional marketplace client


# SUMMARY

Pocket Secretary is a personal local application
that may optionally connect to Civilization services.



# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/920.meta/002.migration-review/POCKET-SECRETARY_INDEX.md
# ============================================================

# ============================================================
# POCKET-SECRETARY_INDEX.md
# ============================================================

/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/100_POCKET_SECRETARY_OVERVIEW.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/101_POCKET_SECRETARY_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/102_POCKET_SECRETARY_PERSONA_INTEGRATION.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/103_POCKET_SECRETARY_LOCAL_DATA_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/104_POCKET_SECRETARY_ERP_INTEGRATION.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/105_POCKET_SECRETARY_SCHEDULE_SYSTEM.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/106_POCKET_SECRETARY_TODO_SYSTEM.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/107_POCKET_SECRETARY_ARCHIVE_SYSTEM.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/108_POCKET_SECRETARY_UI_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/109_POCKET_SECRETARY_SECURITY_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/110_POCKET_SECRETARY_SYNC_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/111_POCKET_SECRETARY_MARKETPLACE_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/112_POCKET_SECRETARY_RUNTIME_FLOW.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/113_POCKET_SECRETARY_EXTENSION_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/114_POCKET_SECRETARY_RUNTIME_ENGINE.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/115_POCKET_SECRETARY_DATA_SCHEMA.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/116_POCKET_SECRETARY_PERSONA_STATE_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/117_POCKET_SECRETARY_CONFIGURATION_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/118_POCKET_SECRETARY_UI_LAYOUT_SYSTEM.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/119_POCKET_SECRETARY_TOOL_SYSTEM.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/120_POCKET_SECRETARY_NOTIFICATION_SYSTEM.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/121_CHARACTER_INTERACTION_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/122_DASHBOARD_WIDGET_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/123_LOCAL_FILE_STORAGE_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/124_DATA_BACKUP_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/125_SECRETARY_PROFILE_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/126_PERSONA_PACKAGE_BINDING.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/127_ERP_REQUEST_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/128_ERP_AUTHENTICATION_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/129_POCKET_SECRETARY_SECURITY_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/130_POCKET_SECRETARY_PERMISSION_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/131_POCKET_SECRETARY_API_SPECIFICATION.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/132_POCKET_SECRETARY_API_ERROR_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/133_POCKET_SECRETARY_ROOM_ENTITY_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/134_POCKET_SECRETARY_DATABASE_MIGRATION_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/135_POCKET_SECRETARY_NAVIGATION_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/136_POCKET_SECRETARY_VIEWMODEL_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/137_POCKET_SECRETARY_BACKGROUND_TASK_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/138_POCKET_SECRETARY_NOTIFICATION_TRIGGER_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/139_POCKET_SECRETARY_FILE_STORAGE_STRUCTURE.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/140_POCKET_SECRETARY_ERROR_HANDLING_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/141_POCKET_SECRETARY_LOGGING_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/142_POCKET_SECRETARY_MODULE_STRUCTURE.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/143_POCKET_SECRETARY_REPOSITORY_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/144_POCKET_SECRETARY_USECASE_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/145_POCKET_SECRETARY_UI_STATE_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/146_POCKET_SECRETARY_TEST_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/147_POCKET_SECRETARY_BUILD_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/148_POCKET_SECRETARY_DEPENDENCY_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/149_POCKET_SECRETARY_DEPLOYMENT_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/150_POCKET_SECRETARY_EVOLUTION_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/POCKET_SECRETARY_DESIGN.md
/data/data/com.termux/files/home/01.civilization-system/03.business-os/70.apps/pocket-secretary/POCKET_SECRETARY_FULL_CANONICAL.md


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/07.applications/pocket-secretary/999.archive/107_POCKET_SECRETARY_ARCHIVE_SYSTEM.md
# ============================================================

# ============================================================
# ARCHIVE SYSTEM
# ============================================================

status: canonical
component: archive-system
owner: Boss
prepared_by: Zero


# PURPOSE

Local document archive.


# SUPPORTED FILE TYPES

PDF
PNG
JPEG
CSV
TXT
XLSX


# STORAGE

Files are stored locally.
