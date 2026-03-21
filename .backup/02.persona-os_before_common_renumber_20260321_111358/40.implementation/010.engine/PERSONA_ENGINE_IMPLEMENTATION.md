# ============================================================
# PERSONA ENGINE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation

# PURPOSE
Defines implementation structure of Persona Engine.

# COMPONENTS

EngineCoordinator
EventReceiver
ContextResolver
ReasoningProcessor
DecisionProcessor
BehaviorDispatcher
MemoryWriter
StateSynchronizer

# EXECUTION LOOP

receive event
→ resolve context
→ run reasoning
→ generate decision
→ dispatch behavior
→ write memory
→ update state
