# ============================================================
# PKG-AIW-001 ENVIRONMENT VARIABLE CORRECTION NOTE
# ============================================================

status: correction-note
package_code: PKG-AIW-001
system: AiworkerOS
owner: Boss
prepared_by: Zero

correction:
AiworkerOS DB apply in this project uses PERSONA_DATABASE_URL because this is
Persona-side DB work.

canonical_apply_template:
- 901_apply_template_with_persona_database_url.sh

rule:
- Use PERSONA_DATABASE_URL going forward for AiworkerOS DB-side execution in this project room.
