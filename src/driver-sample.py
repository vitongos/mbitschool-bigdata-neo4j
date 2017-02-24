'''
Created on Nov 5, 2016

@author: Victor
'''

from neo4j.v1 import GraphDatabase, basic_auth
driver = GraphDatabase.driver("bolt://localhost", auth=basic_auth("neo4j", "neo"))
session = driver.session()

session.run("CREATE (a:Sword {name:'Excalibur', owner:'King Arthur'})")
session.run("CREATE (a:Sword {name:'Tizona', owner:'El Cid'})")

result = session.run("MATCH (a:Sword) RETURN a.name AS name, a.owner AS owner")
for record in result:
  print("%s belongs to %s" % (record["name"], record["owner"]))

session.close()
