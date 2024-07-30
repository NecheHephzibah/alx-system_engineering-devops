#!/usr/bin/python3
""" extend your Python script to export data in the CSV format."""

import  csv
import requests
import sys


if __name__ == "__main__":
    user_id = sys.argv[1]
    url = "https://jsonplaceholder.typicode.com/"
    user = requests.get(url + "users/{}".format(user_id)).json()

    username = user.get("username")

    todos = requests.get(url + "todos", params={"userId": user_id}).json()

    # iterate over the to-do list items, Write each item's details
    # (userID, username, completion status and title) as a row in the CSV file

    with open("{}.csv".format(user_id), "w", newline="") as csvfile:
        files = csv.writer(csvfile, quoting=csv.QUOTE_ALL)
        [files.writerow(
            [user_id, username, t.get("completed"), t.get("title")]
            ) for t in todos]

