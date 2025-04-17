# europeCattleExplorationProject

Flight Price Prediction
Batch Processing Project
Data Ingestion with dlt
📌 Project Overview

This project focuses on building a batch data pipeline for analyzing a flight booking dataset. The goal is to extract, transform, and load (ETL) the dataset using dlt, DuckDB, pandas, and BigQuery for further analysis in Looker Studio. The project follows best practices learned in the DataTalksClub Data Engineering Zoomcamp 2025.

🔍 Objectives

Automate batch data ingestion using dlt.
Store raw data in DuckDB.
Perform data transformations using pandas.
Load processed data into BigQuery for analysis.
Create SQL queries and dashboards to generate insights.
📂 Repository Structure

├── code/
1. dlt ingestion scripts to extract, transform, and load in a data lake(duckdb)
2. pandas data cleaning and preparation scripts for analyzing
3. dlt scripts to load cleaned data from the data lake to a data warehouse(BigQuery)
├── data/ # sample of datasets
├── dashboards/ # Dashboards & reports
├── README.md # Project documentation
📊 Dataset

Source: Flight Price Prediction dataset from: here
Format: CSV
Fields: Airline, Date, Time, Price, Class (Economy/Business), Stops, etc.
Frequency: Static dataset (one-time load) 📊 Dataset Details
Source: Ease My Trip website
Data Collection: Web scraping using Octoparse
Time Period: Data collected over 50 days (Feb 11 - Mar 31, 2022)
Total Records: 300,261 flight booking options
Categories: Economy and Business class tickets
🔬 Research Questions

Does price vary with Airlines?
How is the price affected when tickets are bought just 1 or 2 days before departure?
Does ticket price change based on departure and arrival times?
How does the price change with different Source and Destination cities?
How does ticket price vary between Economy and Business class?
⚙️ Technologies Used

dlt (data ingestion from Kaggle to DuckDB)
DuckDB (temporary storage & processing)
pandas (data transformation & cleaning)
BigQuery (data warehousing & querying)
Looker Studio (visualization & reporting)
🔄 Batch Processing Pipeline

Extract Data: dlt downloads the dataset from Kaggle.
Store Raw Data: Data is stored in DuckDB.
Transform Data: pandas cleans and processes the data (e.g., date formatting, price conversions, stop count normalization, etc).
Load into BigQuery: Processed data is stored for querying.
Analyze & Visualize: SQL queries + Looker Studio dashboards for insights.
📊 Data Warehouse Optimization

Partitioning: Based on flight date to improve query performance.
Clustering: By Airline & Class to optimize analytics.
About
Batch Processing Project

Resources
 Readme
 Activity
Stars
 0 stars
Watchers
 1 watching
Forks
 0 forks
Report repository
Releases
No releases published
Packages
No packages published
Languages
Jupyter Notebook
100.0%
Footer
