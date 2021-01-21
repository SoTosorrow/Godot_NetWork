extends Node2D

var client = StreamPeerTCP.new()

func _ready():
	print("client build")
	client.connect_to_host("127.0.0.1",10567)
	
func _process(delta):
	if client.is_connected_to_host():
		client.put_var("这是一条测试信息")
