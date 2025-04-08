SELECT lastName, firstName, Address.city, Address.state FROM Person
LEFT JOIN Address on Person.personId = Address.personId

# Knowledge point
