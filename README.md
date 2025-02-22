# Jenkins and GitHub Integration for Automated CI/CD Pipeline (Polling Method)

This guide covers how to set up Jenkins to automatically trigger builds from a GitHub repository whenever changes are detected using a polling-based approach.

## Prerequisites

1. Jenkins instance set up and accessible.
2. GitHub repository containing your code.
3. Jenkins plugin: **GitHub Integration Plugin**.
4. GitHub Personal Access Token (PAT) or SSH keys for authentication with Jenkins.

## Setup Guide

### Step 1: Connect Jenkins to GitHub Repository

1. Log in to Jenkins and go to **Manage Jenkins** > **Manage Credentials**.
2. Add a new credential with either a GitHub Personal Access Token or SSH Key to authenticate Jenkins with GitHub.
3. In your Jenkins job configuration, specify the GitHub repository URL and choose the branch you want to monitor (e.g., `main`).

### Step 2: Create Jenkins Pipeline Job

1. Go to **New Item** in Jenkins and create a new **Pipeline Job**.
2. Under the **Pipeline** section, select **Pipeline script from SCM**.
3. Add your GitHub repository URL, and in the **Script Path** field, specify `Jenkinsfile` (or the location of your pipeline script).
4. Copy the provided `Jenkinsfile` script to this file in your GitHub repository.

### Step 3: Configure Polling for Automated Builds

1. In the pipeline job configuration, go to **Build Triggers**.
2. Check **Poll SCM** and set the polling frequency (e.g., `H/5 * * * *` for every 5 minutes).

### Step 4: Verification

1. Commit a small change to your GitHub repository to test the CI/CD pipeline trigger.
2. Go to Jenkins and confirm the build was triggered and that all stages (Checkout, Build, Test, Notification) executed successfully.

## Pipeline Stages

1. **Checkout**: Clones the GitHub repository.
2. **Build**: Simulates the build process (replace with actual commands if applicable).
3. **Test**: Runs a simple test (modify this to include real tests if available).
4. **Notification**: Notifies the team of build status (additional configuration needed for email/Slack).

---

## Troubleshooting

1. **Polling Not Working as Expected**: Double-check the polling syntax in the **Poll SCM** configuration.
2. **Authentication Issues**: Verify PAT/SSH key configuration in Jenkins credentials.
