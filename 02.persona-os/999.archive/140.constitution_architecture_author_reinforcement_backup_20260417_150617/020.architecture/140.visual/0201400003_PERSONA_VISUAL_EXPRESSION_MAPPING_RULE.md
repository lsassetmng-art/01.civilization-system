# ============================================================
# PERSONA VISUAL EXPRESSION MAPPING RULE
# ============================================================

status: canonical
scope: persona.visual.expression.mapping.rule
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Define the official expression mapping rule
used by Persona Visual Runtime.


# ROLE

Expression mapping determines which approved expression
is selected at runtime based on display context.


# INPUT FACTORS

Expression mapping may consider:

- visual state
- emotion summary
- behavior tendency
- communication mode
- role mode
- safety restriction
- public/release restriction


# OUTPUT EXAMPLES

- expression asset selection
- eye state selection
- mouth state selection
- facial overlay selection


# RULE

Runtime may only select from approved expression sets.

Runtime must not generate new official expression truth.


# FINAL DEFINITION

Expression mapping is the runtime-side selection rule
that maps display context to approved expression assets.
