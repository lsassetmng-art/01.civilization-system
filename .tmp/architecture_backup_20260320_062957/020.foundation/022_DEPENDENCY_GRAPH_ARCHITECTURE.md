# DEPENDENCY GRAPH ARCHITECTURE

purpose:
Define explicit dependency structure between major subsystems.

dependencies:
model -> entity
entity -> state
event -> state transition
relation -> propagation
state -> metrics
snapshot -> replay
scenario -> branch execution

rule:
no hidden dependency.
