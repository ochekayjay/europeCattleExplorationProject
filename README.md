# europeCattleExplorationProject

This project Includes data exploration in the UK for cattle grooming covering important features in the sector like the plants, throughputs, percentage throughput, illness, mortality rate etc.

📌 Project Overview

This project highlightes on building a batch data pipeline for analyzing cattle reposited dataset in the UK. The goal is to extract,load  and transform(ELT) the dataset using Kestra, postgreSQL, docker, and BigQuery for further analysis in Looker Studio. The project explores various core aspects surrounding the nurture and nature of cattle breeding and gives important insights to government agencies on how to manage disease outbreak, cattle breeders on what type of cattle is commercially viable per region and the quality of plants per region for technical investors, it follows best practices learned in the DataTalksClub Data Engineering Zoomcamp 2025.

🔍 Objectives

Automate batch data ingestion using python script in kestra.
Store raw data in Google cloud Storage.
Normalize and Partition the data by date in bigQuery data warehouse.
Load processed data into BigQuery for analysis.
Create dbt models to further draw insights in automated fashion from the persisted dataset in bigquery.
Create SQL queries and dashboards to generate insights on looker studio.
📂 Repository Structure

├── workflow/
1. mainflow.yml => ingestion scripts to extract, data normalization, and load in google cloud storage and later into bigquery.
2. projectOnboard.yml => Stores google cloud storage and bigquery credentials into temporary memory in kestra environment.
├── DBT/ # includes data transformation sscripts synced with the data warehouse for automated transformation.
├── images/ # Dashboards & reports
├── README.md # Project documentation
📊 Dataset

Source: Cattle Condition research in the UK dataset from: here (https://www.data.gov.uk/dataset/d29ae5a8-8971-4af0-9935-91f87a809e5a/cattle-conditions)
Format: CSV
Fields: Species, Inspection Type, Condition, Throughput, PercentageThroughput etc.
Frequency: Static dataset (one-time load) 📊 Dataset Details
Source: data.gov.uk
Data Collection: Downloaded in loops from the api ochestrated by a cron job
Time Period: Data collected for 3 years at every 3months interval (Apr 2018 - Dec 2020)
Total Records: 5,115 individual records.

🔬 Research Questions
(all of these research questions are expressed in the DBT model folder)
- How is the monthly count of conditions per region and species, including condition rate as a percentage of throughput.
- Identify the most frequent health/welfare conditions per country and species across all months. Useful for policy focus and inspections.
- Monitor how active throughput plants are in each country over time and their average processing load



⚙️ Technologies Used

Kestra (task automation tool with a cron job option)
Google Cloud Storage (raw data storage)
BigQuery (data warehousing & querying)
DBT ( streamline and automate the data transformation process within a data warehouse)
Looker Studio (visualization & reporting)
🔄 Batch Processing Pipeline

Extract Data: dlt downloads the dataset from Kaggle.
Store Raw Data: Data is stored in DuckDB.
Transform Data: pandas cleans and processes the data (e.g., date formatting, price conversions, stop count normalization, etc).
Load into BigQuery: Processed data is stored for querying.
Analyze & Visualize: SQL queries + Looker Studio dashboards for insights.
📊 Data Warehouse Optimization

Partitioning: Based on flight date to improve query performance.

About
Batch Processing Project


