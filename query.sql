
SELECT 
    p.ProductName AS 'Имя продукта',
    ISNULL(c.CategoryName, 'Без категории') AS 'Имя категории'
FROM Products p
LEFT JOIN ProductCategories pc ON p.ProductID = pc.ProductID
LEFT JOIN Categories c ON pc.CategoryID = c.CategoryID
ORDER BY p.ProductName, c.CategoryName;
