-- Fact table
CREATE TABLE fact_cases (
    case_id VARCHAR PRIMARY KEY,
    created_date DATE NOT NULL,
    closed_date DATE,
    status VARCHAR,
    is_duplicate BOOLEAN,
    resolution_days INTEGER,
    request_type_id INTEGER,
    geography_id INTEGER
);

-- Date dimension
CREATE TABLE dim_date (
    date_id DATE PRIMARY KEY,
    year INTEGER,
    month INTEGER,
    month_name VARCHAR
);

-- Request type dimension
CREATE TABLE dim_request_type (
    request_type_id INTEGER PRIMARY KEY,
    request_type VARCHAR
);

-- Geography dimension
CREATE TABLE dim_geography (
    geography_id INTEGER PRIMARY KEY,
    ward INTEGER,
    community_area VARCHAR
);
