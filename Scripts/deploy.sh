#!/bin/bash

# Function to display usage instructions
usage() {
    echo "Usage: $0 [-m | --multi] [-s | --single]" 1>&2
    echo "Deploy Docker Compose files for Llama and Cheshire Cat on a VM." 1>&2
    echo "Options:" 1>&2
    echo "  -m, --multi      Deploy multiple instances of Llama and Cheshire Cat" 1>&2
    echo "  -s, --single     Deploy a single instance of Llama and Cheshire Cat" 1>&2
    exit 1
}

# Check if Docker Compose files directory exists
if [ ! -d "../Ollama-CheshireCat" ] || [ ! -d "../Portainer" ]; then
    echo "Error: Docker Compose files directory not found." 1>&2
    exit 1
fi

# Parse command line options
while [[ "$#" -gt 0 ]]; do
    case $1 in
        -m|--multi)
            multi=true
            ;;
        -s|--single)
            single=true
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

# Ensure only one option is selected
if [ "$multi" == "$single" ]; then
    echo "Error: Please specify either -m or -s option." 1>&2
    usage
fi

# Deploy Docker Compose files based on selected option
if [ "$multi" == true ]; then
    echo "Deploying multiple instances of Llama and Cheshire Cat..."
    sudo docker-compose -f ../Ollama-CheshireCat/docker-compose-multi.yaml up -d
elif [ "$single" == true ]; then
    echo "Deploying a single instance of Llama and Cheshire Cat..."
    sudo docker-compose -f ../Ollama-CheshireCat/docker-compose.yml up -d
fi

# Deploy Portainer
echo "Deploying Portainer..."
sudo docker-compose -f ../Portainer/docker-compose.yml up -d

echo "Deployment complete."
