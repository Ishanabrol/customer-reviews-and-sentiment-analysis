
SELECT * FROM customer_reviews
LIMIT 10;

-- SECTION 1 — OVERALL SENTIMENT INSIGHTS

-- Q1 What is the distribution of customer sentimnent?
-- Objective: Identify whether customers are mostly happy, neutral, or unhappy.
select "SentimentLabel",
count(*) as total_reviews
from customer_reviews
group by "SentimentLabel"
order by total_reviews DESC;

-- Q2 What is the overall average sentiment score?
-- Objective: Measure overall customer satisfaction level.
select avg("SentimentScore") as avg_sentiment_score
from customer_reviews;

-- Q3 What percentage of reviews fall under each sentiment category?
-- Objective: Understand propotion of each sentiment type.
select "SentimentLabel",
count(*) * 100.0 / (select count(*) from customer_reviews) as percentage
from customer_reviews
group by "SentimentLabel";

-- SECTION 2 — PRODUCT-LEVEL SENTIMENT ANALYSIS

-- Q4 Which product has the highest number of positive reviews?
-- Objective: Identify top-performing product from customer sentiment perspective.
select "ProductID",
count(*) as positive_reviews
from customer_reviews
where "SentimentLabel" = 'Positive'
group by "ProductID"
order by positive_reviews DESC
limit 1;

-- Q5 — Which product has the highest number of negative reviews?
-- Objective: Identify the most problematic product.
select "ProductID",
count(*) as negative_reviews
from customer_reviews
where "SentimentLabel" = 'Negative'
group by "ProductID"
order by negative_reviews DESC
limit 1;

-- Q6 - Which product have the highest average sentiment score?
-- Objective: Rank products based on highest satisfaction score.
select "ProductID",
AVG("SentimentScore") as avg_sentiment
from customer_reviews
group by "ProductID"
order by avg_sentiment DESC
limit 10;

-- Q7 - Which products have the lowest average sentiment score?
-- Objective: Rank products based on lowest satisfaction score.
select "ProductID",
avg("SentimentScore") as avg_sentiment
from customer_reviews
group by "ProductID"
order by avg_sentiment ASC
limit 10;

-- SECTION 3 — CUSTOMER BEHAVIOR PATTERNS

-- Q7 - Do customers who are unhappy write longer reviews?
-- Objective: Understand emotional expression patterns.
select "SentimentLabel",
avg("ReviewLength") as avg_words
from customer_reviews
group by "SentimentLabel";

-- Q8 - Which weekday receives the most negative vs positive reviews?
-- Objective: Identify customer behavior trends by day.
select "Weekday",
"SentimentLabel",
count(*) as total_reviews
from customer_reviews
group by "Weekday", "SentimentLabel"
order by "Weekday";

-- SECTION 4 — TIME-BASED SENTIMENT TRENDS

-- Q9 - How does sentiment change over time?
-- Objective: Detect improvement or decline trends.
select "Year",
"Month",
avg("SentimentScore") as avg_setiment
from customer_reviews
group by "Year", "Month"
order by "Year", "Month";

-- Q10 — How many reviews were received over time?
-- Objective: Measure customer engagement levels.
select "Year",
"Month",
count(*) as total_reviews
from customer_reviews
group by "Year", "Month"
order by "Year", "Month";