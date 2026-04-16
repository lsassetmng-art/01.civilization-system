# ============================================================
# STREAMING OS CIVILIZATION SUBJECT INTEGRATION
# ============================================================

status: canonical-draft
system: streaming-os
domain: civilization-subject-integration
owner: Boss
prepared_by: Zero

# ============================================================
# 1. INTEGRATION PURPOSE
# ============================================================

This integration defines how StreamingOS
uses Civilization-side subject identity and affiliation.

# ============================================================
# 2. PRIMARY RESPONSIBILITIES
# ============================================================

The Civilization subject integration is responsible for:
- validating Civilization ID based subject existence
- resolving subject type
- resolving affiliation context
- resolving nation context
- supporting principal eligibility interpretation
- supporting beneficiary currency affiliation interpretation

# ============================================================
# 3. REQUIRED SUBJECT TYPES
# ============================================================

StreamingOS should be able to resolve at least:
- individual
- group
- company
- ai_human

It may also resolve context for:
- persona-linked participation
- ai_robot-linked participation
through attached subject structures when relevant.

# ============================================================
# 4. CANONICAL FIXED STATEMENT
# ============================================================

Civilization-side subject identity
remains the canonical source
for formal subject existence,
Civilization ID meaning,
affiliation meaning,
and nation affiliation meaning.

StreamingOS consumes this identity context
for principal eligibility,
ownership interpretation,
beneficiary interpretation,
and currency-affiliation interpretation.

