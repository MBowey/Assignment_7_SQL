# Unit 7 Homework Assignment: Looking for Suspicious Transactions

### Data Analysis
#### Part 1:

The CFO of your firm has requested a report to help analyze potential fraudulent transactions. Using your newly created database, generate queries that will discover the information needed to answer the following questions, then use your repository's ReadME file to create a markdown report you can share with the CFO:

* Some fraudsters hack a credit card by making several small transactions (generally less than $2.00), which are typically ignored by cardholders. 

  * How can you isolate (or group) the transactions of each cardholder?

  * Count the transactions that are less than $2.00 per cardholder. 
  
  * Is there any evidence to suggest that a credit card has been hacked? Explain your rationale.
  
      **Yes, there are some credit cards that have mutliple transactions under $2.00 per cardholder**

* Take your investigation a step futher by considering the time period in which potentially fraudulent transactions are made. 

  * What are the top 100 highest transactions made between 7:00 am and 9:00 am?

  * Do you see any anomalous transactions that could be fraudulent?
      **The top 9 out of 100 are suscipicous as they are whole numbers with no cents and they are much larger amounts then the rest.**

  * Is there a higher number of fraudulent transactions made during this time frame versus the rest of the day?
      **Assuming all numbers that don't include cents are fraudulent, then there are 110 fraudulent transactions. Therefore, the 9 that occur between 7am and 9am are not the majority of transactions**

  * If you answered yes to the previous question, explain why you think there might be fraudulent transactions during this time frame.

* What are the top 5 merchants prone to being hacked using small transactions?
    **The top 5 merchants prone to being hacked are Wood-Ramirez, Hood-Philips, Baker Inc. & McDaniel, Hines and Mcfarland**

* Create a view for each of your queries.

    **Please see 'db_views.sql' file**

#### Part 2:

Your CFO has also requested detailed trends data on specific card holders. Use the [starter notebook](Starter_Files/challenge.ipynb) to query your database and generate visualizations that supply the requested information as follows, then add your visualizations and observations to your markdown report:      

* The two most important customers of the firm may have been hacked. Verify if there are any fraudulent transactions in their history. For privacy reasons, you only know that their cardholder IDs are 2 and 18.

  * Using hvPlot, create a line plot representing the time series of transactions over the course of the year for each cardholder separately. 
  
  * Next, to better compare their patterns, create a single line plot that contains both card holders' trend data.  

  * What difference do you observe between the consumption patterns? Does the difference suggest a fraudulent transaction? Explain your rationale.

* The CEO of the biggest customer of the firm suspects that someone has used her corporate credit card without authorization in the first quarter of 2018 to pay quite expensive restaurant bills. Again, for privacy reasons, you know only that the cardholder ID in question is 25.

  * Using Plotly Express, create a box plot, representing the expenditure data from January 2018 to June 2018 for cardholder ID 25.
  
  * Are there any outliers for cardholder ID 25? How many outliers are there per month?

    **Yes, there are 9 outliers that are much larger amounts. On average there are 1.5 outliers per month.**


    


