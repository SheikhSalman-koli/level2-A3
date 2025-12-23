select booking_id, u.name as "customer_name", v.name as "vehicle_name", start_date, end_date, b.status from bookings as b
inner join users as u on b.user_id = u.user_id
inner join vehicles as v on b.vehicle_id = v.vehicle_id

  
select * from vehicles as v
where not exists(
  select 1 from bookings as b
  where v.vehicle_id = b.vehicle_id
)

  
select * from vehicles
where type = 'car' and status = 'available' 

  
select v.name, count(*) as "total_bookings" from vehicles as v
join bookings as b on v.vehicle_id = b.vehicle_id
group by v.name
having count(*) > 2