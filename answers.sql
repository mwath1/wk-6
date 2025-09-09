/*initialize the table to use*/
use salesdb;

/*Question 1 */
select e.firstName, e.lastName, e.email, e.officeCode
from employees e
inner join offices o on e.officeCode = o.officeCode;

/*Question 2 */
select p.productName, p.productVendor, p.productLine
from products p
left join productlines pl on p.productLine = pl.productLine;

/*Question 3 */
select o.orderDate, o.shippedDate, o.status, o.customerNumber
from orders o
right join customers c on o.customerNumber = c.customerNumber
order by status desc
limit 10;