----Generate HHHead Details Table
use NSRSOK
Go
SELECT  DISTINCT
	[HHNSRRNO],[HHMNSRRNO],[Zone],[State],[LGA],[Ward],[Community],[UrbanRural],[HHNO],[MNO],[HHH_Surname],[HHH_Firstname],[HHH_Othername],[M_Name],[Sex]
	,[Relationship],[AgeY],[AgeM],[BirthCertificate],[MaritalStatus],[b2labour]
	,[b3labour],[b4labour],[b5labour],[b5labour_other],[EducationalQualification],[CurrentlyEnrolledinSchl],[Grade]
	,[HowfarisSchoolEnrolled],[c6apregnantlactating],[BenefitfromHealthcare],[Benefitwhy],[Benefitwhy_Other],[Howfarishealthcentre]
	,[Chronicallyill],[Disability],[Typeofdisability],[Cooperative],[ReligiousGroup],[BusinessGroup],[AgeGroup]
	,[TelephoneNo],[HHAddress],[HHSize],[Radio],[Touchlight],[kerosenestove],[Television],[MobilePhone]
	,[LandPhone],[HouseCurrent],[HouseElsewhere],[LandforHousing],[Farmland],[Bird],[Goat],[Cattle],[Bicycle],[Motocycle],[Car],[Canoe],[Boat],[Video_dvd],[Generator]
	,[Iron_Electric],[Iron_Charcoal],[Fan],[Air_Conditioner],[Refrigerator],[Freezer],[Sofa],[Table],[Hifi],[Mattress],[Bed],[Computer],[Wash_Machine],[Radio_num]
	,[touchlight_num],[Kerosenestove_num],[Television_num],[MobilePhone_num],[LandPhone_num],[HouseCurrent_num],[HouseElsewhere_num],[LandforHousing_num],[Farmland_num]
	,[Birdn],[Goatn],[Cattlen],[Bicycle_num],[Motocycle_num],[Car_num],[Canoe_num],[Boat_num],[Video_dvdn],[Generator_num],[Iron_electricn],[Iron_charcoaln],[Fan_num]
	,[Air_conditionern],[Refrigerator_num],[Freezer_num],[Sofan],[Tablen],[Hifi_num],[Mattress_num],[Bed_num],[Computer_num],[Wash_machinen],[Roof_Dwelling],
	[roof_dwelling_other],[floor_dwelling],[floor_dwelling_other],[light_dwelling],[light_dwelling_other],[Cook_dwelling],[cook_dwelling_other],[Drink_dwelling]
	,[Drink_dwelling_other],[Toilet_dwelling],[Toilet_dwelling_other],[DeviceType_dwelling],[DeviceType_dwelling_Other],[Num_room],[geopointLatitude]
	,[geopointLongitude],[geopointAltitude],[geopointAccuracy],[instanceID]
  into [NASARAWA_STATE_HHHeads_Details_01052018]
  FROM [NSRSOK].[dbo].[NASARAWA_STATE_NSR]
  where [Relationship]=1 


  --- Add Proportion to HHHeadDetails
use NSRSOK
Go
Alter Table [NASARAWA_STATE_HHHeads_Details_01052018] add [NoCurrentlyEnrScl] integer null
Alter Table [NASARAWA_STATE_HHHeads_Details_01052018] add [NoOfSpouse] integer null
Alter Table [NASARAWA_STATE_HHHeads_Details_01052018] add [HHAgricProp] integer null
Alter Table [NASARAWA_STATE_HHHeads_Details_01052018] add [HHPaidWorkProp] integer null
Alter Table [NASARAWA_STATE_HHHeads_Details_01052018] add [HHSelfEmpProp] integer null

-- Update HHH Details to Add Record to the proportions
--Number Currently Enrolled in Schl
use NSRSOK 
Go
Update [NASARAWA_STATE_HHHeads_Details_01052018]set  [NoCurrentlyEnrScl]= (Select  count([CurrentlyEnrolledinSchl]) 
from [NASARAWA_STATE_NSR]
where [NASARAWA_STATE_NSR].[instanceID] = [NASARAWA_STATE_HHHeads_Details_01052018].[instanceID] and 
[CurrentlyEnrolledinSchl]=1  Group by [HHNSRRNO],[Zone],[State],[LGA],[Ward],[Community],[UrbanRural])

