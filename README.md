# ETL-Project Documentation:

## Resources:
  
  * Retail Data Analytics: https://www.kaggle.com/manjeetsingh/retaildataset
       
       *  dd

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
	  * Strip Date From Sales Table:
		  * Index (Group By) Date
		  
		  * Total Weekly Sales: Across all stores and depts
      
  * Rename Columns: (Z)
		* MarkDown1 ---> Mark_Down_1
    
  * New Table: Join: On Store # (P)
	  * From Sales Table:
		  * Store #
		  * Dept #
		  * Date
		  * Weekly Sales
	
	  * From Features Table:
		  * Markdowns

## Load:

    * Non-Relational MongoDB
    
    * Relational PostgreSQL
