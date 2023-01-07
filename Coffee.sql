----Selecting everything from the coffee datatbase
SELECT *
FROM ['coffee-listings-from-all-walmar$']

-----Figuring out all the Coffee types-----DATA VIZULIZATION
SELECT DISTINCT coffee_type
FROM ['coffee-listings-from-all-walmar$']

----------Figuring out all the Coffee Titles-----DATA VIZULIZATION
SELECT DISTINCT title
FROM ['coffee-listings-from-all-walmar$']

--------Removing All The Duplicates And Retrieving The Distinct Values In The Sellers Name Column
SELECT DISTINCT seller_name
FROM ['coffee-listings-from-all-walmar$']

------------------------Total Number Of Seller Reviews----------------(DATA VIZULIZATION)
SELECT SUM(reviews) AS total_#_of_seller_reviews, seller_name
FROM ['coffee-listings-from-all-walmar$']
GROUP BY seller_name
ORDER BY 1 DESC

-------What coffee title has the most reviews-------(Data Vizulization)
SELECT SUM(reviews) AS Coffee_Title_Review, title
FROM ['coffee-listings-from-all-walmar$']
GROUP BY title
ORDER BY 1 DESC

-------What coffee title has the most rating-----(Data Vizulization)
SELECT DISTINCT title, rating
FROM ['coffee-listings-from-all-walmar$']
ORDER BY 2 DESC

SELECT DISTINCT title
FROM ['coffee-listings-from-all-walmar$']

------Getting rid of the nulls in the coffee type column to get better understanding of the data
DELETE FROM ['coffee-listings-from-all-walmar$']
WHERE coffee_type IS NULL;

SELECT DISTINCT coffee_type
FROM ['coffee-listings-from-all-walmar$']

----The Most Poular Coffee Type----(Data Vizulization)
SELECT DISTINCT coffee_type, rating
FROM ['coffee-listings-from-all-walmar$']
ORDER BY rating DESC

----------Whats The Highest Coffee Price-----(Data Vizulization)
SELECT coffee_type, title, seller_name, price
FROM ['coffee-listings-from-all-walmar$']
ORDER BY price DESC

------Does a higher weight in coffee contributes to a increase in price?-------My conclusion is weight doesnt affect price
SELECT coffee_type, title, price, weight_formatted_to_gramms
FROM  ['coffee-listings-from-all-walmar$']
ORDER BY 4 DESC

------What's The Highest Coffee weight?-------The Highest Coffee Weight Is 2835 grams
SELECT coffee_type, title, weight_formatted_to_gramms
FROM  ['coffee-listings-from-all-walmar$']
ORDER BY 3 DESC


