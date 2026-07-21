# AI-Copilot-Product-Analytics-User-Engagement-Retention-Revenue-Optimization

## Overview
This project analyzes user behavior and product performance for an AI Copilot platform to understand how users interact with AI features, what drives retention, and which factors contribute to revenue growth.

The analysis focuses on identifying key product growth drivers across AI models, features, customer segments, and user engagement patterns to support data-driven product decisions.

## Background
With the rapid adoption of AI-powered productivity tools, understanding user behavior is critical for improving retention, increasing conversions, and optimizing monetization strategies.

I explored an AI Copilot usage dataset to understand:
- Which AI models and features generate the highest revenue
- What behaviors differentiate retained vs churned users
- Which user segments have the highest monetization potential
- How product performance impacts user satisfaction

## Problem Statement
The AI Copilot platform needs to identify the key factors influencing user engagement, retention, and revenue generation.

The goal is to uncover product insights that can help improve:
- User retention
- Feature adoption
- Conversion rates
- Revenue growth
- Overall AI product experience

## Dataset
- 1,200 AI interaction records
- 250 unique users
- 543 sessions
- User attributes, subscription plans, AI model usage, feature interactions, engagement metrics, ratings, retention, and revenue data

## Tools & Technologies
- SQL (PostgreSQL) - Data extraction, aggregation, segmentation, and analysis
- Python (Pandas, NumPy, Matplotlib) - Exploratory Data Analysis and trend analysis
- Power BI - Interactive dashboard development and KPI tracking

## Approach
### 1. Data Exploration & Cleaning
- Analyzed dataset structure, missing values, duplicates, and data quality
- Converted date fields and prepared data for analysis

### 2. Revenue & Monetization Analysis
- Analyzed revenue contribution by AI model, feature, country, and customer segment
- Calculated ARPU across different company sizes
- Identified high-value users and revenue concentration patterns

### 3. User Retention Analysis
- Evaluated 7-day retention across features, plans, and user behaviors
- Compared retained vs churned users based on:
  - Session duration
  - Prompt activity
  - User ratings
  - Response performance

### 4. Conversion Analysis
- Studied conversion patterns across:
  - Subscription plans
  - Countries
  - AI features
- Identified key user journeys leading to paid conversion

### 5. Product Performance Analysis
- Compared AI models based on:
  - Revenue generation
  - Response success rate
  - User satisfaction
- Analyzed relationship between latency and user ratings

## Key Findings
### Revenue & Monetization
- GPT-4.1 generated the highest revenue of **$25.7K**, contributing nearly half of total platform revenue.
- Coding ($11.2K) and Data Analysis ($9.2K) were the top revenue-generating prompt categories, showing strong demand for professional AI use cases.
- Enterprise users generated the highest ARPU (**$2,299**), significantly higher than Individual users (**$28**).
- Revenue reached **$51.4K**, with major growth spikes observed during March.

### User Retention
- Voice feature achieved the highest 7-day retention rate of **60.7%**, indicating strong engagement.
- Chat maintained strong retention (**53.6%**) while being the most widely used feature.
- Retained users showed higher engagement:
  - **22% longer sessions** (10.3 vs 8.4 minutes)
  - More prompts per session (2.48 vs 2.22)

### Conversion Analysis
- Chat was the most frequently used feature among converted users with **258 interactions**.
- United Kingdom recorded the highest conversion rate at **58.1%**.
- Enterprise and Pro users showed significantly higher conversion potential compared to Free users.

### Product Performance
- GPT-4o achieved the highest response success rate (**93.3%**).
- GPT-4.1 generated higher revenue despite slightly lower reliability, suggesting users prioritize output quality.
- High latency responses (>5 seconds) resulted in lower user ratings (**3.19 average rating**).

### User Behavior
- Chat was the most common first feature used by users, acting as the primary entry point into the product.
- Revenue was concentrated among high-value users, with top users generating **$3.8K+ each**.
- Several high-engagement users generated limited revenue, highlighting opportunities for better free-to-paid conversion strategies.

## Business Insights
The analysis shows that revenue growth is driven by enterprise adoption, high-value AI models, and professional use cases.

Retention is strongly influenced by engagement depth rather than individual metrics like latency alone. Improving feature discovery, optimizing response speed, and converting highly engaged free users can create additional growth opportunities.

## Recommendations
- Promote high-retention features like Voice and Chat to increase user engagement.
- Improve latency performance to enhance user satisfaction and ratings.
- Develop targeted conversion strategies for high-usage free users.
- Create enterprise-focused pricing and feature bundles based on usage patterns.
- Prioritize high-value AI workflows such as Coding and Data Analysis.

## Dashboard Preview
The Power BI dashboard tracks:
- Revenue Performance
- User Retention
- Conversion Metrics
- Feature Adoption
- AI Model Performance
- User Segmentation
- Power Users

## Conclusion
This project demonstrates how product analytics can uncover growth opportunities by combining user behavior analysis, revenue insights, and AI product performance metrics.

The findings help identify what drives engagement, what increases retention, and where product improvements can create measurable business impact.
