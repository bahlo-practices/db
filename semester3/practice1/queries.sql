# 4)
create table passagier (
  nr int,
  name char(32),
  adresse char(48),
  lebensjahre int,
  primary key(nr)
)

create table flugzeug (
  seriennummer char(32),
  hersteller char(32),
  typ char(32),
  flugstunden int,
  primary key(seriennummer)
)

create table abflug (
  nr int,
  flugzeugserial char(32),
  pilotnr int,
  datum date,
  start char(32),
  ziel char(32),
  dauer int,
  primary key(nr)
)

create table pilot (
  nr int,
  flugh int
)

# 5)
insert into passagier values (0, 'Markus Hansen', 'Hansestraße 8, Hamburg', 46)
insert into flugzeug values ('a2b3c4d5e6', 'Boeing', '747', 0)
insert into abflug values (132, 'a2b3c4d5e6', 1, '2013-11-05', 'Hamburg', 'Köln', 1)
update flugzeug set flugstunden = 1 where serial = 'a2b3c4d5e6'
delete from flugzeug where serial = 'a2b3c4d5e6'
