create view Customer_Info as 
select 
    c.C_first_name, 
    c.Phoneno, 
    c.City, 
    b.Total_amount
from Customer_Master c 
join Enquiry_Master e on c.Cust_id = e.Cust_id 
join Booking_Master b on e.Enquiry_id = b.Enquiry_id 
where b.Total_amount < 60000 
order by c.C_first_name;
