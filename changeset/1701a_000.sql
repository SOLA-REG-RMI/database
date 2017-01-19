-- 20 Jan 2017
-- Example changeset to create for database changes.

-- Add changeset to system.version table so its possible to determine if hte chagneset has been run. 
INSERT INTO system.version SELECT '1701a' WHERE NOT EXISTS (SELECT version_num FROM system.version WHERE version_num = '1701a');

-- Changeset SQL to go below. Provide comments for the SQL statements to clarify their purpose. 