---Number of Spouse
use NSRSOK
Go
Update [NASARAWA_STATE_HHHeads_Details_01052018]set  [NoOfSpouse]= (Select  count([Relationship]) 
from [NASARAWA_STATE_NSR]
where [NASARAWA_STATE_NSR].[instanceID] = [NASARAWA_STATE_HHHeads_Details_01052018].[instanceID] and 
[Relationship]=2 Group by [HHNSRRNO],[Zone],[State],[LGA],[Ward],[Community],[UrbanRural])

---HHAgric Prop
use NSRSOK
Go
Update [NASARAWA_STATE_HHHeads_Details_01052018]set  [HHAgricProp]= (Select  count([b2labour]) 
from [NASARAWA_STATE_NSR]
where [NASARAWA_STATE_NSR].[instanceID] = [NASARAWA_STATE_HHHeads_Details_01052018].[instanceID] and 
[b2labour]=1 Group by [HHNSRRNO],[Zone],[State],[LGA],[Ward],[Community],[UrbanRural])

---HHPaidWorkProp
use NSRSOK
Go
Update [NASARAWA_STATE_HHHeads_Details_01052018]set  [HHPaidWorkProp]= (Select  count(b3labour) 
from [NASARAWA_STATE_NSR]
where [NASARAWA_STATE_NSR].[instanceID] = [NASARAWA_STATE_HHHeads_Details_01052018].[instanceID] and 
b3labour=1 Group by [HHNSRRNO],[Zone],[State],[LGA],[Ward],[Community],[UrbanRural])

---HHSelfEmpProp
use NSRSOK
Go
Update [NASARAWA_STATE_HHHeads_Details_01052018]set  [HHSelfEmpProp]= (Select  count([b4labour]) 
from [NASARAWA_STATE_NSR]
where [NASARAWA_STATE_NSR].[instanceID] = [NASARAWA_STATE_HHHeads_Details_01052018].[instanceID] and 
[b4labour]=1 Group by [HHNSRRNO],[Zone],[State],[LGA],[Ward],[Community],[UrbanRural])


--Update NUll values in HHHeadDetails Table
use NSRSOK
Go
update [NASARAWA_STATE_HHHeads_Details_01052018]set [HHSelfEmpProp]=0 where [HHSelfEmpProp] is  null
update [NASARAWA_STATE_HHHeads_Details_01052018]set [HHPaidWorkProp]=0 where [HHPaidWorkProp] is  null
update [NASARAWA_STATE_HHHeads_Details_01052018]set [NoOfSpouse]=0 where [NoOfSpouse] is  null
update [NASARAWA_STATE_HHHeads_Details_01052018]set [HHAgricProp]=0 where [HHAgricProp] is  null
update [NASARAWA_STATE_HHHeads_Details_01052018]set [NoCurrentlyEnrScl]=0 where [NoCurrentlyEnrScl] is  null





  -----Generate PMT Scores for the HHs using HHHeads_Details Table Generated Above
