# ============================================================
# MODEL
# ============================================================

model_id: 0300800014
model_name: memory_index

domain: 0080.knowledge
system: 03.persona_os

# PURPOSE
Represents indexing of persona memories.

# DESCRIPTION
Memory index organizes stored memories
to support retrieval and reasoning.

# RELATIONS
memory_index
 -> persona_memory
 -> memory
