## Query: Average resolution time by agency

- **File:** sql/resolution_time.sql
- **Business question:** How long does each agency take to resolve complaints on average?
- **What I expected:** I expected resolution time to vary by agency because different agencies handle different complaint types.
- **Issues encountered:** The original query assumed all created_date and closed_date values were present and correctly formatted.
- **Checks performed:** I revised the query to use try(date_parse()) and filtered out rows where parsed dates were null.
- **Final outcome:** The revised query is more reliable because it only calculates resolution time for records with valid dates.
- **Confidence:** Medium. I would do more validation before presenting final recommendations.