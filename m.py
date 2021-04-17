from pymongo import MongoClient

def exam():
    books = mydb["books"]
    books_title = list(books.find({}, {"Title": 1, "_id": 0}))

    magazines = mydb["magazines"]
    magazines_title = list(magazines.find({}, {"Title": 1, "_id": 0}))


    for x in books_title:
        if x in magazines_title:
            print(x)



myclient = MongoClient()
mydb = myclient["bookDB"]
exam();