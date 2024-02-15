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

