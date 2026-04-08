# BUSINESS TO PERSONA CONNECTION ARCHITECTURE
status: canonical
layer: architecture
system: business-os
scope: business-to-persona-connection

Defines the event-driven connection architecture.

## Path
Business Event
-> Business Outbox
-> Dispatcher
-> PersonaOS Apply
-> Optional Result Reflection