use NSRSOK
Go
SELECT DISTINCT 
			    [HHNSRRNO],[HHMNSRRNO]
			   ,Zone
			   ,[State]
			   ,LGA
			   ,Ward
			   ,Community
			   ,UrbanRural
			   ,HHH_Surname
			   ,HHH_Firstname
			   ,HHH_Othername
			   ,[M_Name]
			   ,[Sex]
			   ,TelephoneNo
			   ,[geopointLatitude]
			   ,[geopointLongitude]
			   ,[geopointAltitude]
			   ,[geopointAccuracy]
			   ,ROUND(EXP(11.792
			   +((CASE WHEN [HHSize] IS NOT NULL  THEN - 0.398 * CAST([HHSize] AS float) ELSE 0 END) 
			   + (CASE WHEN [HHSize] IS NOT NULL THEN 0.023 * CAST(SQUARE([HHSize]) AS float) ELSE 0 END)
			   + (CASE WHEN [HHSize] IS NOT NULL AND ([HHSize] BETWEEN 10 AND 17) THEN -0.017 * CAST(SQUARE([HHSize]) AS float) ELSE 0 END) 
			   + (CASE WHEN [AgeY] IS NOT NULL  THEN 0.001 * CAST([AgeY] AS float) ELSE 0 END)
                         
			   + (CASE WHEN [EducationalQualification] = 2 OR [EducationalQualification] = 3 OR [EducationalQualification] = 4  THEN +0.071 * 1 
					   WHEN [EducationalQualification] = 5 OR [EducationalQualification] = 6  THEN 0.065 * 1 
					   WHEN [EducationalQualification] = 7 OR [EducationalQualification] = 8 OR [EducationalQualification] = 9 OR [EducationalQualification] = 10 THEN 0.062 * 1 
					   WHEN [EducationalQualification] = 11 OR [EducationalQualification] = 12  THEN 0.123 * 1 ELSE 0 END) 

			   + (CASE WHEN [b5labour] = 4 AND [Sex] = 1  THEN -0.041 * 1 
					   WHEN [b5labour] = 1 AND [Sex] = 1  THEN +0.007 * 1 
					   WHEN [b5labour] = 5 AND [Sex] = 1  THEN -0.098 * 1 
					   WHEN [b5labour] = 4 AND [Sex] = 2  THEN -0.027 * 1 
					   WHEN [b5labour] = 1 AND [Sex] = 2  THEN -0.055 * 1
					   WHEN [b5labour] IN (2, 3, 6, 7, 8, 9, 10, 11, 12, 13) AND [Sex] = 2  THEN -0.097 * 1 
					   WHEN [b5labour] = 5 AND [Sex] = 2 THEN -0.178 * 1 ELSE 0 END) 
						
			   + (CASE WHEN [urbanrural] = 2 AND [zone] = 'NorthEast' THEN +0.061 * 1 
					   WHEN [urbanrural] = 2 AND [zone] = 'NorthWest' THEN +0.100 * 1 
					   WHEN [urbanrural] = 2 AND [zone] = 'SouthEast' THEN +0.079 * 1 
					   WHEN [urbanrural] = 2 AND [zone] = 'SouthSouth' THEN +0.088 * 1 
					   WHEN [urbanrural] = 2 AND [zone] = 'SouthWest' THEN +0.028 * 1 
					   WHEN [urbanrural] = 1 AND [zone] = 'NorthCentral' THEN -0.080 * 1 
					   WHEN [urbanrural] = 1 AND [zone] = 'NorthEast' THEN -0.127 * 1 
					   WHEN [urbanrural] = 1 AND [zone] = 'NorthWest' THEN -0.165 * 1 
					   WHEN [urbanrural] = 1 AND [zone] = 'SouthEast' THEN +0.144 * 1 
					   WHEN [urbanrural] = 1 AND [zone] = 'SouthSouth' THEN +0.076 * 1 
					   WHEN [urbanrural] = 1 AND [zone] = 'SouthWest' THEN -0.047 * 1 ELSE 0 END) 
                         
			   + (CASE WHEN [Roof_Dwelling] = 3 THEN -0.011 * 1 WHEN [Roof_Dwelling] = 5 THEN -0.105 * 1 ELSE 0 END) 
			   + (CASE WHEN [Cook_dwelling] = 1 THEN -0.104 * 1 WHEN [Cook_dwelling] = 4 THEN +0.286 * 1 ELSE 0 END)
			   + (CASE WHEN [Sofa] IS NOT NULL AND [Sofa] = 1 THEN 0.086 * 1 ELSE 0 END) 
			   + (CASE WHEN [Table] IS NOT NULL AND [Table] = 1 THEN -0.008 * 1 ELSE 0 END)
			   + (CASE WHEN [Bed] IS NOT NULL AND [Bed] = 1 THEN -0.017 * 1 ELSE 0 END) 
			   + (CASE WHEN [Kerosenestove] IS NOT NULL AND [Kerosenestove] = 1 THEN 0.037 * 1 ELSE 0 END) 
			   + (CASE WHEN [Refrigerator] IS NOT NULL AND [Refrigerator] = 1 THEN 0.085 * 1 ELSE 0 END)
			   + (CASE WHEN [freezer] IS NOT NULL AND [freezer] = 1 THEN 0.090 * 1 ELSE 0 END)
			   + (CASE WHEN [Air_conditioner] IS NOT NULL AND [Air_conditioner] = 1 THEN 0.155 * 1 ELSE 0 END)
			   + (CASE WHEN [Hifi] IS NOT NULL AND [Hifi] = 1 THEN 0.080 * 1 ELSE 0 END)
			   + (CASE WHEN [Video_dvd] IS NOT NULL AND [Video_dvd] = 1 THEN 0.073 * 1 ELSE 0 END) 
			   + (CASE WHEN [Television] IS NOT NULL AND [Television] = 1 THEN 0.016 * 1 ELSE 0 END)
			   + (CASE WHEN [Generator] IS NOT NULL AND [Generator] = 1 THEN 0.044 * 1 ELSE 0 END)
			   + (CASE WHEN [Iron_charcoal] IS NOT NULL AND [Iron_charcoal] = 1 THEN 0.005 * 1 ELSE 0 END) 
			   + (CASE WHEN [Computer] IS NOT NULL AND [Computer] = 1 THEN 0.084 * 1 ELSE 0 END)
			   + (CASE WHEN [LandPhone] IS NOT NULL AND [LandPhone] = 1 THEN 0.049 * 1 ELSE 0 END) 
			   + (CASE WHEN [MobilePhone] IS NOT NULL AND [MobilePhone] = 1 THEN 0.033 * 1 ELSE 0 END)
			   + (CASE WHEN [Motocycle] IS NOT NULL AND [Motocycle] = 1 THEN 0.010 * 1 ELSE 0 END)
			   + (CASE WHEN ([LandforHousing] IS NOT NULL AND [LandforHousing] = 1) OR ([farmland] IS NOT NULL AND [farmland] = 1) THEN 0.047 * 1 ELSE 0 END)
			   + (CASE WHEN [Boat] IS NOT NULL AND [Boat] = 1 THEN -0.131 * 1 ELSE 0 END) 
			   + (CASE WHEN [Canoe] IS NOT NULL AND [Canoe] = 1 THEN 0.254 * 1 ELSE 0 END) 
			   + (CASE WHEN [Num_room] IS NOT NULL THEN 0.048 * CAST([Num_room] AS float) ELSE 0 END) 
			   + (CASE WHEN [floor_dwelling] IS NOT NULL AND [floor_dwelling] = 4 THEN 0.075 * 1 ELSE 0 END)
			   + (CASE WHEN [Drink_dwelling] = 1 OR [Drink_dwelling] = 2 THEN +0.108 * 1 ELSE 0 END)
			   + (CASE WHEN [Drink_dwelling] = 13 OR [Drink_dwelling] = 14 THEN +0.133 * 1 ELSE 0 END)
			   + (CASE WHEN [Toilet_dwelling] IS NOT NULL AND [Toilet_dwelling] = 2 THEN 1 ELSE 0 END)
			   + (CASE WHEN [light_dwelling] IS NOT NULL AND [light_dwelling] = 3 THEN +0.062 * 1 ELSE 0 END )
			   
			  +(CASE WHEN [b2labour] IS NOT NULL THEN -0.036 * CAST([HHAgricProp]/[HHSize] AS float) ELSE 0 END) 
			   +(CASE WHEN [b4labour] IS NOT NULL  THEN +0.075 * CAST([HHSelfEmpProp]/[HHSize] AS float) ELSE 0 END)

			   +(CASE WHEN b3labour IS NOT NULL  THEN +0.096 * CAST([HHPaidWorkProp]/[HHSize] AS float) ELSE 0 END)

			   +(CASE WHEN [NoOfSpouse] IS NOT NULL  THEN -0.011 * CAST([NoOfSpouse] AS float) ELSE 0 END)
			   +(CASE WHEN [CurrentlyEnrolledinSchl] IS NOT NULL  THEN +0.076 * CAST([NoCurrentlyEnrScl]/[HHSize] AS float) ELSE 0 END)
			   
			   )),2) AS PMT_1
		   into [NASARAWA_STATE_HHs_pmtScore__01052018]   
           FROM [NASARAWA_STATE_HHHeads_Details_01052018]
		   group by [HHNSRRNO],[HHMNSRRNO],[Zone],[State],[LGA],[Ward],[Community],[UrbanRural],[HHNO],[MNO],[HHH_Surname],[HHH_Firstname],[HHH_Othername]
		   ,[M_Name],[Sex],[Relationship],[AgeY],[AgeM],[BirthCertificate],[MaritalStatus]
		   ,[b2labour],[b3labour],[b4labour],[b5labour],[b5labour_other],[EducationalQualification]
		   ,[CurrentlyEnrolledinSchl],[Grade],[HowfarisSchoolEnrolled],[c6apregnantlactating],[BenefitfromHealthcare]
		   ,[Benefitwhy],[Benefitwhy_Other],[Howfarishealthcentre],[Chronicallyill],[Disability],[Typeofdisability],[Cooperative]
		   ,[ReligiousGroup],[BusinessGroup],[AgeGroup],[TelephoneNo],[HHAddress],[HHSize]
		   ,[Radio],[Touchlight],[kerosenestove],[Television],[MobilePhone],[LandPhone],[HouseCurrent],[HouseElsewhere],[LandforHousing],[Farmland]
		   ,[Bird],[Goat],[Cattle],[Bicycle],[Motocycle],[Car],[Canoe],[Boat],[Video_dvd],[Generator],[Iron_Electric],[Iron_Charcoal],[Fan],[Air_Conditioner],[Refrigerator]
		   ,[Freezer],[Sofa],[Table],[Hifi],[Mattress],[Bed],[Computer],[Wash_Machine],[Radio_num],[touchlight_num],[Kerosenestove_num],[Television_num],[MobilePhone_num]
		   ,[LandPhone_num],[HouseCurrent_num],[HouseElsewhere_num],[LandforHousing_num],[Farmland_num],[Birdn],[Goatn],[Cattlen],[Bicycle_num],[Motocycle_num],[Car_num]
		   ,[Canoe_num],[Boat_num],[Video_dvdn],[Generator_num],[Iron_electricn],[Iron_charcoaln],[Fan_num],[Air_conditionern],[Refrigerator_num],[Freezer_num],[Sofan]
		   ,[Tablen],[Hifi_num],[Mattress_num],[Bed_num],[Computer_num],[Wash_machinen],[Roof_Dwelling],[roof_dwelling_other],[floor_dwelling],[floor_dwelling_other]
		   ,[light_dwelling],[light_dwelling_other],[Cook_dwelling],[cook_dwelling_other],[Drink_dwelling],[Drink_dwelling_other],[Toilet_dwelling],[Toilet_dwelling_other]
		   ,[DeviceType_dwelling],[DeviceType_dwelling_Other],[Num_room],[geopointLatitude],[geopointLongitude],[geopointAltitude],[geopointAccuracy],[instanceID],[NoCurrentlyEnrScl]
		   ,[NoOfSpouse],[HHAgricProp],[HHPaidWorkProp],[HHSelfEmpProp]






