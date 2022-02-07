SELECT * FROM pg_roles;
CREATE ROLE role_example LOGIN;
CREATE USER user_example;
GRANT postgres TO role_example;
SET ROLE role_example;
RESET ROLE;
DROP ROLE role_example;