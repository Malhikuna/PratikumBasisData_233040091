SELECT e.firstname, e.lastname,
	CASE
		WHEN e.titleofcourtesy = 'Mr.' THEN 'Male'
		WHEN e.titleofcourtesy IN ('Ms.', 'Mrs.') THEN 'Female'
	ELSE 'Unknown'
	END AS 'Gender'

FROM HR.Employees AS e;
	