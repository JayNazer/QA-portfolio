select clientID, clientName, clientage from clients
where clientage > 30
order by clientage;

select hotelName, starsCounts from hotels
where starsCounts > 2
order by starsCounts DESC;

select distinct cityName from cities
join hotels on cities.cityID = hotels.cityId;

select clientName, clientage from clients
order by clientage limit 5;

select distinct clientage, count(clientID) from clients
group by clientage;

select cityName, count(hotels.cityId) as hotels_in_city from cities
join hotels on cities.cityID = hotels.cityId
group by hotels.cityId
order by hotels_in_city desc;

select hotelName, count(rooms.roomID) from hotels
join rooms on hotels.hotelID = rooms.hotelID
group by rooms.hotelID
having count(rooms.roomID) > 2;

select clientName, hotels.hotelName from clients
join orders on clients.clientID = orders.clientID
join rooms on rooms.roomID = orders.roomId
join hotels on hotels.hotelID = rooms.hotelID
where hotels.starsCounts = 5;

select avg(starsCounts) from hotels
join cities on hotels.cityId = cities.cityID
group by cities.cityID;

select clients.clientName, count(orders.orderID) from clients
join orders on orders.clientID = clients.clientID
group by clients.clientID
having count(orders.orderID) > 1;

