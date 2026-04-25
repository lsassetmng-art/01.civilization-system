# COMMON OS QUEUE UI IMPLEMENTATION CANONICAL

status: canonical
layer: implementation

## Required queue UI surfaces
- offline status indicator
- pending indicator
- processing indicator
- retry_wait indicator
- sent indicator
- failed indicator
- conflict indicator
- retry action entry point

## Rule
Queue presentation must be reusable across ERP and other domains while leaving queue meaning to the owning domain.
