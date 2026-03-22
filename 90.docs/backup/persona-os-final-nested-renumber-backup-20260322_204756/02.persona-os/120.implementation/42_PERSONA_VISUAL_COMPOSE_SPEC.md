# ============================================================
# PERSONA VISUAL COMPOSE SPEC
# ============================================================

status: canonical
component: persona-visual-compose

owner: Boss
prepared_by: Zero

# PURPOSE

Build canonical visual manifest
for persona appearance.

# PROCESS

visual-generation-job-create
↓
visual-compose
↓
layer resolution
↓
manifest generation
↓
client rendering
↓
visual-render-result-commit

# MANIFEST STRUCTURE

manifest contains:

layers
asset references
hash
version metadata

