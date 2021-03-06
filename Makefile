install:
	#[TODO] install solc and run ganache-cli
	python3 -m venv py3
	py3/bin/pip3 install -r requirements.txt
	npm install -g ganache-cli
	py3/bin/python3 create_db.py
	py3/bin/python3 sol_bets.py

run:
	py3/bin/python3 server.py

clean:
	rm -rf weather_betting.db data.json py3 __pycache__
