{
  /**
   * Creates a [CloudWatch target](https://grafana.com/docs/grafana/latest/features/datasources/cloudwatch/)
   *
   * @name cloudwatch.target
   *
   * @param region
   * @param namespace
   * @param metric
   * @param datasource (optional)
   * @param statistic (default: `'Average'`)
   * @param alias (optional)
   * @param highResolution (default: `false`)
   * @param period (default: `'1m'`)
   * @param hide (optional) Set to `true` to hide the target from the panel.
   * @param expression (optional)
   * @param id (optional)
   * @param dimensions (optional)

   * @return Panel target
   */

  target(
    region,
    namespace,
    metric,
    datasource=null,
    statistic='Average',
    alias=null,
    highResolution=false,
    period='1m',
    hide=null,
    expression=null,
    id=null,
    dimensions={}
  ):: {
    [if hide != null then 'hide']: hide,
    [if expression != null then 'expression']: expression,
    [if id != null then 'id']: id,
    region: region,
    namespace: namespace,
    metricName: metric,
    [if datasource != null then 'datasource']: datasource,
    statistics: [statistic],
    [if alias != null then 'alias']: alias,
    highResolution: highResolution,
    period: period,
    dimensions: dimensions,
  },
}
