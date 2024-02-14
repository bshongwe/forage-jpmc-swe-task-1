#!/bin/bash
# JP Morgan & Chase
# Forage Job Simulation: Task 1

# Function to check if python-dateutil is already installed
check_dateutil_installed() {
    python -c "import dateutil" >/dev/null 2>&1
}

# Function to install python-dateutil version 2.8.2
install_dateutil() {
    echo "Installing python-dateutil version 2.8.2..."
    pip install python-dateutil==2.8.2
}

# Change file permissions to make the script executable
chmod u+x task-01.sh

# Check if python-dateutil is already installed
if check_dateutil_installed; then
    echo "python-dateutil is already installed."
else
    # Install python-dateutil
    install_dateutil
fi

# Verify installation
if check_dateutil_installed; then
    echo "python-dateutil version $(python -c "import dateutil; print(dateutil.__version__)") successfully installed."
else
    echo "Failed to install python-dateutil."
fi
