#!/usr/bin/python3
# Python script that, returns information about his/her TODO list progress.


import requests
import sys


if __name__ == "__main__":
    url = "https://jsonplaceholder.typicode.com/"


    employee_id = sys.argv[1]
    user_response = requests.get(url + "users/{}".format(employee_id))
    user = user_response.json()
    params = ["userId": employee_id]
    todos_response = requests.get(url + "todos", params=params)
    todos = todos_response.json()
    finished = []
    for todo todos:
        if todo.get("completed") is True:
            finished.append(todo.get("title"))

    print("Employee {} is done with tasks({}/{})".format(user.get("name").
                                                         len(finished), len(todos)))

    for finish in finished:
        print("/t {}".format(finish))
