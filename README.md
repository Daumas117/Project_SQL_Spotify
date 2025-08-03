# 📊 Project_SQL_Spotify

![](images/What-is-Spotify-for-Artists__meta.jpg)

_Reviewing the SPOTIFY catalog of Movies and Series using SQL._

---

## 📝 Project Objective


The objective of this project is to **practice SQL** by working with SPOTIFY. The goal is to **clean the data, perform CRUD operations, explore the dataset**, and **extract actionable business insights**.

---

## 🧭 Project Workflow

1. **Database Setup:** Create and populate the SQL database.
2. **CRUD Operations:** Apply Create, Read, Update, Delete operations to manage data.
3. **Data Cleaning:** Ensure data consistency and remove invalid entries.
4. **Exploratory Data Analysis (EDA):** Generate questions and explore the dataset.
5. **Insights Delivery:** Extract and present key business insights.

---

## 📂 Project Files

- **Tool Used:** SQL Server Management Studio (SSMS)
- **SQL Script:** 
- **Dataset Link:** [Movies Dataset](https://www.kaggle.com/datasets/sanjanchaudhari/spotify-dataset)
- **Format**: `.csv`
- **Schema**:
```sql
-- create table
DROP TABLE IF EXISTS spotify;
CREATE TABLE spotify (
    artist VARCHAR(255),
    track VARCHAR(255),
    album VARCHAR(255),
    album_type VARCHAR(50),
    danceability FLOAT,
    energy FLOAT,
    loudness FLOAT,
    speechiness FLOAT,
    acousticness FLOAT,
    instrumentalness FLOAT,
    liveness FLOAT,
    valence FLOAT,
    tempo FLOAT,
    duration_min FLOAT,
    title VARCHAR(255),
    channel VARCHAR(255),
    views FLOAT,
    likes BIGINT,
    comments BIGINT,
    licensed BOOLEAN,
    official_video BOOLEAN,
    stream BIGINT,
    energy_liveness FLOAT,
    most_played_on VARCHAR(50)
);
```
---

## 🛠️ Database Preparation & Cleaning

### ✅ Setting up the Database


## 🔍 Exploratory Data Analysis (EDA)

The goal of this stage is to explore trends and patterns in the dataset that can lead to actionable insights.


## 🎯 Key Findings

- 💡 **[Insight 1]**: 
- 📈 **[Insight 2]**: 
- 🧩 **[Insight 3]**: 

---

## 🧠 Learnings & Challenges

**Learned:**
- H
- I

**Challenges:**
- U
- D
