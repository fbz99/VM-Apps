# Docker Compose Files for Running Applications on a VM

Welcome to the Docker Compose repository for running various applications on a Virtual Machine (VM). This repository contains Docker Compose files tailored to deploy instances of the Llama and Cheshire Cat applications, along with Portainer for managing containers on the VM. The applications are containerized using Docker for easier deployment and management.

## Folder Structure

- **Ollama-CheshireCat/**
  - `docker-compose-multi.yaml`: Docker Compose file for deploying two instances each of Llama and Cheshire Cat with the same memory allocation.
  - `docker-compose.yml`: Docker Compose file for deploying a single instance each of Llama and Cheshire Cat.
- **Portainer/**
  - `docker-compose.yml`: Docker Compose file for deploying Portainer to manage all containers on the VM.
- **Scripts/**
  - `deploy.sh`: Shell script for deploying containers. Use `-m` flag for multi-instance Cheshire Cat and `-s` flag for a single instance.
  - `stop.sh`: Shell script for stopping all containers except for Portainer.

## Usage

### Prerequisites

- Docker installed on your VM.
- Docker Compose installed on your VM.

### Instructions

1. Clone this repository to your VM:

    ```bash
    git clone https://github.com/fbz99/VM-Apps.git
    ```

2. Navigate to the `Ollama-CheshireCat` directory:

    ```bash
    cd docker-compose-vm/Ollama-CheshireCat
    ```

3. Choose the appropriate Docker Compose file based on your deployment requirements:
   
   - For deploying two instances of Llama and Cheshire Cat:

        ```bash
        docker-compose -f docker-compose-multi.yaml up -d
        ```

   - For deploying a single instance of Llama and Cheshire Cat:

        ```bash
        docker-compose up -d
        ```

4. Wait for Docker to pull the necessary images and deploy the containers.

5. Access the applications using their respective endpoints:

   - Cheshire Cat: [http://localhost:1865](http://localhost:1865)
   - Ollama: [http://localhost:11434](http://localhost:11434)
   - Portainer: [http://localhost:9443](http://localhost:9443)

6. Use Portainer to manage all containers on the VM. Access it through [Portainer Website](https://www.portainer.io).

### Using Deployment and Stop Scripts

Alternatively, you can use the provided shell scripts to deploy and stop containers:


- **Add Permissions**
    - Enter the /Scripts folder and use chmod:
        ```bash
        cd /Scripts
        chmod +x *
        ```

- **Deploy Containers:**

    - Run the `deploy.sh` script with the `-m` flag for multi-instance Cheshire Cat and `-s` flag for a single instance. For example:

        ```bash
        ./deploy.sh -m  # Deploy multi-instance Cheshire Cat
        ```

        ```bash
        ./deploy.sh -s  # Deploy single-instance Cheshire Cat
        ```

- **Stop Containers:**

    - Run the `stop.sh` script - By default, the script stops everything except for Portainer.:
  
        ```bash
        ./stop.sh
        ```

    - To stop every container, including Portainer, use the `-a` or `--all` flag:
  
        ```bash
        ./stop.sh -a
        ```

These scripts automate the process of deploying and stopping containers, providing an easier and quicker way to manage your applications on the VM.

## References

- [Ollama Website](https://ollama.com)
- [Ollama GitHub Repository](https://github.com/ollama/ollama)
- [Cheshire Cat Website](https://cheshirecat.ai)
- [Cheshire Cat GitHub Repository](https://github.com/cheshire-cat-ai)
- [Portainer Website](https://www.portainer.io)

## Contributing

Contributions are welcome! If you have any improvements or suggestions for the Docker Compose files, feel free to open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute the Docker Compose files as needed.

---

