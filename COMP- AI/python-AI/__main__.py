from utilities import Board, SolverDFS
import matplotlib.pyplot as plt
import networkx as nx
def main():
	print("main")
	board = Board()
	print(board)
	d = board.hamDistance
	print(d)
	m = board.manDistance
	print(m)

	s = SolverDFS()

	s.solve(board)
	


	




if __name__ == "__main__":
	main()