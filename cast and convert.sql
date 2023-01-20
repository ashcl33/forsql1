# cast() function

select cast(45.68 as int); # it will throw an error, so change int to signed
select cast(45.68 as signed); # it works now

select cast("22,09,24" as date); # the string values will be changed into date

select cast("22,10,24," as datetime);

# another example
select * from sampleonly;

select cast(sample_price as signed) from sampleonly; #  only integers

select sampleid, sample_price, cast(sample_price as decimal) as new_price from sampleonly;

# -------------convert() function ------------

select convert(21.345, decimal(7,2)); # 7 = total no. of digits that will display. 2 = 2 digits after the decimal point

select convert("11,10,25", datetime);

select convert('091726', time);









