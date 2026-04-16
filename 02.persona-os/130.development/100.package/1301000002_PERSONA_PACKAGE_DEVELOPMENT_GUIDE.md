# PERSONA PACKAGE DEVELOPMENT GUIDE

status: implementation-ready-followup

package_rules:
- package is created from approved release inputs only
- package manifest must reference immutable snapshot lineage
- package integrity check is required before distribution or runtime use
- package revocation path must remain auditable

required_tests:
- manifest completeness
- integrity mismatch rejection
- revoked package rejection
