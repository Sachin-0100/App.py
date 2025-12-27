# app.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Step 1 Complete: The Python app is running!"

if __name__ == '__main__':
    # We use port 5000 by default for Flask
    app.run(host='0.0.0.0', port=5000)