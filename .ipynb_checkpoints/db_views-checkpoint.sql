-- Return all rows and columns for transactions with
-- transaction amounts less than $2.00
CREATE VIEW small_transactions AS
SELECT *
FROM "Transactions"
WHERE "amount" < 2;


-- Count the total number of transactions under $2.00
CREATE VIEW total_small_transactions AS
SELECT COUNT(amount) 
FROM "Transactions"
WHERE "amount" < 2;


-- Count the number of transactions under $2.00 per credit card
SELECT card, COUNT(card) AS "total_transactions"
FROM "Transactions"
WHERE "amount" < 2
GROUP BY card;

SELECT *
FROM total_small_transactions;

-- What are the top 100 highest transactions made between 7:00Am and 9:00AM?
SELECT *
FROM "Transactions"
WHERE CAST(date as TIME) BETWEEN '07:00:00' and '09:00:00'
ORDER BY "amount" DESC
LIMIT 100
;

-- What are the top 5 merchants prone to being hacked using small transactions?
SELECT 
	"Merchant".merchant_name AS merchant_name,
	COUNT("Transactions".merchant_id) AS "total_small_transactions"
	
FROM "Transactions"
JOIN "Merchant" ON "Transactions".merchant_id="Merchant".merchant_id
WHERE amount < 2
GROUP BY "Merchant".merchant_name
ORDER BY "total_small_transactions" DESC
LIMIT 5;


