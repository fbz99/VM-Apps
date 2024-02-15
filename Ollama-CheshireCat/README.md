# Ollama and Cheshire Cat Usage Guide

This guide provides instructions on using Ollama and Cheshire Cat Docker containers for machine learning model deployment and text generation.

## Prerequisites

- Docker installed on your machine.
- Docker Compose installed on your machine.
- Internet connectivity to access the Ollama library and Docker Hub.
- All the containers have been deployed as said in the main guide.

Access the applications using their respective endpoints:

   - Cheshire Cat: [http://localhost:1865](http://localhost:1865/admin)
   - Ollama: [http://localhost:11434](http://localhost:11434)
   - Portainer: [http://localhost:9443](http://localhost:9443)

## Using Ollama and Cheshire Cat

1. Open your web browser and navigate to the Ollama library: [https://ollama.com/library](https://ollama.com/library).

2. Find a large language model you want to use for text generation.

3. Note down the name and tag of the model you've selected.

4. Open a terminal or command prompt on your machine.

5. Use the following command to pull the selected model into your machine to interact with the Ollama container (replace `<model:tag>` with the name and tag of your chosen model):

    ```bash
    docker exec ollama_cat ollama pull <model:tag>
    ```

6. Once the model is pulled successfully, go to the Cheshire Cat application: [http://localhost:1865/admin](http://localhost:1865/admin).

7. Navigate to the settings section of Cheshire Cat.

8. In the "Large language model" section, enter the following details:
   
   - Base URL: `http://ollama_cat:11434`
   - Model: Enter the name and tag of the model you pulled in step 5.

9. Save the settings, and Cheshire Cat is now configured to use the selected model from Ollama for text generation.

## License

This project is licensed under the [MIT License](LICENSE).
