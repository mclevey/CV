import pandas as pd
import yaml
import re
import sys

print_tables = True


def read_yaml_cv_data(filename):
    with open(filename, "r") as file:
        content = file.read()
        match = re.match(r"^---\n(.*?)\n---", content, re.DOTALL)
        if match:
            cv_data = yaml.safe_load(match.group(1))
            return cv_data
        else:
            return None


def count_binary_status(status_list):
    n_complete = len([d for d in status_list if d != "In Progress"])
    total = len(status_list)
    in_progress = total - n_complete
    return total, n_complete, in_progress


cv_data = read_yaml_cv_data("cv.md")
data_keys = list(cv_data.keys())

# STUDENT SUPERVISION DATA
status_ug, status_masters, status_phd = [], [], []

for student in cv_data["undergraduate"]:
    status_ug.append(student["student"])

for student in cv_data["phd"]:
    status_phd.append(student["status"])

for student in cv_data["masters"]:
    status_masters.append(student["status"])

phd = pd.Series(
    count_binary_status(status_phd),
    index=["Total", "Complete", "In Progress"],
    name="PhD Dissertations",
)
masters = pd.Series(
    count_binary_status(status_masters),
    index=["Total", "Complete", "In Progress"],
    name="Masters Theses",
)
ug = pd.Series(
    [len(status_ug), len(status_ug), 0],
    index=["Total", "Complete", "In Progress"],
    name="Undergraduate Theses",
)

df = pd.DataFrame([ug, masters, phd])

if print_tables:
    print("\n")
    sys.stdout.write(df.to_markdown())
    print("\n")

student_supervision_table = df.to_latex()
with open("templates_and_tables/student-supervision.tex", "w") as f:
    f.write(student_supervision_table)
