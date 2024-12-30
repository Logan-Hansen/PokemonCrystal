import re

def validate_water_routes(file_path):
    with open(file_path, 'r') as file:
        lines = file.readlines()

    current_area = None
    water_percentages = []
    errors = []

    for line in lines:
        line = line.strip()

        # Match the start of a new water area definition
        area_match = re.match(r'def_water_wildmons (.+)', line)
        if area_match:
            # If there's an ongoing area, validate it before moving to the next
            if current_area and sum(water_percentages) != 100:
                errors.append((current_area, sum(water_percentages)))

            # Start a new area
            current_area = area_match.group(1)
            water_percentages = []
            continue

        # Match percentage lines
        percentage_match = re.match(r'db\s+(\d+),', line)
        if percentage_match:
            percentage = int(percentage_match.group(1))
            # Only add non-zero percentages to the list
            if percentage > 0:
                water_percentages.append(percentage)

    # Final validation for the last area
    if current_area and sum(water_percentages) != 100:
        errors.append((current_area, sum(water_percentages)))

    # Output errors
    if errors:
        print("The following water areas have incorrect probabilities:")
        for area, total in errors:
            print(f"Area: {area}, Total: {total}")
    else:
        print("All water areas have correct probabilities.")

# Usage example
# Replace 'watermons.asm' with the path to your actual file
#validate_water_routes('johto_water.asm')
validate_water_routes('kanto_water.asm')