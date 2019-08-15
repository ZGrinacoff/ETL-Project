# ETL-Project

## Data Sources:

  * Walmart Recruiting - Store Sales Forecasting: https://www.kaggle.com/c/walmart-recruiting-store-sales-forecasting/data
  
  * Retail Data Analytics: https://www.kaggle.com/manjeetsingh/retaildataset

## DB's used:

  * Non-Relational MongoDB for custom tables

  * Relational QuickDB Schema w/ Diagram for PostgreSQL: original csvs + holidays. 
  
      * Explain why holidays table was created. Used to reference which holiday it happened to be for given date.
      
## Extraction:

  * CSV to DF for original tables + holidays table. 
      
## Transformation:

  * Markdown Field: Convert NaN to zero value (P)

  * Reformat Dates (Z - PostgreSQL Only) ---> yyyy/mm/dd
  
  * Round Floats (Z)
  
  * New Table: (P)
	  * Strip Date From Sales Table: Year Only
		  * Index (GB) Year
		  * Total Sales
      
  * Rename Columns: (Z)
		* MarkDown1 ---> Mark_Down_1
    
  * New Table: Join: On Store # (P)
	  * From Sales Table:
		  * Store #
		  * Dept #
		  * Date
		  * Weekly Sales
      		  * IsHoliday
	
	  * From Features Table:
		  * Markdowns

## Load:

    * Non-Relational MongoDB
    
    * Relational PostgreSQL
