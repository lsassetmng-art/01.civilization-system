# PERSONA RUNTIME HOSTING MODEL OVERVIEW

status: implementation-ready-followup

runtime_hosting_boundary:
- runtime session is ephemeral and renewable
- host adapter binds released snapshot/package only
- session state must support creation, heartbeat, suspend, resume, terminate, expire
- runtime session model must be auditable by session id and release input version
