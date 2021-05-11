-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/2BLZAM
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Transaction" (
    "transaction_id" INT   NOT NULL,
    "date" TIMESTAMP   NOT NULL,
    "amount" FLOAT   NOT NULL,
    "card" BIGINT   NOT NULL,
    "merchant_id" INT   NOT NULL,
    CONSTRAINT "pk_Transaction" PRIMARY KEY (
        "transaction_id"
     )
);

CREATE TABLE "Merchant" (
    "merchant_id" INT   NOT NULL,
    "merchant_name" VARCHAR(255)   NOT NULL,
    "category_id" INT   NOT NULL,
    CONSTRAINT "pk_Merchant" PRIMARY KEY (
        "merchant_id"
     )
);

CREATE TABLE "Credit_Card" (
    "cardholder_id" INT   NOT NULL,
    "card" VARCHAR(20)   NOT NULL,
    CONSTRAINT "pk_Credit_Card" PRIMARY KEY (
        "cardholder_id"
     )
);

CREATE TABLE "Cardholder" (
    "cardholder_id" INT   NOT NULL,
    "cardholder_name" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Cardholder" PRIMARY KEY (
        "cardholder_id"
     )
);

CREATE TABLE "Merchant_Category" (
    "category_id" INT   NOT NULL,
    "category" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Merchant_Category" PRIMARY KEY (
        "category_id"
     )
);

ALTER TABLE "Transaction" ADD CONSTRAINT "fk_Transaction_card" FOREIGN KEY("card")
REFERENCES "Credit_Card" ("card");

ALTER TABLE "Transaction" ADD CONSTRAINT "fk_Transaction_merchant_id" FOREIGN KEY("merchant_id")
REFERENCES "Merchant" ("merchant_id");

ALTER TABLE "Merchant" ADD CONSTRAINT "fk_Merchant_category_id" FOREIGN KEY("category_id")
REFERENCES "Merchant_Category" ("category_id");

ALTER TABLE "Credit_Card" ADD CONSTRAINT "fk_Credit_Card_cardholder_id" FOREIGN KEY("cardholder_id")
REFERENCES "Cardholder" ("cardholder_id");

