# Sample 1
# ----------------------------------------------------------------------
# De entre los directores que tienen 12 o más películas, ¿cuáles son los 10 que, como promedio, las producen más largas?

MATCH (d)-[:DIRECTED]->(m) WITH d, avg(m.runtime) AS rt, count(m.runtime) AS c WHERE c >= 12 RETURN d.name, ROUND(rt) as runtime ORDER BY runtime DESC LIMIT 10

# Sample 2
# ----------------------------------------------------------------------
# ¿Quiénes son los 10 directores que más aparecen en sus películas?

MATCH (m)<-[:DIRECTED]-(a)-[:ACTS_IN]->(m) RETURN COUNT(*) AS c, a.name ORDER BY c DESC LIMIT 10

