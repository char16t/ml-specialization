start:
	exec nohup jupyter notebook --allow-root > error.log & echo $$!> pid.txt

stop:
	kill -9 $$(cat pid.txt)
