# 🤖 AI Research Laboratory Database Optimization

## Overview

This project simulates a real-world AI research institute and focuses on SQL query optimization through effective index design. The database tracks researchers, AI projects, scientific papers, and research grants.

The objective is to analyze common research-management queries and create indexes that reduce execution time while minimizing storage overhead.

## Database Schema

### researchers

* id
* researcher_name
* field
* join_date

### projects

* id
* project_title
* category
* start_year

### contributions

* id
* researcher_id
* project_id
* role

### papers

* id
* project_id
* paper_title
* publication_year

### grants

* id
* grant_name
* amount

### project_grants

* id
* project_id
* grant_id

## Learning Objectives

* Query optimization
* Index design
* Composite indexes
* Query planning
* EXPLAIN QUERY PLAN
* Relational database modeling

## Features

* Researcher contribution analysis
* Project popularity ranking
* Research grant tracking
* AI project categorization
* Performance optimization

## Technologies

* SQLite
* SQL
* VS Code

## Skills Demonstrated

* Database Engineering
* SQL Optimization
* Data Analysis
* Query Planning
* Indexing Strategies

## Future Improvements

* Citation tracking
* Publication analytics
* Research collaboration network
* Grant forecasting dashboard
* AI project recommendation system

Author:
Caroline Mildred Gomes
