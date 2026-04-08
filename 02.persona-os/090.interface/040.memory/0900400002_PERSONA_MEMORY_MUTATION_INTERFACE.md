# ============================================================
# PERSONA MEMORY MUTATION INTERFACE
# ============================================================

status: canonical
layer: interface
domain: memory
system: persona-os
owner: Boss
prepared_by: Zero

interface_examples:
PersonaMemoryReadRequest
PersonaMemoryReadResponse
PersonaMemoryRetrievalRequest
PersonaMemoryRetrievalResponse
PersonaMemoryMutationRequest
PersonaMemoryMutationResponse
PersonaMemoryPersistenceApprovalRequest
PersonaMemoryPersistenceApprovalResponse
PersonaMemoryDecayExecutionRequest
PersonaMemoryDecayExecutionResponse
PersonaMemoryMutationAuditEvent

rules:
Retrieval must not be treated as memory mutation.
Persistence approval must remain explicit.
Decay execution must remain policy-bounded and auditable.
