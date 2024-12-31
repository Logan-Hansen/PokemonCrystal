import os
import tkinter as tk
from tkinter import ttk
from PIL import Image, ImageTk


class ShinySpritePreviewer:
    def __init__(self, root):
        self.root = root
        self.root.title("Shiny Sprite Previewer")
        
        # Set the dark theme colors
        self.bg_color = "#2e2e2e"  # Dark background
        self.fg_color = "#e0e0e0"  # Light foreground (text)
        self.button_bg = "#444444"  # Darker button background
        self.button_fg = "#e0e0e0"  # Lighter button text
        self.entry_bg = "#555555"  # Entry field background
        self.entry_fg = "#e0e0e0"  # Entry field text color

        # Set the window background to dark
        self.root.config(bg=self.bg_color)

        self.pokemon_folders = self.get_pokemon_folders()
        self.current_pokemon = None
        self.front_sprite = None
        self.back_sprite = None
        self.img_tk_original_front = None
        self.img_tk_original_back = None
        self.img_tk_shiny_front = None
        self.img_tk_shiny_back = None
        self.original_color1 = None
        self.original_color2 = None

        # Main frame to contain everything
        self.main_frame = tk.Frame(root, bg=self.bg_color)
        self.main_frame.pack(fill=tk.BOTH, expand=True)

        # Scrollable canvas for images
        self.canvas_frame = tk.Frame(self.main_frame, bg=self.bg_color)
        self.canvas_frame.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)

        self.image_canvas = tk.Canvas(self.canvas_frame, bg=self.bg_color)
        self.image_canvas.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)

        self.scrollbar = tk.Scrollbar(self.canvas_frame, orient=tk.VERTICAL, command=self.image_canvas.yview)
        self.scrollbar.pack(side=tk.RIGHT, fill=tk.Y)

        self.image_canvas.configure(yscrollcommand=self.scrollbar.set)
        self.image_canvas.bind("<Configure>", self.on_canvas_configure)

        self.image_container = tk.Frame(self.image_canvas, bg=self.bg_color)
        self.image_canvas.create_window((0, 0), window=self.image_container, anchor="nw")

        # Side frame for dropdown and palette editor
        self.side_frame = tk.Frame(self.main_frame, bg=self.bg_color)
        self.side_frame.pack(side=tk.RIGHT, fill=tk.Y)

        # Dropdown menu to select Pokémon
        self.pokemon_dropdown_label = tk.Label(self.side_frame, text="Select Pokémon:", bg=self.bg_color, fg=self.fg_color)
        self.pokemon_dropdown_label.pack(pady=5)

        self.pokemon_dropdown = ttk.Combobox(self.side_frame, values=self.pokemon_folders, style="TCombobox")
        self.pokemon_dropdown.bind("<<ComboboxSelected>>", self.load_pokemon)
        self.pokemon_dropdown.pack(pady=5)

        # Shiny palette customization
        self.palette_frame = tk.Frame(self.side_frame, bg=self.bg_color)
        self.palette_frame.pack(pady=10)

        self.color1_label = tk.Label(self.palette_frame, text="Color 1 (RGB):", bg=self.bg_color, fg=self.fg_color)
        self.color1_label.grid(row=0, column=0, sticky="w")
        self.color1_entry = tk.Entry(self.palette_frame, bg=self.entry_bg, fg=self.entry_fg)
        self.color1_entry.grid(row=0, column=1, padx=5)

        self.color2_label = tk.Label(self.palette_frame, text="Color 2 (RGB):", bg=self.bg_color, fg=self.fg_color)
        self.color2_label.grid(row=1, column=0, sticky="w")
        self.color2_entry = tk.Entry(self.palette_frame, bg=self.entry_bg, fg=self.entry_fg)
        self.color2_entry.grid(row=1, column=1, padx=5)

        self.update_button = tk.Button(self.palette_frame, text="View Custom Palette", command=self.update_palette, bg=self.button_bg, fg=self.button_fg)
        self.update_button.grid(row=2, column=0, columnspan=2, pady=5)

        # Add revert button below the update button
        self.revert_button = tk.Button(self.palette_frame, text="View Original Palette", command=self.revert_to_original_palette, bg=self.button_bg, fg=self.button_fg)
        self.revert_button.grid(row=3, column=0, columnspan=2, pady=5)

        # Display original color values
        self.original_color_frame = tk.Frame(self.palette_frame, bg=self.bg_color)
        self.original_color_frame.grid(row=4, column=0, columnspan=2, pady=10)

        self.original_color1_label = tk.Label(self.original_color_frame, text="Color 1 (RGB): N/A", bg=self.bg_color, fg=self.fg_color)
        self.original_color1_label.grid(row=0, column=0, sticky="w")

        self.original_color2_label = tk.Label(self.original_color_frame, text="Color 2 (RGB): N/A", bg=self.bg_color, fg=self.fg_color)
        self.original_color2_label.grid(row=1, column=0, sticky="w")

    def get_pokemon_folders(self):
        """ Get the names of all subfolders representing Pokémon """
        base_path = os.path.dirname(os.path.realpath(__file__))
        pokemon_folders = [name for name in os.listdir(base_path) if os.path.isdir(os.path.join(base_path, name))]
        return pokemon_folders

    def load_pokemon(self, event):
        """ Load the selected Pokémon's images and shiny palette """
        self.current_pokemon = self.pokemon_dropdown.get()
        pokemon_folder = os.path.join(os.path.dirname(os.path.realpath(__file__)), self.current_pokemon)

        # Load the front and back sprites
        self.front_sprite = Image.open(os.path.join(pokemon_folder, "front.png"))
        self.back_sprite = Image.open(os.path.join(pokemon_folder, "back.png"))

        # Load shiny palette
        shiny_pal_path = os.path.join(pokemon_folder, "shiny.pal")
        if os.path.exists(shiny_pal_path):
            shiny_palette = self.load_shiny_palette(shiny_pal_path)

            # Autofill the palette entry boxes
            if len(shiny_palette) == 2:
                color1 = ", ".join(str(val // 8) for val in shiny_palette[0])  # Divide by 8 to revert to the original RGB values
                color2 = ", ".join(str(val // 8) for val in shiny_palette[1])
                self.color1_entry.delete(0, tk.END)
                self.color1_entry.insert(0, color1)
                self.color2_entry.delete(0, tk.END)
                self.color2_entry.insert(0, color2)

            # Store original colors for comparison
            self.original_color1 = shiny_palette[0]
            self.original_color2 = shiny_palette[1]

            # Divide the values by 8 to match editor formatting
            original_color1_display = ", ".join(str(val // 8) for val in self.original_color1)
            original_color2_display = ", ".join(str(val // 8) for val in self.original_color2)

            # Update original color labels
            self.original_color1_label.config(text=f"Color 1 (RGB): {original_color1_display}")
            self.original_color2_label.config(text=f"Color 2 (RGB): {original_color2_display}")

            self.apply_shiny_palette(shiny_palette)

    def load_shiny_palette(self, palette_path):
        """ Load and return the shiny palette values """
        with open(palette_path, 'r') as file:
            file.readline()  # Skip first line
            rgb_values = []
            for _ in range(2):  # Only first two colors in the palette
                line = file.readline().strip()
                try:
                    rgb = [int(value.strip()) * 8 for value in line.split("RGB")[1].split(",")]
                    rgb_values.append(rgb)
                except ValueError as e:
                    print(f"Error parsing RGB values: {e}")
            return rgb_values

    def apply_shiny_palette(self, shiny_palette):
        """ Apply the shiny palette to the sprites and display them """
        # Convert to "P" mode for palette-based image
        shiny_front = self.front_sprite.convert("P")
        shiny_back = self.back_sprite.convert("P")

        # Get the current palette
        palette = shiny_front.getpalette()

        # Apply the shiny palette colors (replace colors 3 and 6)
        if len(shiny_palette) >= 2:
            palette[3:6] = shiny_palette[0]  # Apply first shiny color
            palette[6:9] = shiny_palette[1]  # Apply second shiny color

        # Apply the modified palette to both images
        shiny_front.putpalette(palette)
        shiny_back.putpalette(palette)

        # Show all images in the GUI
        self.show_images(self.front_sprite, shiny_front, self.back_sprite, shiny_back)

    def update_palette(self):
        """ Update the shiny palette based on user input """
        try:
            # Parse and validate RGB values from input fields
            color1 = [int(value.strip()) * 8 for value in self.color1_entry.get().strip().split(",") if value.strip().isdigit()]
            color2 = [int(value.strip()) * 8 for value in self.color2_entry.get().strip().split(",") if value.strip().isdigit()]

            # Check if valid RGB values are provided
            if len(color1) != 3 or len(color2) != 3:
                raise ValueError("RGB values must have exactly 3 components")

            # Ensure values are within the valid range
            if not all(0 <= val <= 255 for val in color1 + color2):
                raise ValueError("RGB values must be in the range 0-255")

            # Apply the new palette
            self.apply_shiny_palette([color1, color2])
        except ValueError as e:
            print(f"Invalid RGB values: {e}")

    def show_images(self, original_front, shiny_front, original_back, shiny_back):
        """ Display all images on the canvas in the specified side-by-side arrangement """
        # Double the size of the images while maintaining aspect ratio
        original_front = original_front.resize((original_front.width * 2, original_front.height * 2), Image.NEAREST)
        shiny_front = shiny_front.resize((shiny_front.width * 2, shiny_front.height * 2), Image.NEAREST)
        original_back = original_back.resize((original_back.width * 2, original_back.height * 2), Image.NEAREST)
        shiny_back = shiny_back.resize((shiny_back.width * 2, shiny_back.height * 2), Image.NEAREST)

        # Convert images to PhotoImage objects for Tkinter
        self.img_tk_original_front = ImageTk.PhotoImage(original_front)
        self.img_tk_shiny_front = ImageTk.PhotoImage(shiny_front)
        self.img_tk_original_back = ImageTk.PhotoImage(original_back)
        self.img_tk_shiny_back = ImageTk.PhotoImage(shiny_back)

        # Clear previous images
        self.image_canvas.delete("all")

        # Add images to the canvas side by side with padding
        padding = 20
        x_offset = padding  # Start with some padding from the left side

        # Original front sprite
        self.image_canvas.create_image(x_offset, padding, anchor="nw", image=self.img_tk_original_front)
        x_offset += original_front.width + padding

        # Shiny front sprite
        self.image_canvas.create_image(x_offset, padding, anchor="nw", image=self.img_tk_shiny_front)
        x_offset += shiny_front.width + padding

        # Original back sprite
        self.image_canvas.create_image(x_offset, padding, anchor="nw", image=self.img_tk_original_back)
        x_offset += original_back.width + padding

        # Shiny back sprite
        self.image_canvas.create_image(x_offset, padding, anchor="nw", image=self.img_tk_shiny_back)

        # Update scroll region (horizontal scrolling enabled)
        self.image_canvas.config(scrollregion=self.image_canvas.bbox("all"))

    def on_canvas_configure(self, event):
        """ Update scroll region when canvas size changes """
        self.image_canvas.config(scrollregion=self.image_canvas.bbox("all"))

    def revert_to_original_palette(self):
        """ Revert to the original shiny palette values from the shiny.pal file and update the image """
        if not self.current_pokemon:
            print("No Pokémon selected!")
            return

        pokemon_folder = os.path.join(os.path.dirname(os.path.realpath(__file__)), self.current_pokemon)
        shiny_pal_path = os.path.join(pokemon_folder, "shiny.pal")

        if os.path.exists(shiny_pal_path):
            # Load the original shiny palette from the file
            shiny_palette = self.load_shiny_palette(shiny_pal_path)
            self.apply_shiny_palette(shiny_palette)
            print(f"Reverted to original shiny palette for {self.current_pokemon}")
        else:
            print(f"Shiny palette file not found for {self.current_pokemon}")


if __name__ == "__main__":
    root = tk.Tk()
    app = ShinySpritePreviewer(root)
    root.mainloop()
