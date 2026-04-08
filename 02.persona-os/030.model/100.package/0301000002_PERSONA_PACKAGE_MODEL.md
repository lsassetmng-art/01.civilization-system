# ============================================================
# PERSONA PACKAGE MODEL
# ============================================================

status: canonical
layer: model
domain: package
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_package

core_fields:
persona_package_id
persona_id
snapshot_id
package_status
package_version
package_scope
package_manifest_ref
distribution_ref
created_at
updated_at

rules:
Package is a distributable assembly unit.
Package must remain traceable to snapshot authority.
