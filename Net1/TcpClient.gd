extends Node2D

func _ready():
	var client = StreamPeerTCP.new()
	print(0)
	client.connect_to_host("192.168.3.14",26950)
	print(1)
	if client.is_connected_to_host():
		client.put_var("这是一条测试信息")
