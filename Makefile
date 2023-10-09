run_fa:
	uvicorn fastapi_app:app

run_fa_gu:
	gunicorn fastapi_app:app --workers 4 --worker-class uvicorn.workers.UvicornWorker --bind 0.0.0.0:8000

run_fl:
	flask --app flask_app run

run_gu_w4t2:
	gunicorn -w 4 -t 2 -b 0.0.0.0:8000 'flask_app:app' --timeout 60

run_gu_w6t4:
	gunicorn -w 6 -t 4 -b 0.0.0.0:8000 'flask_app:app' --timeout 60

run_gu_w6t12:
	gunicorn -w 6 -t 12 -b 0.0.0.0:8000 'flask_app:app' --timeout 60

run_gu_w12t2:
	gunicorn -w 12 -t 2 -b 0.0.0.0:8000 'flask_app:app' --timeout 60

run_gu_w6t4to60:
	gunicorn -w 6 -t 4 -b 0.0.0.0:8000 'flask_app:app' --timeout 60

run_gu_ge:
	gunicorn -k gevent -b 0.0.0.0:8000 'flask_app:app' --timeout 60

run_gu_gew6t4:
	gunicorn -k gevent -w 6 -t 4 -b 0.0.0.0:8000 'flask_app:app' --timeout 60

run_gu_el:
	gunicorn -k eventlet -b 0.0.0.0:8000 'flask_app:app' --timeout 60

