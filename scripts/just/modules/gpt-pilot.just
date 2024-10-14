#Just/ASD

# Project Commands

# Create logger folder
dir-logger:
    #!/usr/bin/env bash
    [ -d "logger" ] || mkdir logger

start:gp-start
# Start GPT Pilot
gp-start: dir-logger
    {{PYTHON}} main.py

load: gp-project-load
gp-project-load:
	#!/usr/bin/env bash
	echo "Available projects:"

	# Create an associative array to map numbers to project names
	declare -A projects
	index=1

	# Loop through environment variables and filter those starting with PROJECT__ and ending with __NAME
	for project in $(env); do
		if [[ $project == PROJECT__*__NAME=* ]]; then
			project_name=${project#PROJECT__}
			project_name=${project_name%%__NAME=*}
			project_display_name=${project#*=}
			projects[$index]=$project_name
			echo "$index. $project_name: $project_display_name"
			((index++))
		fi
	done

	# Prompt the user to select a project by number
	read -p "Enter the project number to load: " selected_index

	# Get the selected project name
	selected_project=${projects[$selected_index]}

	# Retrieve the corresponding key for the selected project
	project_key_var="PROJECT__${selected_project}__KEY"
	project_key="${!project_key_var}"

	# Start the project with the corresponding key
	echo "Starting project ${selected_project} with key ${project_key}..."
	poetry run python main.py --project "${project_key}"
