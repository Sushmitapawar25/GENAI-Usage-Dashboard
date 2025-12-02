# 🤖 GenAI Usage Analytics Dashboard  
*A complete analytics project to track LLM usage, cost, prompts, and user performance using SQL & Power BI.*

---

## 📌 Project Overview  
This project provides a detailed analysis of **Generative AI (LLM) usage** inside an organization.  
The goal is to help teams track:

- Model usage (GPT, Llama, Claude, etc.)  
- Total tokens consumed  
- Prompt/response length behavior  
- Usage by user, department, and model  
- Cost spending on AI models  
- Daily/Monthly usage trends  

Data was cleaned and analyzed using **SQL**, and an interactive dashboard was built using **Power BI** to support decision-making.

---

## 🛠 Tech Stack  
| Process | Tools Used |
|---------|------------|
| Data Storage | MySQL / SQL Server |
| Data Cleaning | SQL |
| Data Transformation | Power Query |
| Visualization | Power BI |
| DAX Measures | Used for KPIs & advanced calculations |

---

## 📂 Folder Structure  
GenAI-Usage-Analytics/
│
├── data/
│ ├── genai_usage_raw.csv
│ ├── genai_usage_cleaned.csv
│
├── sql/
│ ├── table_schema.sql
│ ├── cleaning_queries.sql
│ ├── analysis_queries.sql
│
├── powerbi/
│ ├── GenAI_Dashboard.pbix
│ ├── screenshots/
│
└── README.md

---

## 🔍 Project Workflow  

### **1️⃣ Data Loading & Cleaning (SQL)**  
- Created `llm_usage` database  
- Loaded raw usage dataset  
- Checked for:  
  - Missing values  
  - Incorrect data types  
  - Duplicate prompt IDs  
- Cleaned and validated data  
- Created important calculated fields:
  - Total Tokens = Prompt Tokens + Completion Tokens  
  - Total Cost  
  - Query Length Category  

---

### **2️⃣ Data Analysis (SQL Queries)**  
Performed key analysis using SQL:

- Top users by token usage  
- Most expensive models  
- Tokens used per day  
- Cost per department  
- Average prompt length  
- Peak usage hours  
- LLM performance trends  

---

### **3️⃣ Dashboard Development (Power BI)**  
Connected SQL → Power BI and built a multi-page dashboard.

### 📊 **Dashboard Includes:**

#### ⭐ **KPI Cards**
- Total Tokens Used  
- Total Cost  
- Total Queries  
- Average Prompt Tokens  
- Average Completion Tokens  

#### 📈 **Visuals**
- Line Chart → Daily Token Usage  
- Bar Chart → Tokens by Model  
- Donut Chart → Cost Share by Model  
- Stacked Bar → Queries by User  
- Table → Detailed Query Logs  
- Filtering Panel → User, Date, Department, Model  

---

## 📈 Key Insights  

✔ GPT-4o consumes the highest cost but gives best completion quality.  
✔ Peak usage occurs between **11 AM – 3 PM**.  
✔ Analysts generate **long prompts**, resulting in high token usage.  
✔ The top 5 heavy users contribute **60% of the total cost**.  
✔ Llama models have lower cost with competitive performance for short prompts.  

---

## 🚀 Business Value  
This dashboard enables organizations to:  
- Reduce GenAI costs  
- Identify high-usage departments  
- Compare performance of different LLMs  
- Improve prompt writing through token analysis  
- Make strategic decisions on model selection  

---




