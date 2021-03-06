/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
       [RegDate]
	  ,[RegDateAc]
	  ,Month([RegDateAc]) as N_Month
	  ,datepart(Quarter, [RegDateAc]) as N_Qter
	  ,Year([RegDateAc]) as N_Year
	  ,[CommodityCode]
	  ,substring([CommodityCode], 1,2) as HS2
	  ,substring([CommodityCode], 1,4) as HS4
      ,len([CommodityCode]) as Code_Length
	  ,[Importer]
      ,[OriginCountry]
      ,[SupplyCountry]
      ,[mass] as Qty
	  ,[CIF_Value_N] as N_Values
      ,[Cost]
      ,[Tax]
      ,[CustomOffice]
    into CommodityDataGent
    FROM [tttt].[dbo].[CommodityData]


	SELECT [RegDate]
      ,[RegDateAc]
      ,[N_Month]
      ,[N_Qter]
      ,[N_Year]
      ,[HS2]
	  ,[CommodityGroupName] as HS2_NAME
      ,[HS4]
	  ,UPPER([CommodityCategoryName]) as HS4_NAME
	  ,[CommodityCode] as HS10
	  ,upper([CommodityName]) as HS10_NAME
      ,[Code_Length]
      ,[Importer]
      ,UPPER([OriginCountry]) as [OriginCountry]
      ,UPPER([SupplyCountry]) as [SupplyCountry]
      ,[Qty]
      ,[N_Values]
      ,[Cost]
      ,[Tax]
      ,[CustomOffice]
  into CommodityDataGentFinal
  FROM [tttt].[dbo].[CommodityDataGent] CD
  JOIN [CommodityGroup]CG ON CD.HS2 = CG.[CommodityGroupCode]
  JOIN [CommodityCategory] DC ON CD.HS4 = DC.[CommodityCategoryCode]
  JOIN [Commodity] C ON CD.[CommodityCode] = C.[CommodityCode1]


 ---Trade Quantity & Values
SELECT [N_Year] ,sum(cast([Qty] as float)) as [Quantity_KG] ,sum(cast([N_Values] as float)) as [Value_N] FROM [CommodityDataGentFinal] where ([HS2_NAME]='RTICLES OF IRON OR STEEL') and ([N_Year] between '2018' and '2020') group by [N_Year] 
SELECT [N_Year],[N_Qter] ,sum(cast([Qty] as float)) as [Quantity_KG] ,sum(cast([N_Values] as float)) as [Value_N] FROM [CommodityDataGentFinal] where ([HS2_NAME]='RTICLES OF IRON OR STEEL') and ([N_Year] between '2018' and '2020') group by [N_Year], [N_Qter] 
SELECT [N_Year], [N_Month] ,sum(cast([Qty] as float)) as [Quantity_KG] ,sum(cast([N_Values] as float)) as [Value_N] FROM [CommodityDataGentFinal] where ([HS2_NAME]='RTICLES OF IRON OR STEEL') and ([N_Year] between '2018' and '2020') group by [N_Year], [N_Month] 
SELECT [N_Year],[N_Month],[N_Qter],sum(cast([Qty] as float)) as [Quantity_KG] ,sum(cast([N_Values] as float)) as [Value_N] FROM [CommodityDataGentFinal] where ([HS2_NAME]='RTICLES OF IRON OR STEEL') and ([N_Year] between '2018' and '2020') group by [N_Year],[N_Month],[N_Qter]

----Importer & Exporter
SELECT [N_Year] ,count([Importer]) as [No of Importer] FROM [CommodityDataGentFinal] where ([HS2_NAME]='RTICLES OF IRON OR STEEL') and ([N_Year] between '2018' and '2020') group by [N_Year] 
SELECT [N_Year],[N_Qter] ,count([Importer]) as [No of Importer] FROM [CommodityDataGentFinal] where ([HS2_NAME]='RTICLES OF IRON OR STEEL') and ([N_Year] between '2018' and '2020') group by [N_Year], [N_Qter] 
SELECT [N_Year], [N_Month] ,count([Importer]) as [No of Importer] FROM [CommodityDataGentFinal] where ([HS2_NAME]='RTICLES OF IRON OR STEEL') and ([N_Year] between '2018' and '2020') group by [N_Year], [N_Month] 
SELECT [N_Year],[N_Month],[N_Qter],count([Importer]) as [No of Importer] FROM [CommodityDataGentFinal] where ([HS2_NAME]='RTICLES OF IRON OR STEEL') and ([N_Year] between '2018' and '2020') group by [N_Year],[N_Month],[N_Qter]

---- Country of Supply
SELECT [N_Year] ,count([SupplyCountry]) as [No of Supply Country] FROM [CommodityDataGentFinal] where ([HS2_NAME]='RTICLES OF IRON OR STEEL') and ([N_Year] between '2018' and '2020') group by [N_Year] 
SELECT [N_Year],[N_Qter] ,count([SupplyCountry]) as [No of Supply Country] FROM [CommodityDataGentFinal] where ([HS2_NAME]='RTICLES OF IRON OR STEEL') and ([N_Year] between '2018' and '2020') group by [N_Year], [N_Qter] 
SELECT [N_Year], [N_Month] ,count([SupplyCountry]) as [No of Supply Country] FROM [CommodityDataGentFinal] where ([HS2_NAME]='RTICLES OF IRON OR STEEL') and ([N_Year] between '2018' and '2020') group by [N_Year], [N_Month] 
SELECT [N_Year],[N_Month],[N_Qter],count([SupplyCountry]) as [No of Supply Country] FROM [CommodityDataGentFinal] where ([HS2_NAME]='RTICLES OF IRON OR STEEL') and ([N_Year] between '2018' and '2020') group by [N_Year],[N_Month],[N_Qter]


---- Country of Origin
SELECT [N_Year] ,count([OriginCountry]) as [No of Country of Origin] FROM [CommodityDataGentFinal] where ([HS2_NAME]='RTICLES OF IRON OR STEEL') and ([N_Year] between '2018' and '2020') group by [N_Year] 
SELECT [N_Year],[N_Qter] ,count([OriginCountry]) as [No of Country of Origin] FROM [CommodityDataGentFinal] where ([HS2_NAME]='RTICLES OF IRON OR STEEL') and ([N_Year] between '2018' and '2020') group by [N_Year], [N_Qter] 
SELECT [N_Year], [N_Month] ,count([OriginCountry]) as [No of Country of Origin] FROM [CommodityDataGentFinal] where ([HS2_NAME]='RTICLES OF IRON OR STEEL') and ([N_Year] between '2018' and '2020') group by [N_Year], [N_Month] 
SELECT [N_Year],[N_Month],[N_Qter],count([OriginCountry]) as [No of Country of Origin] FROM [CommodityDataGentFinal] where ([HS2_NAME]='RTICLES OF IRON OR STEEL') and ([N_Year] between '2018' and '2020') group by [N_Year],[N_Month],[N_Qter]



Select distinct [SupplyCountry] as [COUNTRY OF SUPPLY] from [CommodityDataGentFinal]  WHERE [SupplyCountry]!='' AND [SupplyCountry] is not null order by [SupplyCountry]
Select distinct [OriginCountry] as [COUNTRY OF ORIGIN] from [CommodityDataGentFinal]  WHERE [OriginCountry]!='' AND [OriginCountry] is not null order by [OriginCountry]