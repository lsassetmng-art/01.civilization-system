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

