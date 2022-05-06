create database weinberg;

create table rebsorte (
                          rebs_id serial primary key,
                          name char(30)
);


create table anbauflaeche (
                              abf_id serial primary key,
                              Lage char(30),
                              Bezeichnung char(30)

);

create table Ernte (
                       Rebs_id integer references rebsorte (rebs_id),
                       Abf_id integer,
                       Von date,
                       Bis date,
                       ertrag integer,
                       constraint pk_ernete primary key (rebs_id, abf_id),
                       constraint fk_ernete_rebsorte foreign key (abf_id) references anbauflaeche (abf_id),
                       constraint chk_datum check (von<bis)
);


alter table rebsorte
    add Farbe char(30);

insert into rebsorte (rebs_id, name, farbe)
values (1,'Merlot','rot'), (2,'Blauer Portugieser','rot'), (3,'Bobal','rot'),(4,'Cabernet Sauvignon','rot'), (5,'saubaer', 'ebene'),(6,'bomhold','suedhang')
        ,(7,'kirrstein', 'suedhang'), (8,'roemerberg', 'suedhang'),(9,'Chardonnay','weiß'),(10,'Grauburgunder','weiß'),(11, 'Grüner Veltliner','weiß'),
       (12, 'Pinot noir','rot'),(13, 'Riesling','weiß'), (14, 'Sangiovese','rot'), (15, 'Schwarzriesling','rot'), (16, 'Silvaner','weiß'),
       (17, 'Syrah','rot'), (18, 'Tempranillo','rot'), (19, 'Weißburgunder','weiß');