SELECT c.custid,
       COUNT(o.orderid) AS "Total pesanan",
       SUM(od.qty) AS "Total kuantitas"
FROM Sales.Customers c
JOIN Sales.Orders o ON o.custid = c.custid
JOIN Sales.OrderDetails od ON od.orderid = o.orderid
WHERE c.country = 'USA'
GROUP BY c.custid;
    
