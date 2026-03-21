# ============================================================
# ERP GATEWAY INTERFACE
# ============================================================

scope: civilization ↔ ERP gateway

ERP is an external enterprise system.

It is not part of the Civilization OS
domain model.

Civilization interacts with ERP only through
a gateway interface.

Flow

Civilization Application
    ↓
External Gateway
    ↓
ERP API

Principles

Loose coupling  
Explicit contracts  
Fail closed integration  

ERP failures must not break Civilization runtime.

