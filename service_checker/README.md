# Service Status Checker

Checks whether a given systemd service is active or not.

## Usage
bash command_sub.sh <service_name>

Example: bash command_sub.sh firewalld

Tip: alias this command for faster access.

## Requirements
- Argument must not be null
- Service name must be valid

## Output
- "invalid input" — no argument provided
- "The given service name is invalid" — service does not exist
- "<service> is active" — service is running
- "<service> is not active" — service is stopped
