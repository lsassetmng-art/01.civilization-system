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

