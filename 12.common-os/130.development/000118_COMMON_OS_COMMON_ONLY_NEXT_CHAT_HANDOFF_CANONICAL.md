# COMMON OS COMMON ONLY NEXT CHAT HANDOFF CANONICAL

status: canonical
system: CommonOS
layer: development

## Purpose
This document hands off only the CommonOS / app_common shared-foundation side to the next chat.

## Most important fixed facts
- 12.common-os is the shared foundation canon
- app_common is shared mutable metadata only
- UI and shared presentation belong to CommonOS
- business canon stays in each OS / app / ERP
- this chat does not perform OS-specific adoption design
- OS-specific adoption belongs in each OS chat

## Natural next work in this CommonOS chat
1. refine reviewed canonical SQL further if needed
2. tighten RLS and role mapping if needed
3. refine execution bundle notes if needed
4. prepare final documentation cleanup if needed

## Natural next work outside this chat
- use each OS chat to create target-specific CommonOS adoption plans

## Restart commands
find "/data/data/com.termux/files/home/01.civilization-system/12.common-os" -maxdepth 2 -type f | sort
find "/data/data/com.termux/files/home/01.civilization-system/12.common-os/030.model" -maxdepth 1 -type f | sort
find "/data/data/com.termux/files/home/01.civilization-system/12.common-os/130.development" -maxdepth 1 -type f | sort
