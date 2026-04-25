# COMMON OS IMPLEMENTATION RULES CANONICAL

status: canonical
layer: implementation

## Implementation roots
- Design: /data/data/com.termux/files/home/01.civilization-system/12.common-os
- Buildable outputs: /data/data/com.termux/files/home/03.civilization-development/12.common-os

## Rules
- Buildable outputs must remain implementation artifacts.
- Shared UI must follow CommonOS canon.
- Variants must be used instead of system-specific forks where feasible.
- No client secret distribution.
- Domain wrappers must remain thin.
