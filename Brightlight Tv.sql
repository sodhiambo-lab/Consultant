use [CENTRAL]
go

select
*
from
Viewers;

select 
*
from
users_profile;

select
	u.UserID,
	u.Name,
	u.Surname,
	u.Gender,
	u.Race,
	u.Age,
	u.Province,
	u.Social_Media_Handle,
	v.Channel2,
	v.RecordDate2,
	v. Duration_2
from
	users_profile as u
inner join
	Viewers as v on v.UserID = u.UserID;

SELECT 
    UserID,
    DATEADD(HOUR, 2, RecordDate2) AS SAST_DateTime,
    CAST(DATEADD(HOUR, 2, RecordDate2) AS DATE) AS SAST_Date,
    DATENAME(WEEKDAY, DATEADD(HOUR, 2, RecordDate2)) AS SAST_Weekday,
    DATEPART(HOUR, DATEADD(HOUR, 2, RecordDate2)) AS SAST_Hour,
    DATEPART(WEEK, DATEADD(HOUR, 2, RecordDate2)) AS SAST_Week
FROM Viewers;