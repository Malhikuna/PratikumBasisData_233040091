SELECT e.empid, e.firstname, e.lastname, o.orderdate
	FROM HR.Employees e
	LEFT OUTER JOIN Sales.Orders o ON e.empid = o.empid
	WHERE o.orderdate >= '2008-05-01' OR o.orderid IS NULL;