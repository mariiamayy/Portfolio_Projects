/*
Excelerate Educational Platform User Activity and Particicpation 

Initial Exploratory Data Analysis Report on the given datasets to to gain comprehensive understanding of the datasets, assess 
the data quality, identify patterns and relationships, perform column analysis and detect outliers.This will help perform 
informed data processing and facilitate data-driven decision making. 


*/


--- Dataset Overview 

select * from [UserData ] 
/* 
Covers non-identifying information about all the users who ever created an account on Excelerate 
27,562 rows 
8 columns 
No primary Key 
*/

select * from [Opportunity Data] 
/*
Shows non-identifying information of users who signed up for specific learning opportunities on Excelerate
20,322 rows 
21 columns 
*/


--- Column Analysis for Both DataSets (Unique Values, Blanks, Basic Stats..)

--- User Data 
select PreferredSponsors from [UserData ]

select Gender, COUNT(Gender) as c  from [UserData ]
group by Gender
order by c

select country, COUNT(Country) as c  from [UserData ]
group by Country
order by c

select degree, COUNT(degree) as c  from [UserData ]
group by degree
order by c

select city, COUNT(city) as c  from [UserData ]
group by city
order by city

select isFromSocialMedia, COUNT(isFromSocialMedia) as c  from [UserData ]
group by isFromSocialMedia



--- Opportunity Data 
--- Profile_ID 
select * from [Opportunity Data] where Profile_Id is null
 
Select count(distinct profile_id) from [Opportunity Data]

select Profile_Id, COUNT(profile_id) from [Opportunity Data]
group by Profile_Id
--
select Opportunity_Id, COUNT(Opportunity_Id) from [Opportunity Data]
group by Opportunity_Id

select Opportunity_Name, COUNT(Opportunity_Name) from [Opportunity Data]
group by Opportunity_Name

select Opportunity_Category, COUNT(Opportunity_Category) from [Opportunity Data]
group by Opportunity_Category


--- Opportunity Status Discription 

select * from [Opportunity Data] where Status_Description is null 

select Status_Description, COUNT(Status_Description) as c  from [Opportunity Data]
group by Status_Description 
order by c

--- Reward Amount and Skill Points Stats 
select AVG(reward_amount) as mean ,max(reward_amount) as maximum , min(reward_amount)as minimum,
max(reward_amount) - min(reward_amount) as "range",
STDEV(reward_amount) as "standard deviation"
from [Opportunity Data]

select AVG(Skill_Points_Earned) as mean ,max(Skill_Points_Earned) as maximum , min(Skill_Points_Earned)as minimum,
max(Skill_Points_Earned) - min(Skill_Points_Earned) as "range",
STDEV(Skill_Points_Earned) as "standard deviation"
from [Opportunity Data]
--
select Badge_Name, COUNT(Badge_Name) as c  from [Opportunity Data] 
group by Badge_Name

select skills_earned from [Opportunity Data]


