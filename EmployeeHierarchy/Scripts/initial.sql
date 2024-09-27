 
  create DATABASE EmployeeHierarchy; 
 

 -- Create the employees table
 create table employees(
     id serial,
     name varchar(30) not null,
     employee_id varchar(10) unique not null,
     designation VARCHAR(10) not null,
     department varchar(20) not null,
     manager_id varchar(10)
 );
 
 -- INSERT DATA 
 
 -- CEO (Top of the hierarchy)
 INSERT INTO employees (name, employee_id, designation, department, manager_id)
 VALUES ('John Doe', 'EMP001', 'CEO', 'Executive', NULL);

 -- COO (Reports to CEO)
 INSERT INTO employees (name, employee_id, designation, department, manager_id)
 VALUES ('Jane Smith', 'EMP002', 'COO', 'Operations', 'EMP001');

 -- CFO (Reports to CEO)
 INSERT INTO employees (name, employee_id, designation, department, manager_id)
 VALUES ('Mike Johnson', 'EMP003', 'CFO', 'Finance', 'EMP001');

 -- CTO (Reports to CEO)
 INSERT INTO employees (name, employee_id, designation, department, manager_id)
 VALUES ('Sarah Brown', 'EMP004', 'CTO', 'Technology', 'EMP001');

 -- Operations Manager (Reports to COO)
 INSERT INTO employees (name, employee_id, designation, department, manager_id)
 VALUES ('Robert Wilson', 'EMP005', 'Manager', 'Operations', 'EMP002');

 -- Finance Manager (Reports to CFO)
 INSERT INTO employees (name, employee_id, designation, department, manager_id)
 VALUES ('Emily Davis', 'EMP006', 'Manager', 'Finance', 'EMP003');

 -- IT Manager (Reports to CTO)
 INSERT INTO employees (name, employee_id, designation, department, manager_id)
 VALUES ('David Lee', 'EMP007', 'Manager', 'Technology', 'EMP004');

 -- Operations Staff (Reports to Operations Manager)
 INSERT INTO employees (name, employee_id, designation, department, manager_id)
 VALUES ('Alice Johnson', 'EMP008', 'Staff', 'Operations', 'EMP005');

 -- Finance Staff (Reports to Finance Manager)
 INSERT INTO employees (name, employee_id, designation, department, manager_id)
 VALUES ('Tom Brown', 'EMP009', 'Staff', 'Finance', 'EMP006');

 -- IT Staff (Reports to IT Manager)
 INSERT INTO employees (name, employee_id, designation, department, manager_id)
 VALUES ('Lisa Chen', 'EMP010', 'Staff', 'Technology', 'EMP007');

 -- Additional INSERTs to expand the hierarchy

 -- HR Director (Reports to CEO)
 INSERT INTO employees (name, employee_id, designation, department, manager_id)
 VALUES ('George Taylor', 'EMP011', 'Director', 'HR', 'EMP001');

 -- HR Manager (Reports to HR Director)
 INSERT INTO employees (name, employee_id, designation, department, manager_id)
 VALUES ('Rachel Green', 'EMP012', 'Manager', 'HR', 'EMP011');

 -- HR Staff (Reports to HR Manager)
 INSERT INTO employees (name, employee_id, designation, department, manager_id)
 VALUES ('Joey Tribbiani', 'EMP013', 'Staff', 'HR', 'EMP012');

 -- Marketing Director (Reports to CEO)
 INSERT INTO employees (name, employee_id, designation, department, manager_id)
 VALUES ('Chandler Bing', 'EMP014', 'Director', 'Marketing', 'EMP001');

 -- Marketing Manager (Reports to Marketing Director)
 INSERT INTO employees (name, employee_id, designation, department, manager_id)
 VALUES ('Monica Geller', 'EMP015', 'Manager', 'Marketing', 'EMP014');

 -- Marketing Staff (Reports to Marketing Manager)
 INSERT INTO employees (name, employee_id, designation, department, manager_id)
 VALUES ('Phoebe Buffay', 'EMP016', 'Staff', 'Marketing', 'EMP015');

 -- Sales Director (Reports to COO)
 INSERT INTO employees (name, employee_id, designation, department, manager_id)
 VALUES ('Ross Geller', 'EMP017', 'Director', 'Sales', 'EMP002');

 -- Sales Manager (Reports to Sales Director)
 INSERT INTO employees (name, employee_id, designation, department, manager_id)
 VALUES ('Gunther Central', 'EMP018', 'Manager', 'Sales', 'EMP017');

 -- Sales Staff (Reports to Sales Manager)
 INSERT INTO employees (name, employee_id, designation, department, manager_id)
 VALUES ('Janice Hosenstein', 'EMP019', 'Staff', 'Sales', 'EMP018');

 -- Software Development Manager (Reports to CTO)
 INSERT INTO employees (name, employee_id, designation, department, manager_id)
 VALUES ('Richard Burke', 'EMP020', 'Manager', 'Technology', 'EMP004');

 -- Software Developer (Reports to Software Development Manager)
 INSERT INTO employees (name, employee_id, designation, department, manager_id)
 VALUES ('Carol Willick', 'EMP021', 'Staff', 'Technology', 'EMP020');