--- Add Decile Marks to Pmt Table
use NSRSOK
Go
Alter Table [NASARAWA_STATE_HHs_pmtScore__01052018] add [Decile_1] nvarchar(5) null

--- Add Decile Marks to Pmt Table
use NSRSOK
Go
update [NASARAWA_STATE_HHs_pmtScore__01052018] set [Decile_1]= (CASE 
                       WHEN [PMT_1] <=16850.06 THEN '1st'
					   WHEN [PMT_1] > 16850.06 and [PMT_1]<=23523.28 THEN '2nd'
					   WHEN [PMT_1] > 23523.28 and [PMT_1]<=30114.46 THEN '3rd'
					   WHEN [PMT_1] > 30114.46 and [PMT_1]<=37680.73 THEN '4th'
					   WHEN [PMT_1] > 37680.73 and [PMT_1]<=46712.68 THEN '5th'
					   WHEN [PMT_1] > 46712.68 and [PMT_1]<=58566.13 THEN '6th'
					   WHEN [PMT_1] > 58566.13 and [PMT_1]<=74911.63 THEN '7th'
					   WHEN [PMT_1] > 74911.63 and [PMT_1]<=101937.60 THEN '8th' 
					   WHEN [PMT_1] > 101937.60 and [PMT_1]<=153708.30 THEN '9th' ELSE '10th' END) 

