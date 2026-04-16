# ============================================================
# POCKET SECRETARY MAILER INTEGRATION
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines bounded mailer integration from PocketSecretary.

role:
PocketSecretary may launch or bridge to an external mailer
for user-initiated communication.

integration scope:
- open compose surface
- pass bounded recipient or subject context where applicable
- return control to PocketSecretary where supported

rules:
- mailer launch is not mail send completion
- PocketSecretary does not treat compose launch as message success
- mailer integration remains bounded and optional
