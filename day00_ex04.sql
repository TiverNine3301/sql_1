SELECT CONCAT(name, ' (age:', age, ',gender:', '''', gender, '''', ',address:', '''', address, '''', ')') as person_information
FROM person
order by person_information;