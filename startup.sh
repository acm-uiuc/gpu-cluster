pip3 install -r backend/requirements.txt
yarn --cwd frontend
trap 'kill %1; kill %2;' SIGINT
python3 backend/app.py  | tee log/dev/backend.log | sed -e 's/^/[backend] /' \
& yarn --cwd frontend start | tee log/dev/frontend.log | sed -e 's/^/[frontend] /' \