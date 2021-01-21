extends Node2D

# 新建TCP服务器
var server = TCP_Server.new()

func _ready():
	#启动TCP服务器，开始监听端口号和ip
	server.listen(26950,"192.168.3.14")
	print(0)
	
func _process(delta):
	# 如果已经启用服务器
	if server.is_listening():
		print(1)
		# 获取套接字
		var socket = server.take_connection()
		# 如果有客户端连接进来
		if socket:
			# 获取客户端发来的数据
			print(socket.get_var())
