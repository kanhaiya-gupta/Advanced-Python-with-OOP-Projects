#!/bin/bash

# Script to generate activation scripts for all sub-projects in their respective directories

# Template for the activation scripts
TEMPLATE=$(cat << 'EOF'
#!/bin/bash

# Script to activate the {ENV_NAME} Conda environment for {PROJECT_DIR}

# Define the Conda installation path (adjust if different)
CONDA_PATH="/c/Users/kanha/anaconda3"

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

# Activate the {ENV_NAME} environment
echo "Activating {ENV_NAME} environment..."
conda activate {ENV_NAME}

# Verify activation
if [ "$CONDA_DEFAULT_ENV" != "{ENV_NAME}" ]; then
    echo "Error: Failed to activate {ENV_NAME} environment"
    echo "Current environment: $CONDA_DEFAULT_ENV"
    exit 1
else
    echo "Successfully activated {ENV_NAME} environment"
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

# Generate scripts in respective project directories
for env in "${!PROJECTS[@]}"; do
    dir="${PROJECTS[$env]}"
    script_name="$dir/activate_${env}.sh"
    echo "Generating $script_name for $env ($dir)..."
    echo "$TEMPLATE" | sed "s/{ENV_NAME}/$env/g" | sed "s/{PROJECT_DIR}/$dir/g" > "$script_name"
    chmod +x "$script_name"
done

echo "All activation scripts generated in their respective project directories"