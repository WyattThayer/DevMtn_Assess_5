-- problem 1
select email from customers order by email;

-- problem 2
select id from orders where customer_id in(select id from customers where fname = 'Elizabeth' and lname = 'Crocker');

-- problem 3
select sum(num_cupcakes) from orders where processed = 'f'

-- problem 4
SELECT c.name,sum(num_cupcakes) FROM cupcakes c LEFT JOIN orders ON c.id = cupcake_id GROUP BY c.name ORDER BY c.name;

-- problem 5
select c.email, sum(num_cupcakes) from customers c left join orders on c.id = customer_id group by c.email order by sum(num_cupcakes) desc;

-- problem 6
select c.fname, c.lname, c.email from customers c join orders on c.id = customer_id where processed = 't' and cupcake_id = (select id from cupcakes where name = 'funfetti') limit 1;

-- section 2