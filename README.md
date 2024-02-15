# Docker Compose Files for Running Applications on a VM

Welcome to the Docker Compose repository for running various applications on a Virtual Machine (VM). This repository contains Docker Compose files tailored to deploy instances of the Llama and Cheshire Cat applications, along with Portainer for managing containers on the VM. The applications are containerized using Docker for easier deployment and management.

## Folder Structure

- **Ollama-CheshireCat/**
  - `docker-compose-multi.yaml`: Docker Compose file for deploying two instances each of Llama and Cheshire Cat with the same memory allocation.
  - `docker-compose.yml`: Docker Compose file for deploying a single instance each of Llama and Cheshire Cat.
- **Portainer/**
  - `docker-compose.yml`: Docker Compose file for deploying Portainer to manage all containers on the VM.

## Usage

### Prerequisites

- Docker installed on your VM.
- Docker Compose installed on your VM.

### Instructions

1. Clone this repository to your VM:

    ```bash
    git clone https://github.com/your-username/docker-compose-vm.git
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

**Note:** Replace `your-username` in the repository URL with your actual GitHub username.
