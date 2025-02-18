-- tables: lineitem

SELECT /*+SET_VAR(experimental_enable_pipeline_x_engine=true, disable_streaming_preaggregations=true) */ sum(l_extendedprice * l_discount) AS revenue
FROM
  lineitem
WHERE
  l_shipdate >= DATE '1994-01-01'
  AND l_shipdate < DATE '1994-01-01' + INTERVAL '1' YEAR
AND l_discount BETWEEN 0.06 - 0.01 AND .06 + 0.01
AND l_quantity < 24

