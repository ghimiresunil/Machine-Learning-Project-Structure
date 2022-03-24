# Machine Learning Project Structure

Having a well-organized general Machine Learning project structure makes it easy to understand and make changes. Moreover, this structure can be the same for multiple projects, which avoids confusion. 

## Steps involved in making a project Structure

Step 01: Make sure that you have latest python and pip installed in your system.

Step 02: Create a sample repository on github.com (For example: Machine-Learning-Project)

Step 03: Clone the repo in your local system `git clone <url>`

Step 04: Change directory to new directory 'Machine-Learning-Project' `cd Machine-Learning-Project`

Step 05: Create and activate virtaul environment
```
Example 01:

- Create Virtual Environment
    python -m venv venv_machine_learning_project
    
- Activate Created Virtual Environment
    For unix based system -> source ./venv_machine_learning_project/bin/activate 
    For windows -> ./venv_machine_learning_project/Scripts/activate 

Example 02: 

- Create Virtual Environment
    conda create -n venv_machine_learning_project

- Activate Created Virtual Environment
    conda activate venv_machine_learning_project 
```
Step 06: Follow the below directory structure for your project

## Project Directory Structure

```
├── Machine Learning Project Structure <- Project Main Directory
|   |── api <- Consists of scripts which serialize the API calls and act as a endpoint faciliating for project functions.
│   ├── data <- data in different format
|   |   ├── external <- data from third party source
|   |   ├── interim <- Intermediate data that has been transformed
|   |   ├── processed <- The final, canonical data sets for modeling
|   |   ├── raw <- The original, immutable data dump
|   ├── evaluation 
|   |   ├── evaluate_model_01.py <- Different Matries used to evaluate the model 
|   |   ├── evaluate_model_02.py <- Different Matries used to evaluate the model 
│   ├── examples
|   |   ├── feature_01.md <- It consists of doc and example showing how we can use the project, different functions etc.
|   |   ├── feature_02.md <- It consists of doc and example showing how we can use the project, different functions etc.
│   ├── notebooks <- All the ipython notebooks used for EDA, visualization and verification of concept (POC).
│   ├── src
|   |   ├── dataset 
|   |   |   ├── download_dataset.py <- Scripts to download the dataset or ccesing dataset from data folder
|   |   ├── model 
|   |   |   ├── train_model.py <- Scripts to train the model
|   |   |   ├── test_model.py <- scripts to test the model
|   |   |   ├── predict_model.py <- Scripts to predict the model
|   |   ├── network 
|   |   |   ├── approach_01.py <- Neural network schema
|   |   ├── weights 
|   |   |   ├── utils.py.py <- folder to save weights
|   |   ├── visualization 
|   |   |   ├── visaulization_model.py <- Scripts to visualize the model
|   |   ├── utils.py <- different utils functions 
|   |   ├── project.py <- project pipeline 
│   ├── project_cli <- Scripts which faciliates Command line interface for taining, testing and other features.
|   |   ├── train_cli.py 
|   |   ├── test_cli.py 
│   ├── task <- Contains batch script which can be used for downloading files from web or batch to auto test, lint project.
|   |   ├── download.sh
|   |   ├── lint.sh
|   |   ├── est_api.sh 
│   ├── training <- Contains all experiments preperation, way on auto running experiments and updating metadata.
|   |   ├── experiment
|   |   |   ├── utils.py
|   |   ├── prepare_experiment.py
|   |   ├── run_experiment.py
|   |   ├── update_metadata.py
|   ├── sqs
|   |   ├── SQSSender.py <- sending message to Amazon SQS
|   ├── aws
|   |   ├── download_files.py  <- uploading and downloading files from Amazon S3 Bucket
│   ├── config.ini <- Contains configuration information of project
│   ├── .pre-commit-config.yaml <- identifying simple issues before submission to code review
│   ├── .gitignore <- tells Git which files to ignore when committing your project to the GitHub repository
│   ├── .env <- used to hide the confidential data like AWS Screte Key, AWS  Access Key, S3 Bucket Name etc... 
│   ├── Dockerfile <- This helps in dockerizing whole system
│   ├── requirements.txt <- requirements files contains all the module used while building the project.
│   ├── application.py <- python module that processes event i.e. function is invoked, Lambda runs the handler method.
│   ├── README.md <- The top-level README for developers using this project
```

****Note****: The `data` folder and `.env` file won’t appear in github. It will be in your local folder. This is not pushed to githhub as it will be in the ignore list (`.gitignore` file). If you want to checkin that also, just comment out in `.gitignore` file and add the data folder to github.

## Thank-You for reading! Share your ❤️ by starring this repo! as it encourages me to write more!
