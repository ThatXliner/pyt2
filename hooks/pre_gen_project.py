import re
import sys

# Validate module name
MODULE_REGEX = re.compile(r"^[_a-zA-Z][_a-zA-Z0-9]+$")
module_name = "{{ cookiecutter.module_name }}"
if not MODULE_REGEX.match(module_name):
    print("ERROR: %s is not a valid Python module name!" % module_name)
    sys.exit(1)
