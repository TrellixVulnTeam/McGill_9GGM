
import collections
import networkx as nx
import numpy as np 
from random import randint

class Board:
	def __init__(self):
		self.matrix = np.zeros((2,3))
		self.matrix[0,0] = 5
		self.matrix[0,1] = 1
		self.matrix[0,2] = 0
		self.matrix[1,0] = 4
		self.matrix[1,1] = 3
		self.matrix[1,2] = 2
		self.goal = np.zeros((2,3))
		self.goal[0,0] = 0
		self.goal[0,1] = 1
		self.goal[0,2] = 2
		self.goal[1,0] = 3
		self.goal[1,1] = 4
		self.goal[1,2] = 5

		self.hamDistance = 5
		self.manDistance = 5

	def __str__(self):
		return np.array_str(self.matrix)

	def hamming(self):
		self.hamming = 0
		for i in range(1,2):
			for j in range(1,3):
					if self.matrix[i,j] != self.goal[i,j]:
						self.hamming += 1
		return self.hamDistance

	def manhattan(self):
		self.manDistance = 0
		for i in range(1,2):
			for j in range(1,3):
					if self.matrix[i,j] != self.goal[i,j]:
						self.manDistance += i+j
		return self.manDistance 

class SolverDFS:
	def __init__(self):
			self.stateGraph = nx.Graph()

	def solve(self, board):
			self.stateGraph.add_node(board)
			



 










