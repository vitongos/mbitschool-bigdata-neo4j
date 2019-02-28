'''
Created on Feb 20, 2019

@author: Victor
'''

from neo4j.v1 import GraphDatabase, basic_auth
driver = GraphDatabase.driver("bolt://localhost")
session = driver.session()

query = '''CALL algo.betweenness.sampled.stream(null, null,
  {strategy:'random', probability:1.0, maxDepth:1, direction: 'both'})

YIELD nodeId, centrality

MATCH (actor) WHERE id(actor) = nodeId and exists(actor.name)
RETURN actor.name AS actor,centrality
ORDER BY centrality DESC LIMIT 10;'''

result = session.run(query)
print("Top Central Nodes")
print("-----------------")
for record in result:
  print("%s %s" % (record["actor"].ljust(25, " "), record["centrality"]))

session.close()
