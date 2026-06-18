WITH customers AS (
  /* Customer overview data mart, offering key details for each unique customer. One row per customer. */
  SELECT
    *
  FROM {{ ref('project_config_course', 'customers') }}
), orders AS (
  /* Order overview data mart, offering key details for each order inlcluding if it's a customer's first order and a food vs. drink item breakdown. One row per order. */
  SELECT
    *
  FROM {{ ref('project_config_course', 'orders') }}
), "join" AS (
  SELECT
    *
  FROM orders
  JOIN customers
    USING (CUSTOMER_ID)
), model_created_with_canvas_sql AS (
  SELECT
    *
  FROM "join"
)
SELECT
  *
FROM model_created_with_canvas_sql