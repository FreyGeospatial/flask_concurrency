from flask import Flask
import time
import threading

app = Flask(__name__)


@app.route("/")
def index():
    return "Hello from Flask with Gunicorn!"


@app.route("/wait/<int:seconds>")
def wait(seconds):
    thread_name = threading.current_thread().name
    time.sleep(seconds)
    return f"Waited for {seconds} seconds on thread {thread_name}"