--Merge hhspmt with member table
use NSRSOK
GO
SELECT DISTINCT
       H.[HHNSRRNO]
      ,H.[HHMNSRRNO]
      ,H.[Zone]
      ,H.[State]
      ,H.[LGA]
      ,H.[Ward]
      ,H.[Community]
      ,H.[UrbanRural]
      ,H.[HHNO]
      ,H.[MNO]
      ,H.[HHH_Surname]
      ,H.[HHH_Firstname]
      ,H.[HHH_Othername]
      ,H.[M_Name]
      ,H.[Sex]
      --,H.[AgeY]
      ,H.[Relationship]
     -- ,H.[Relationship_Other]
      ,H.[AgeY]
      ,H.[AgeM]
      ,H.[BirthCertificate]
      ,H.[MaritalStatus]
     -- ,H.[MaritalStatus_Other]
      --,H.[HasPhoneNo]
      --,H.[WhatNo]
      ,H.[b2labour]
      ,H.[b3labour]
      ,H.[b4labour]
      ,H.[b5labour]
      --,H.[b5labour_other]
      ,H.[EducationalQualification]
      --,H.[EducationalQualification_Other]
      ,H.[CurrentlyEnrolledinSchl]
      ,H.[Grade]
      --,H.[Grade_Other]
      ,H.[HowfarisSchoolEnrolled]
      ,H.[c6apregnantlactating]
     -- ,H.[c6bpregnantlactating]
      ,H.[BenefitfromHealthcare]
     -- ,H.[Benefitwhy]
      --,H.[Benefitwhy_Other]
      ,H.[Howfarishealthcentre]
      ,H.[Chronicallyill]
      ,H.[Disability]
      ,H.[Typeofdisability]
      --,H.[Typeofdisability_Other]
      ,H.[Cooperative]
      ,H.[ReligiousGroup]
      ,H.[BusinessGroup]
      ,H.[AgeGroup]
      --,H.[SocialNetwork_Others]
     -- ,H.[Consent]
      ,H.[TelephoneNo]
     -- ,H.[PhoneNo]
      ,H.[HHAddress]
      ,H.[HHSize] as [HHSize]
     -- ,H.[InterviewDate]
      ,H.[Radio]
      ,H.[Touchlight]
      ,H.[kerosenestove]
      ,H.[Television]
      ,H.[MobilePhone]
      ,H.[LandPhone]
      ,H.[HouseCurrent]
      ,H.[HouseElsewhere]
      ,H.[LandforHousing]
      ,H.[Farmland]
      ,H.[Bird]
      ,H.[Goat]
      ,H.[Cattle]
      ,H.[Bicycle]
      ,H.[Motocycle]
      ,H.[Car]
      ,H.[Canoe]
      ,H.[Boat]
      ,H.[Video_dvd]
      ,H.[Generator]
      ,H.[Iron_Electric]
      ,H.[Iron_Charcoal]
      ,H.[Fan]
      ,H.[Air_Conditioner]
      ,H.[Refrigerator]
      ,H.[Freezer]
      ,H.[Sofa]
      ,H.[Table]
      ,H.[Hifi]
      ,H.[Mattress]
      ,H.[Bed]
      ,H.[Computer]
      ,H.[Wash_Machine]
      ,H.[Radio_num]
      ,H.[touchlight_num]
      ,H.[Kerosenestove_num]
      ,H.[Television_num]
      ,H.[MobilePhone_num]
      ,H.[LandPhone_num]
      ,H.[HouseCurrent_num]
      ,H.[HouseElsewhere_num]
      ,H.[LandforHousing_num]
      ,H.[Farmland_num]
      ,H.[Birdn]
      ,H.[Goatn]
      ,H.[Cattlen]
      ,H.[Bicycle_num]
      ,H.[Motocycle_num]
      ,H.[Car_num]
      ,H.[Canoe_num]
      ,H.[Boat_num]
      ,H.[Video_dvdn]
      ,H.[Generator_num]
      ,H.[Iron_electricn]
      ,H.[Iron_charcoaln]
      ,H.[Fan_num]
      ,H.[Air_conditionern]
      ,H.[Refrigerator_num]
      ,H.[Freezer_num]
      ,H.[Sofan]
      ,H.[Tablen]
      ,H.[Hifi_num]
      ,H.[Mattress_num]
      ,H.[Bed_num]
      ,H.[Computer_num]
      ,H.[Wash_machinen]
      ,H.[Roof_Dwelling]
      ,H.[roof_dwelling_other]
      ,H.[floor_dwelling]
      ,H.[floor_dwelling_other]
      ,H.[light_dwelling]
      ,H.[light_dwelling_other]
      ,H.[Cook_dwelling]
      ,H.[cook_dwelling_other]
      ,H.[Drink_dwelling]
      ,H.[Drink_dwelling_other]
      ,H.[Toilet_dwelling]
      ,H.[Toilet_dwelling_other]
      ,H.[DeviceType_dwelling]
      ,H.[DeviceType_dwelling_Other]
      ,H.[Num_room]
      ,H.[geopointLatitude]
      ,H.[geopointLongitude]
      ,H.[geopointAltitude]
      ,H.[geopointAccuracy]
      ,H.[instanceID]
     --,H.[KEY]
      ,P.[PMT_1]
      ,P.[Decile_1]
  INTO [NASARAWA_STATE_NSR_UPD]
  FROM [NSRSOK].[dbo].[NASARAWA_STATE_NSR] H
  INNER JOIN [NASARAWA_STATE_HHs_pmtScore__01052018] P ON H.[HHNSRRNO] = P.[HHNSRRNO]  and H.[Zone] = P.[Zone] and H.[State]=P.[State] and H.[Community]=P.[Community]	and H.UrbanRural=P.UrbanRural
  