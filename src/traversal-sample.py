'''
Created on Nov 5, 2016

@author: Victor
'''

from neo4jrestclient import traversals
from neo4jrestclient.client import GraphDatabase
from neo4jrestclient.query import Q
 
db = GraphDatabase('http://localhost:7474/db/data/')

neo = db.node(name='Thomas Anderson', age=29)
neo.labels.add('Character')
trinity = db.node(name='Trinity')
trinity.labels.add('Character')
morpheus = db.node(name='Morpheus', rank='Captain')
morpheus.labels.add('Character')
cypher = db.node(name='Cypher')
cypher.labels.add('Character')
agent_smith = db.node(name='Agent Smith', language='C++', version='1.0b')
agent_smith.labels.add('Character')
architect = db.node(name='The Architect')
architect.labels.add('Character')

neo.KNOWS(trinity, age='3 days')
morpheus.KNOWS(trinity, age='12 years')
neo.KNOWS(morpheus)
morpheus.KNOWS(cypher, disclosure='public')
cypher.KNOWS(agent_smith, disclosure='secret', age='6 months')
agent_smith.CODED_BY(architect)
    
traversal_description = traversals.TraversalDescription()\
                .relationships('KNOWS', traversals.RelationshipDirection.OUTGOING)\
                .relationships('CODED_BY', traversals.RelationshipDirection.OUTGOING)\
                .filter(traversals.Filters.ALL_BUT_START_NODE)\
                .depthFirst()
traversal_description.max_depth(10)
traverser = traversal_description.traverse(neo)

for node in traverser.nodes:
    print node['name']    

