#!/usr/bin/python3
"""
extend your Python script to export data in the JSON format. This is the same
as the tasks 2, the difference  is in the format
"""

import json
import requests
import sys


if __name__ == "__main__":
    # Base URL for the JSONPlaceholder API
    url = "https://jsonplaceholder.typicode.com/"

    # Fetch the list of all users (employees)
    users = requests.get(url + "users").json()

    # Create a dictionary containing to-do list information of all employees
    with open("todo_all_employees.json", "w") as jsonfile:
        json.dump({
            u.get("id"): [{
                "task": t.get("title"),
                "completed": t.get("completed"),
                "username": u.get("username")
                } for t in requests.get(url + "todos",
                    params={"userId": u.get("id")}).json()]
                for u in users}, jsonfile)
