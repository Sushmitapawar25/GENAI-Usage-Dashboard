CREATE DATABASE genai_analytics;
use genai_analytics;

CREATE TABLE llm_usage (
    request_id INT PRIMARY KEY,
    user_id INT,
    department VARCHAR(50),
    team VARCHAR(50),
    model_provider VARCHAR(50),
    model_name VARCHAR(50),
    region VARCHAR(50),
    timestamp DATETIME,
    tokens_input INT,
    tokens_output INT,
    total_tokens INT,
    cost_usd DECIMAL(10,4),
    latency_ms INT,
    status VARCHAR(20),
    prompt_category VARCHAR(50)
);
SHOW TABLES;
SELECT COUNT(*) FROM llm_usage;

SELECT * FROM llm_usage limit 10;

-- Total Cost Analysis -- 

-- 1.Total cost across all requests  
SELECT SUM(cost_usd) AS total_cost_usd
FROM llm_usage;

-- 2.Total Cost per Month
Select date_format(timestamp, '%Y-%m') AS month,
		sum(cost_usd) as total_cost_usd
FROM llm_usage
group by month
order by month;

-- Model usage  Analysis-- 

-- 3.Count of Requests per model 
SELECT model_name, count(*) AS request_count
from llm_usage
group by model_name
order by request_count DESC; 

-- 4.Average Tokens per Model
select model_name, avg(total_tokens) As avg_tokens
from llm_usage
group by model_name
order by avg_tokens desc;

-- Department and Team Analysis -- 

-- Cost By Department
Select department, sum(cost_usd) as dept_cost
from llm_usage
group by department
order by dept_cost desc;

-- 6.request by team
select team, count(*) as total_requests
from llm_usage
group by team
order by total_requests desc;

-- Latency and performance

-- 7.average latency per model
select model_name, avg(latency_ms) as avg_latency
from llm_usage
group by model_name
order by avg_latency;

-- 8.Errors by Model
 
 select model_name, count(*) as error_count
 from llm_usage
 where status = 'error'
 group by model_name
 order by error_count desc;
 
 -- Token usage trends --
 
 -- 9.Total tokens per Month 
 select date_format(timestamp, '%Y-%m') as month,
	sum(total_tokens) as total_tokens
from llm_usage
group by month
order by month;
 

 