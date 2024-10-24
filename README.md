# Winget Update Script

## Description

This batch script is designed to automate the process of updating all installed packages on a Windows system using the Windows Package Manager, `winget`.
Overall, this batch script provides a quick and efficient way to ensure that all packages managed by winget are kept up to date with minimal user intervention.

## Key Features

- **Echo Command**: The script starts by displaying a message in the command prompt indicating that the update process for all packages is about to begin.

- **Winget Upgrade Command**: The core command executed is:

  ```bash
  winget upgrade --all --accept-package-agreements --accept-source-agreements --accept-unknown --silent

- winget upgrade --all: This part instructs winget to upgrade all packages installed on the system.

- --accept-package-agreements: Automatically accepts the license agreements for the packages being upgraded.

- --accept-source-agreements: Automatically accepts the agreements for any sources that the packages might be coming from.

- --accept-unknown: Allows the upgrade of unknown packages that are not recognized by the current package sources.

- --silent: Executes the command without requiring user interaction, allowing for a seamless upgrade experience.

## Error Level Check: 
After attempting to upgrade the packages, the script checks the exit code (error level) of the previous command:

If the exit code is 0, it indicates that the operation was successful, and a success message is displayed.
If the exit code is not 0, it signifies an error occurred during the update process, and an error message is shown.
- Pause Command: Finally, the script includes a pause command to keep the command prompt window open, allowing the user to review the output messages before it closes.
