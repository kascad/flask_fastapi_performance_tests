# Performance comparison between Flask, Gunicorn, FastAPI


## Pre-requirements
* Install Flask

<pre>
pip install flask
</pre>

* Install gunicorn
<pre>
pip install gunicorn
</pre>

* Install fastapi
<pre>
pip install fastapi
</pre>

* Install uvicorn
<pre>
pip install uvicorn
</pre>

* Install requests
<pre>
pip install requests
</pre>

## Usage
* Using the make command, start the server what you need (All configurations are present in the Makefile), for example:
<pre>
make run_fa_gu
</pre>

* Check in `tester.py` file testing configuration:
<pre>
total_requests = 100
max_concurrent_requests = 25
</pre>

* Run the `tester.py`:
<pre>
python tester.py
</pre>

### Check the results! Enjoy!