SELECT a.name as "Employee" FROM
Employee AS a , Employee as b
WHERE a.managerId = b.id and a.salary >= b.salary;

# Knowledge point:
# In SQL, the AS "Employee" syntax creates an alias for the column name.You're renaming the output column from the original column name (name) to a clearer or more descriptive title (Employee) in the result table.

# Why Select a.name in the code: 
# A self-join is commonly used when you have relationships within the same table.
# You are performing a self-join, meaning the same table (Employee) is joined to itself.  a: represents the employee. b: represents the employee's manager.When two or more tables are involved (including a self-join), specifying the table alias (a.name) is mandatory to avoid ambiguity. If you wrote just name, the SQL engine wouldn't know whether you meant a.name (employee's name) or b.name (manager's name).



