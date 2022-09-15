/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 select products.name as ProductName, categories.name as CategoryName from products
 join categories on categories.CategoryID = products.CategoryID
 where categories.name = "Computers";

 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 select p.name, p.price, r.rating from products as p
 join reviews as r on r.ProductID = p.ProductID
 where r.rating = 5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
select employees.FirstName, employees.LastName, sum(sales.Quantity) from sales
join employees on employees.EmployeeID = sales.EmployeeID
group by employees.EmployeeID
order by sum(sales.Quantity) desc
limit 2;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
select d.name as 'DepartmentName', c.Name as 'CategoryName' from departments as d 
join categories as c on c.DepartmentID = d.DepartmentID
where c.name = 'Appliances' or c.name = 'games';

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 select products.Name, sum(sales.Quantity) as 'TotalSold', sum(sales.Quantity * sales.PricePerUnit) as 'TotalPrice' from products
 join sales on sales.ProductID = products.ProductID
 where products.ProductID = 97;
 

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
select products.name, reviews.Reviewer, reviews.Rating, reviews.Comment from products
join reviews on reviews.ProductID = products.ProductID
where products.ProductID = 857 and reviews.Rating = 1;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */
