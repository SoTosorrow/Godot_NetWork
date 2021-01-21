extends Node2D

# 新建TCP服务器
var server = TCP_Server.new()

func _ready():
	#启动TCP服务器，开始监听端口号和ip
	server.listen(10567,"127.0.0.1")
	print("server listen start")
	
func _process(delta):
	# 如果已经启用服务器
	if server.is_listening():
		# 获取套接字
		var socket = server.take_connection()
		# 如果有客户端连接进来
		if socket:
			# 获取客户端发来的数据
			print(socket.get_var())
