# ============================================================
# ANNOTATION
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for annotation structures.

# 2. IMPLEMENTATION TARGETS

- annotation handling
- target/rule handling
- annotation-status handling
- publication control
- audit publication

# 3. DATA / STATE

Canonical structures:
- annotation_record
- annotation_target_reference
- annotation_rule
- annotation_status

# 4. EXECUTION

- resolve explicit annotation scope and annotation identity
- bind targets and rules before publication
- publish only explicit active or revised state
- reject hidden annotation mutation path

# 5. VALIDATION

- reject missing annotation scope
- reject invalid target or rule binding
- reject hidden annotation mutation

# 6. OBSERVABILITY

- annotation audit
- target/rule visibility
- annotation-status visibility

