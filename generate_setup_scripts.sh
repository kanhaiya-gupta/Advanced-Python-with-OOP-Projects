#!/bin/bash

# Script to generate setup scripts for all sub-projects in setup_env/

# Create setup_env directory if it doesn't exist
SETUP_DIR="setup_env"
mkdir -p "$SETUP_DIR"

# Template for the setup scripts
TEMPLATE=$(cat << 'EOF'
#!/bin/bash

# Script to create and activate the {ENV_NAME} Conda environment for {PROJECT_DIR}
# Also installs dependencies from requirements.txt

# Define the Conda installation path (adjust if different)
CONDA_PATH="/c/Users/kanha/anaconda3"

# Define the environment name and project directory
ENV_NAME="{ENV_NAME}"
PROJECT_DIR="../{PROJECT_DIR}"

# Check if Conda path exists
if [ ! -d "$CONDA_PATH" ] || [ ! -f "$CONDA_PATH/Scripts/activate" ]; then
    echo "Error: Conda directory or activation script not found at $CONDA_PATH"
    echo "Please verify your Anaconda installation path (e.g., run 'conda info --base')"
    exit 1
fi

# Initialize Conda for Bash
echo "Initializing Conda from $CONDA_PATH..."
if ! source "$CONDA_PATH/Scripts/activate"; then
    echo "Error: Failed to initialize Conda from $CONDA_PATH/Scripts/activate"
    exit 1
fi

# Check if Conda command is available
if ! command -v conda &> /dev/null; then
    echo "Error: Conda command not found after initialization"
    exit 1
fi

# Check if the environment already exists
if conda env list | grep -q "$ENV_NAME"; then
    echo "Environment $ENV_NAME already exists"
else
    echo "Creating $ENV_NAME environment with Python 3.12..."
    conda create -n "$ENV_NAME" python=3.12 -y
    if [ $? -ne 0 ]; then
        echo "Error: Failed to create $ENV_NAME environment"
        exit 1
    fi
    echo "Successfully created $ENV_NAME environment"
fi

# Activate the environment
echo "Activating $ENV_NAME environment..."
conda activate "$ENV_NAME"

# Verify activation
if [ "$CONDA_DEFAULT_ENV" != "$ENV_NAME" ]; then
    echo "Error: Failed to activate $ENV_NAME environment"
    echo "Current environment: $CONDA_DEFAULT_ENV"
    exit 1
else
    echo "Successfully activated $ENV_NAME environment"
fi

# Change to project directory
if [ -d "$PROJECT_DIR" ]; then
    cd "$PROJECT_DIR"
    echo "Changed to project directory: $PROJECT_DIR"
else
    echo "Error: Project directory $PROJECT_DIR not found"
    exit 1
fi

# Check for requirements.txt and install dependencies
if [ -f "requirements.txt" ]; then
    echo "Installing dependencies from requirements.txt..."
    pip install -r requirements.txt
    if [ $? -ne 0 ]; then
        echo "Error: Failed to install dependencies"
        exit 1
    fi
    echo "Successfully installed dependencies"
else
    echo "Warning: requirements.txt not found in $PROJECT_DIR"
fi
EOF
)

# List of environments and directories
declare -A PROJECTS=(
    ["app1_env"]="App-1-Photo-Searcher"
    ["app2_env"]="App-2-Flatmates-Bill"
    ["app3_env"]="App-3-Project-Math-Painting"
    ["app4_env"]="App-4-Webcam-Photo-Sharer"
    ["app5_env"]="App-5-Flatmates-Bill-Web-App"
    ["app6_env"]="App-6-Project-Calorie-Webapp"
    ["app7_env"]="App-7-Automated-Emails"
    ["app8_env"]="App-8-Instant-Dictionary-Webapp"
    ["app9_env"]="App-9-Instant-Dictionary-API"
    ["app10_env"]="App-10-Cinema-Ticket-Booking"
)

# Generate scripts in setup_env/
for env in "${!PROJECTS[@]}"; do
    script_name="$SETUP_DIR/setup_${env}.sh"
    dir="${PROJECTS[$env]}"
    echo "Generating $script_name for $env ($dir)..."
    echo "$TEMPLATE" | sed "s/{ENV_NAME}/$env/g" | sed "s/{PROJECT_DIR}/$dir/g" > "$script_name"
    chmod +x "$script_name"
done

echo "All setup scripts generated in $SETUP_DIR/"