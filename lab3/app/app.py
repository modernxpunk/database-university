# pip install -r requirements.txt

import sql
from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route("/create", methods = ['POST', 'GET'])
def create():
    if request.method == "POST":
        output = request.form.to_dict()
        name1 = output["id"]
        name2 = output["pasport2"]
        name3 = output["name"]
        return  render_template("create.html", id = sql.add(name1,name2,name3))
    else:
        return render_template('create.html')


@app.route('/change', methods = ['POST', 'GET'])
def change():
    if request.method == "POST":
        output = request.form.to_dict()
        name = output["pasport"]
        return  render_template("change.html", name1 = sql.change_pasport_id(name))
    else:
        return render_template('change.html')

@app.route('/result', methods = ['POST', 'GET'])
def result():
    output = request.form.to_dict()
    name = output["name"]
    return render_template("index.html", name=sql.get_users(name))


@app.route('/delete')
def delete():
    try:
        sql.delete()
    except:
        print("Error")
    else:
        print("success")
    finally:
        return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True)