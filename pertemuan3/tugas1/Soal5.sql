SELECT orderid, orderdate, custid, empid
FROM Sales.Orders
WHERE OrderDate = (
    SELECT MAX(OrderDate)
    FROM Sales.Orders
);