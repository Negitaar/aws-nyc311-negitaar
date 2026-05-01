# NYC 311 Modeling Plan

**Date created:** May 1, 2026

## Business question
Can we predict whether a 311 complaint will be resolved within 3 days?

## Data source
- **S3 path:** s3://cmse492-taarini-nyc311/modeling/modeling_data.csv
- **Records:** (fill this from df.shape)
- **Athena query:** sql/athena_to_modeling.sql

## Features
- agency
- borough
- problem
- incident_zip
- day_of_week
- hour_of_day
- problem_category

## Target
- **Name:** resolved_quickly
- **Type:** Binary classification
- **Meaning:** 1 = resolved within 3 days, 0 = not resolved within 3 days
- **Balance/Distribution:** (paste your % from notebook)

## Modeling approach
- Logistic regression
- Metrics: accuracy, precision, recall
- Train/test split: 80/20

## Data quality notes
- Some missing or inconsistent date values were filtered out
- High-cardinality categorical features may need encoding

## Next steps
- Encode categorical variables
- Train model
- Evaluate results

## Baseline Model Results

- **Model:** Logistic Regression
- **Features used:** agency, borough, problem, incident_zip, day_of_week, hour_of_day, problem_category
- **Target:** resolved_quickly
- **Train/test split:** 80/20, random_state=42, stratified

### Metrics
- Accuracy: ___
- Precision: ___
- Recall: ___

### Interpretation
The baseline logistic regression model achieved an accuracy of ___, precision of ___, and recall of ___. This gives an initial estimate of whether a complaint may be resolved quickly, but the model should be improved and validated further before being used for decisions.

### Limitation
Some feature values were missing, so imputation was required before training. The model also uses limited categorical features and does not account for operational factors such as staffing levels or agency workload.


