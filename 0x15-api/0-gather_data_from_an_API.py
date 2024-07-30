#!/usr/bin/python3
"""
Python script that, returns information about his/her TODO list progress.
Using REST API https://jsonplaceholder.typicode.com/todos/1
Requirements:

You must use urllib or requests module
The script must accept an integer as a parameter, which is the employee ID
The script must display on the standard output the employee TODO list progress
in this exact format:
First line: Employee EMPLOYEE_NAME is done with
tasks(NUMBER_OF_DONE_TASKS/TOTAL_NUMBER_OF_TASKS):
EMPLOYEE_NAME: name of the employee
NUMBER_OF_DONE_TASKS: number of completed tasks
TOTAL_NUMBER_OF_TASKS: total number of tasks, which is the sum of completed
and non-completed tasks
Second and N next lines display the title of completed tasks: TASK_TITLE
(with 1 tabulation and 1 space before the TASK_TITLE)
"""


import requests
import sys


if __name__ == "__main__":
    url = "https://jsonplaceholder.typicode.com/"

    employee_id = sys.argv[1]

    user = requests.get(url + "users/{}".format(employee_id)).json()

    params = {"userId": employee_id}

    todos = requests.get(url + "todos", params).json()

    completed = [t.get("title")
                 for t in todos if t.get("completed") is True]

    print("Employee {} is done with"
          "tasks({}/{})".format(user.get("name"), len(completed), len(todos)))

    for complete in completed:
        print("/t {}".format(complete))
