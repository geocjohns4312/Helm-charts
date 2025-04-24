# Jenkins Helm Chart

This repository contains a Helm chart for deploying Jenkins on Kubernetes. The chart provides a simple way to manage the deployment and configuration of Jenkins, allowing users to customize their installation easily.

## Project Structure

The project is organized as follows:

```
jenkins-helm/
└── jenkins/
    ├── charts/                  # (optional for dependencies)
    ├── templates/               # Contains Kubernetes resource templates
    │   ├── deployment.yaml       # Defines the Jenkins deployment
    │   ├── service.yaml          # Defines the Jenkins service
    │   └── _helpers.tpl          # Helper templates for reuse
    ├── values.yaml               # Default configuration values
    ├── Chart.yaml                # Metadata about the Helm chart
    └── README.md                 # Project documentation
```

## Installation

To install the Jenkins Helm chart, follow these steps:

1. Ensure you have Helm installed on your local machine.
2. Add the repository to your Helm client (if applicable).
3. Install the chart using the following command:

   ```
   helm install <release-name> ./jenkins
   ```

   Replace `<release-name>` with your desired name for the release.

## Configuration

You can customize the deployment by modifying the `values.yaml` file. This file contains default values for various configuration options. You can override these values during installation using the `--set` flag or by providing your own YAML file with the `-f` option.

## Templates

The chart includes several templates for Kubernetes resources:

- **deployment.yaml**: Defines the deployment for Jenkins, including the number of replicas and container specifications.
- **service.yaml**: Exposes Jenkins to the network, allowing access to the application.
- **_helpers.tpl**: Contains reusable template functions.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.