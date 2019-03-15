tool
extends "res://delaunay2d.gd"

# class member variables go here, for example:
var tris

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here

	#generate_points(500,500,10)

	# randomize
	#randomize()
	#get_child(0).set_seed(randi())


	setup()

	tris = TriangulatePolygon(points)

	var polys = []

	for t in tris:
		var poly = []
		print("Edges: " + str(t.get_edges()))
		#print("T: " + str(points[t.p1]) + str(points[t.p2]) + str(points[t.p3]))
		poly.append(points[t.p1])
		poly.append(points[t.p2])
		poly.append(points[t.p3])
		polys.append(poly)

	polygons(polys)