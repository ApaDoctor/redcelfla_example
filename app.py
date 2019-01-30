from flask import Flask
from tasks import some_task

app = Flask(__name__)


@app.route("/", methods=["GET"])
def home():
    some_task.delay()
    return "Tasks started succesully"


if __name__ == "__main__":
    app.run(host="0.0.0.0")
