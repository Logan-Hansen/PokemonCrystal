import re

def validate_encounter_rates(file_path):
    with open(file_path, 'r') as file:
        lines = file.readlines()

    current_area = None
    time_periods = {'morn': [], 'day': [], 'nite': []}
    errors = []

    for line in lines:
        line = line.strip()

        # Match the start of a new area definition
        area_match = re.match(r'def_grass_wildmons (.+)', line)
        if area_match:
            # If there's an ongoing area, validate it before moving to the next
            if current_area:
                for period, percentages in time_periods.items():
                    if sum(percentages) != 100:
                        errors.append((current_area, period, sum(percentages)))

            # Start a new area
            current_area = area_match.group(1)
            time_periods = {'morn': [], 'day': [], 'nite': []}
            continue

        # Match the time periods
        if line.startswith('; morn'):
            current_period = 'morn'
        elif line.startswith('; day'):
            current_period = 'day'
        elif line.startswith('; nite'):
            current_period = 'nite'

        # Match percentage lines
        percentage_match = re.match(r'db\s+(\d+),', line)
        if percentage_match:
            percentage = int(percentage_match.group(1))
            # Only add non-zero percentages to the list
            if percentage > 0:
                time_periods[current_period].append(percentage)

    # Final validation for the last area
    if current_area:
        for period, percentages in time_periods.items():
            if sum(percentages) != 100:
                errors.append((current_area, period, sum(percentages)))

    # Output errors
    if errors:
        print("The following areas have incorrect probabilities:")
        for area, period, total in errors:
            print(f"Area: {area}, Time Period: {period}, Total: {total}")
    else:
        print("All areas have correct probabilities.")

# Usage example
# Replace 'wildmons.asm' with the path to your actual file
#validate_encounter_rates('johto_grass.asm')
validate_encounter_rates('kanto_grass.asm')