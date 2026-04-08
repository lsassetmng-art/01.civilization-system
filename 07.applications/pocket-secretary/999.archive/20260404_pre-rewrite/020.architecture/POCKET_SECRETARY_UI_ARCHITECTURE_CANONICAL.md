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

