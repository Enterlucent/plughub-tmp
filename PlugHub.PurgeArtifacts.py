import os
import shutil
import argparse

print("\n=========================================================")
print("  Visual Studio Build Artifact Cleaner")
print("=========================================================\n")

parser = argparse.ArgumentParser(description="Recursively delete all bin and obj folders.")
parser.add_argument('-f', '--force', action='store_true', help="Force deletion without confirmation prompt")
args = parser.parse_args()

if not args.force:
    confirm = input("Are you sure you want to remove ALL build artifacts (bin/obj)? (y/N): ")
    if confirm.lower() != 'y':
        print("\nOperation cancelled by user.\n")
        exit(0)

print("\n=========================================================")
print("  Cleaning all bin and obj folders...")
print("=========================================================\n")

for root, dirs, files in os.walk('.', topdown=False):
    for name in dirs:
        if name in ('bin', 'obj'):
            dir_path = os.path.join(root, name)
            print(f'  Deleting "{dir_path}"')
            shutil.rmtree(dir_path, ignore_errors=True)

print("\n=========================================================")
print("  Clean complete!")
print("=========================================================\n")
