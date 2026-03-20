# ============================================================
# LSAM FREEZE POLICY - CANONICAL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Tier 0 (Hard Freeze)

Civilization
core/state-model
core/apply-engine
core/snapshot-contract

ERP
000.platform/030.identity
000.platform/040.permission
000.platform/080.workflow
000.platform/020.security
000.platform/060.data


Tier 1 (Controlled)

Civilization
event-registry
dispatcher
integration

ERP
100.business/*/command
100.business/*/policy
000.platform/070.integration


Tier 2 (Flexible)

Civilization
worlds/*
expression/*

ERP
100.business/*/read
200.management/*
300.analytics/*
