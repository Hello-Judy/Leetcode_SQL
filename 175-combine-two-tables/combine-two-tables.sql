SELECT lastName, firstName, Address.city, Address.state FROM Person
LEFT JOIN Address on Person.personId = Address.personId

# Knowledge point is Left join
# The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2). The result is 0 records from the right side, if there is no match.
# So remember to add the Address.CITY and the address state
# If the left join could not find the match result, it will fill the null.