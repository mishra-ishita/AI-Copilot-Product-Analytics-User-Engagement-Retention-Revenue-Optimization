select * from ai_copilot_events;
select count(*) from ai_copilot_events;

-- 1. which ai model generates the highest revenue?
select ai_model, sum(revenue_usd) as total_revenue from ai_copilot_events
group by ai_model order by total_revenue desc;

-- 2. which feature has the highest 7-day retention rate?
select feature_used,
round(100.0 * sum(case when retained_7d = 'Yes' then 1 else 0 end) / count(*), 2) as retention_rate 
from ai_copilot_events group by feature_used order by retention_rate desc;

--  3. which plan has the highest conversion rate?
select plan,
round(100.0 * sum(case when converted_to_paid = 'Yes' then 1 else 0 end) / count(*),2) as conversion_rate
from ai_copilot_events group by plan order by conversion_rate desc;

--  4. does latency impact user ratings?
select
    case when latency_seconds < 2 then 'low latency'
        when latency_seconds <= 5 then 'medium latency'
        else 'high latency'
    end as latency_bucket,
    round(avg(rating),2) as avg_rating
from ai_copilot_events group by latency_bucket;

-- 5. which prompt category generates the most revenue?
select prompt_category, sum(revenue_usd) as revenue from ai_copilot_events group by prompt_category
order by revenue desc;

-- 6. which company size has the highest arpu?
select company_size,
round(sum(revenue_usd) / count(distinct user_id), 2) as arpu from ai_copilot_events group by company_size
order by arpu desc;

-- 7. rank users by revenue
select user_id, sum(revenue_usd) as total_revenue,
    rank() over(order by sum(revenue_usd) desc) as revenue_rank
from ai_copilot_events group by user_id;

-- 8. which feature is most used by converted users?
select feature_used, count(*) as usage_count from ai_copilot_events
where converted_to_paid = 'Yes' group by feature_used order by usage_count desc;

-- 9. which ai model has the highest success rate?
select ai_model,
round(100.0 * sum(case when response_success = 'Yes' then 1 else 0 end) / count(*), 2) as success_rate
from ai_copilot_events group by ai_model order by success_rate desc;

-- 10. rank countries by conversion rate
select country,
round(100.0 * sum(case when converted_to_paid = 'Yes' then 1 else 0 end) / count(*), 2) as conversion_rate
from ai_copilot_events group by country order by conversion_rate desc;

-- 11. find the first feature used by each user
with cte as (
select user_id, feature_used, event_date,
row_number() over(partition by user_id order by event_date) as rn
from ai_copilot_events)
select user_id, feature_used from cte where rn = 1;

-- 12. calculate cumulative revenue over time
with daily_revenue as (
select event_date, sum(revenue_usd) as revenue from ai_copilot_events group by event_date)
select event_date, revenue, sum(revenue) over(order by event_date) as cumulative_revenue
from daily_revenue;

-- 13. does copying responses improve retention?
select copied_response,
round(100.0 * sum(case when retained_7d = 'Yes' then 1 else 0 end) / count(*), 2) as retention_rate
from ai_copilot_events group by copied_response;

-- 14. what factors differentiate retained vs churned users?
select retained_7d, round(avg(latency_seconds),2) as avg_latency, round(avg(rating),2) as avg_rating,
round(avg(session_duration_minutes),2) as avg_session_duration, round(avg(prompts_in_session),2) as avg_prompts
from ai_copilot_events group by retained_7d;

-- 15. which users are power users?
select user_id, count(distinct session_id) as sessions, sum(tokens_used) as total_tokens, 
sum(revenue_usd) as total_revenue from ai_copilot_events group by user_id order by total_tokens desc;