import time
import requests
from concurrent import futures

total_requests = 100
max_concurrent_requests = 25
data = range(total_requests)
start_time = time.time()


def send_request(item):
    j = 0
    try:
        requests.get("http://localhost:8000/")
        print("Request {} complete.".format(item))
        j = 1
    except Exception as e:
        print(e)
        return j
    finally:
        return j


executor = futures.ThreadPoolExecutor(max_workers=max_concurrent_requests)

futures_ = [executor.submit(send_request, x) for x in data]

i = 0
for f in futures.as_completed(futures_):
    i += f.result()

print("successfully requests", i)
print("bad_requests", total_requests - i)
print("end time", time.time() - start_time)