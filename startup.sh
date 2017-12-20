mkdir -p log 
pip3 install -r backend/requirements.txt
yarn --cwd frontend
cd frontend
trap 'kill %1; kill %2;' SIGINT
python3 ../backend/app.py  | tee ../log/backend.log | sed -e 's/^/[backend] /' \
& yarn --cwd frontend start | tee ../log/frontend.log | sed -e 's/^/[frontend] /' \