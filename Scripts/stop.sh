#!/bin/bash

# Function to display usage instructions
usage() {
    echo "Usage: $0 [-a | --all]" 1>&2
    echo "Stop Docker containers on a VM." 1>&2
    echo "Options:" 1>&2
    echo "  -a, --all      Stop all containers, including Portainer" 1>&2
    exit 1
}

# Function to stop all containers except Portainer
stop_containers() {
    echo "Stopping all containers except Portainer..."
    # Get the ID or name of the Portainer container
    PORTAINER_ID=$(sudo docker ps -q --filter "name=portainer")
    # Stop all containers except Portainer
    sudo docker ps -q | while read -r CONTAINER_ID; do
        if [[ "$CONTAINER_ID" != "$PORTAINER_ID" ]]; then
            sudo docker stop "$CONTAINER_ID"
        fi
    done
}

# Function to stop all containers, including Portainer
stop_all_containers() {
    echo "Stopping all containers, including Portainer..."
    sudo docker stop $(sudo docker ps -q)
}

# Parse command line options
while [[ "$#" -gt 0 ]]; do
    case $1 in
        -a|--all)
            all=true
            ;;
        -h|--help)
            usage
            ;;
        *)
            usage
            ;;
    esac
    shift
done

# Check if both options are selected
if [ "$all" == true ]; then
    stop_all_containers
elif [ "$all" != true ]; then
    stop_containers
fi

echo "Containers stopped."
