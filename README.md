# Todoist Completed Tasks

This script parses all completed tasks with filtering by specific project.

## Installation

1. Run `bundle`.
2. Setup the `.env` file from the `.env.example` file. You can read details about this step in the next section.
3. Run `ruby parse.rb`.


## ENV File

### How to get API_TOKEN

1. Open the Todoist app, click on your name in the upper right corner, select `Integrations`, under the `API Token` section click the `Copy` button.
2. Insert your API Token into the `API_TOKEN` variable value in the `.env` file.

### How to get PROJECT_ID

1. You can enter `PROJECT_ID=?` in the `.env` file, run the script and you will see the list of your projects with their id.
2. Insert one of the id from the list into to `PROJECT_ID` variable value in the `.env` file and you will see the list of today's completed tasks from this project.
3. Leave the `PROJECT_ID` variable empty and you will see today's completed tasks list from all your projects.
