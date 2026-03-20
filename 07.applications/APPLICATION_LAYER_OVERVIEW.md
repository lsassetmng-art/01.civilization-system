# ============================================================
# APPLICATION LAYER OVERVIEW
# ============================================================

status: canonical
layer: application
system: civilization-system

owner: Boss
prepared_by: Zero


# PURPOSE

Define the Application layer of Civilization System.

Applications are end-user products built on top of OS layers.

Applications may integrate multiple OS components.


# ARCHITECTURE POSITION

Civilization System

Constitution
Architecture
Runtime
OS Layers
Application Layer


Applications use OS services but do not modify OS.


# APPLICATION CHARACTERISTICS

Applications:

- integrate multiple OS systems
- define user interaction flows
- implement product features
- may store application-specific data


# EXAMPLES

PocketSecretary
CreatorStudio
GamePlatform
StreamingStudio


# RULE

Applications must declare:

used_os
used_schema
integration targets
runtime dependencies

