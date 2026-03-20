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

