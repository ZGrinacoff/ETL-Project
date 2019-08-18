# ETL-Project Documentation:

## Resources:
  
  * Retail Data Analytics: https://www.kaggle.com/manjeetsingh/retaildataset
       
       * Features Data Set ---> Features data set.csv
       * Holidays Data Set ---> holidays.csv
       * Sales Data Set ---> sales data-set.csv
       * Stores Data Set ---> stores data-set.csv
      
## MongoDB ETL:

  * MongoDB ETL Technical Summary Write-Up ---> Walmart MongoDB ETL Doc.docx
  
  * MongoDB ETL Jupyter Notebook ---> weeklysales_markdown_mongodb.ipynb
      
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
