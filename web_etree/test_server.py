from flask import Flask, request
from lxml import etree

app = Flask(__name__)

f = open("military2.xml", "r")
tree = etree.parse(f)

@app.route("/api/search", methods=["POST"])
def search():
    name = request.json.get("search", "")
    query = "/military/district/staff[name='{}']".format(name)
 
    result = tree.xpath(query)
    if result:
        print(result)
        return {"success": 1, "message": "This millitary staff member exists."}
 
    return {"failure": 1, "message": "This millitary staff member doesn't exist."}

if __name__ == '__main__':
    app.run("0.0.0.0", port=1337, debug=True)