select * from dt where id=1

alter table dt add points as geometry::STGeomFromText('POINT('+convert(varchar(20),longtitude)+' '+convert(varchar(20),latitude)+')',4326)