alter table track 
add FOREIGN key (id) references album (id)

alter table track 
add constraint duration check (duration > 1); 

alter table album 
add constraint year check (year >= '1990-01-01'); 