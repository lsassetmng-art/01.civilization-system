# COMMON OS SECURITY OVERVIEW

status: canonical
layer: security

## Purpose
This layer defines trust boundaries for CommonOS-based UI and metadata.

## Topics
- client and server boundary
- secret exclusion
- presentation-only delivery discipline

## app_common RLS and permission subsystem overview

### Position
CommonOS security defines the trust boundary for app_common metadata tables and their publication path.

### Scope
- deny-by-default posture for base tables
- read visibility subsets
- reviewer / publisher / schema-admin responsibilities
- client-distributed metadata safety
