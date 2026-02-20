# Customer Purchase Behaviour & Sentiment Analysis

## Project Overview
The objective of this project is to analyze **customer purchase behavior** and **review sentiment** to understand customer satisfaction levels, product perception, and engagement trends.

By identifying patterns in how customers interact with products and how their feedback reflects their overall experience, this analysis supports **data-driven business decision-making** and **service improvement**.

---

## Tools & Technologies

### Programming & Database
- **Python** — Data cleaning, preparation, and visualization
- **PostgreSQL** — SQL analysis and business insight extraction

### Key Libraries
- **Pandas & NumPy** — Data manipulation and processing
- **TextBlob & NLTK** — Natural Language Processing and sentiment scoring
- **Matplotlib & Seaborn** — Statistical visualization
- **Contractions & re** — Text cleaning and contraction expansion

---

## Project Workflow

### 1️⃣ Data Cleaning
- Expanded contractions in review text
- Removed special characters and noise
- Removed stopwords while preserving negation words  
  *(e.g., "not", "no", "can't") to maintain sentiment accuracy*

### 2️⃣ Sentiment Scoring
- Used **TextBlob** polarity scoring:
  - `+1` → Positive sentiment
  - `0` → Neutral sentiment
  - `−1` → Negative sentiment

### 3️⃣ SQL Analysis
- Executed queries to:
  - Calculate sentiment distribution counts
  - Identify average satisfaction scores per product
  - Analyze temporal sentiment trends

### 4️⃣ Visualization
- Generated charts including:
  - Sentiment distribution
  - Monthly sentiment trends
  - Customer engagement patterns

---

## Key Insights

### Overall Sentiment Distribution
- **Positive Reviews:** 66.6%
- **Negative Reviews:** 17.4%
- **Neutral Reviews:** 16.0%

### Top Products
- **Highest Positive Review Volume**
  - Product IDs **279** and **252** (14 positive reviews each)

- **Highest Average Sentiment Score**
  - Product ID **209** with a score of **0.64**

### Temporal Trends
- Sentiment peaked in **July 2023**
- Significant decline observed in **November 2023**

### Day-wise Sentiment
- Highest average sentiment: **Wednesday (0.36)**
- Lowest average sentiment: **Sunday (0.16)**

### Customer Engagement
- Most reviews are concise
- Typical review length: **3–8 words**

---

## 🎯 Project Outcomes
- Converted raw customer reviews into actionable insights
- Identified product performance trends
- Measured customer satisfaction using sentiment analysis
- Demonstrated integration of **Python + SQL analytics workflow**
