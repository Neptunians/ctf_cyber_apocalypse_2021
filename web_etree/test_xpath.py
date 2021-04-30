from lxml import etree

f = open("military2.xml", "r")
tree = etree.parse(f)

def search(name):
    query = "/military/district/staff[name='{}']".format(name)
 
    result = tree.xpath(query)
    if result:
        print(result)
        return {"success": 1, "message": "This millitary staff member exists."}
 
    return {"failure": 1, "message": "This millitary staff member doesn't exist."}

def search2(name):
    query = "{}".format(name)
 
    result = tree.xpath(query)
    return result


r = search2("/military/district/staff[name='Tomkrut']/parent::node()/parent::node()")

# ']|/military/district/staff[name='Straorg