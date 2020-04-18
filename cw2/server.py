from flask import Flask ,render_template 
import sqlite3

app=Flask(__name__)

@app.route("/")
def indexPage():
   return render_template("index.html")

@app.route("/queue")
def queuePage():
   return render_template("queue.html")

@app.route("/getQueue") 
def getQueue():
    return '[{"id":105,"status":"Processing"},{"id":106,"status":"Ready"}]'

if __name__=='__main__':
      app.run(host='0.0.0.0',port=5036,debug=True)     