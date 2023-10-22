import os

def rename_files():

    current_directory = os.getcwd()
    print("Renames all files in this .", current_directory)

    original_string = "vhdl"
    new_string = "vhd"

    for filename in os.listdir(current_directory):
        new_filename = filename.replace(original_string, new_string)
        os.rename(os.path.join(current_directory, filename), os.path.join(current_directory, new_filename))

if __name__ == "__main__":
  rename_files()
