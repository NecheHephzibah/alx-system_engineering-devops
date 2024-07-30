#!/usr/bin/python3
""" extend your Python script to export data in the JSON format."""

import json
import requests
import sys


if __name__ == "__main__":
    user_id = sys.argv[1]

    url = "https://jsonplaceholder.typicode.com/"

    user = requests.get(url + "users/{}".format(user_id)).json()
    username = user.get("username")

    #get the to do list for the employee using employee ID
    params = {"userId": user_id}
    todos = requests.get(url + "todos", params).json()

    # dictionary containing the user and todo list info
    data_to_export = {
        user_id: [
            {
                "task": t.get("title"),
                "completed": t.get("completed"),
                "username": username
            }
            for t in todos
        ]
    }


    # convert the data to json file

    with open("{}.json".format(user_id), "w") as jsonfile:
        json.dump(data_to_export, jsonfile)

