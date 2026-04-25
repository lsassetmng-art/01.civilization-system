# ============================================================
# MODEL
# ============================================================

model_id: 0300800015
model_name: memory_retrieval

domain: 0080.knowledge
system: 03.persona_os

# PURPOSE
Represents retrieval of stored memories.

# DESCRIPTION
Memory retrieval defines mechanism used
to recall past experiences and events.

# RELATIONS
memory_retrieval
 -> persona_memory
 -> memory_index
