#!/usr/bin/python3
""" extend your Python script to export data in the JSON format."""

import json
import requests
from sys import argv


def get_employee_todo_progress(employee_id):
    """the employee to do progress function"""
    try:
        url = "https://jsonplaceholder.typicode.com/"
        user_datas = requests.get(url + f"users/{employee_id}")
        user_data = user_datas.json()
        employee_name = user_data['username']

        """now lets fetch the todos list for an employee
        note that we use todos?<dic_key>=value"""
        todos_list = requests.get(url + f"todos?userId={employee_id}")
        json_todos_list = todos_list.json()

        """calculate the task done and left todo"""
        total_task = len(json_todos_list)
        """check the completed task"""
        task_done = [task for task in json_todos_list if task['completed']]
        no_task_done = len(task_done)

        """displaying result"""
        print(f"Employee {employee_name} is done with tasks("
              f"{no_task_done}/{total_task}):")

        """printing the title of completed task"""
        for task in task_done:
            print(f"\t {task['title']}")

        """prepare data for json export"""
        tasks = [
                {"task": task["title"],
                 "completed": task["completed"],
                 "username": employee_name
                 }
                for task in json_todos_list
            ]
        new_json_data = {str(employee_id): tasks}

        """exporting data to a json file"""
        json_filename = f"{employee_id}.json"
        with open(json_filename, mode='w') as json_file:
            json.dump(new_json_data, json_file, indent=4)

    except Exception as e:
        print(f"an error occured: {e}")


if __name__ == "__main__":
    if len(argv) != 2:
        print("Usage: script <emplyee_id>")
    else:
        get_employee_todo_progress(argv[1])
