# ============================================================
# NAMECARDMANAGER LIVE TREE SOURCE LAYOUT
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: live-tree-source-layout

purpose:
Captures the resulting live-tree source layout after the one-shot relocation.

main_source_root:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/src/main/java/com/lsam/NameCardManager

test_source_root:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/src/test/java/com/lsam/NameCardManager

live_modules:
- api/controller/relationship
- api/controller/companytimeline
- api/controller/capture
- api/dto/common
- api/dto/relationship
- api/dto/companytimeline
- api/dto/capture
- application/service
- application/validator
- application/mapper
- domain/model
- domain/port
- infrastructure/repository
- infrastructure/audit
- config

current_counts:
- main_java_files: 43
- test_java_files: 3

note:
- this document reflects file placement only
- it does not mean SQL has been applied
