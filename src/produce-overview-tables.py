import pandas as pd
import yaml
import re
import sys

print_tables = True

####################
# CUSTOM FUNCTIONS #
####################


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


def extract_dollar_value(s):
    # Remove dollar sign, commas and whitespace
    s = re.sub(r"[$,\s]", "", s)
    # Extract and return the first floating point number
    match = re.search(r"\d+(\.\d+)?", s)
    return float(match.group()) if match else None


def format(x):
    return "\${:.1f}K".format(x)


def table(df, filename):
    if print_tables:
        print("\n")
        sys.stdout.write(df.to_markdown())
        print("\n")
    table_tex = df.to_latex(escape=True)
    with open(filename, "w") as f:
        f.write(table_tex)


###########
# CV DATA #
###########

cv_data = read_yaml_cv_data("cv.md")
data_keys = list(cv_data.keys())

####################
# PUBLICATION DATA #
####################

books = cv_data["books"]
articles = cv_data["articles"]
chapters = cv_data["chapters"]
reports = cv_data["reports"]
issues = cv_data["issues"]
article_manuscripts = cv_data["article-manuscripts"]
book_manuscripts = cv_data["book-manuscripts"]
misc = cv_data["misc"]

counts = [
    len(books),
    len(articles),
    len(chapters),
    len(reports),
    len(issues),
    len(article_manuscripts),
    len(book_manuscripts),
    len(misc),
]
counts = pd.DataFrame(counts)
counts.index = [
    "Refereed Books",
    "Refereed Journal Articles",
    "Refereed Book Chapters",
    "Research \& Policy Reports",
    "Special Issues of Journals",
    "Article Manuscripts in Progress",
    "Book Manuscripts in Progress",
    "Non-refereed Publications",
]
counts.columns = ["Count"]

table(counts, "templates_and_tables/publications.tex")

##############
# GRANT DATA #
##############

grants = cv_data["grants"]

as_pi, as_ci, as_co = [], [], []
as_pi_amount, as_ci_amount, as_co_amount = [], [], []

for g in grants:
    if "McLevey" in g["pi"]:
        as_pi.append(g["pi"])
        as_pi_amount.append(extract_dollar_value(g["amount"]))
    elif "McLevey" in g["ci"]:
        as_ci.append(g["ci"])
        as_ci_amount.append(extract_dollar_value(g["amount"]))
    else:
        as_co.append(g["collaborators"])
        as_co_amount.append(extract_dollar_value(g["amount"]))

grants = pd.DataFrame([len(as_pi), len(as_ci), len(as_co)])
grants.index = ["As Principle Investigator", "As Co-Investigator", "As Collaborator"]
grants.columns = ["No. of Grants"]

amounts = pd.DataFrame([sum(as_pi_amount), sum(as_ci_amount), sum(as_co_amount)])
amounts.index = ["As Principle Investigator", "As Co-Investigator", "As Collaborator"]
amounts.columns = ["CAD"]
amounts["CAD"] = amounts["CAD"].copy().apply(lambda x: "${:,.2f}".format(x))
grants["CAD"] = amounts["CAD"].astype(str)
grants["Total CAD"].replace("$", "\$", inplace=True)

table(grants, "templates_and_tables/grants.tex")

############################
# STUDENT SUPERVISION DATA #
############################

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

students = pd.DataFrame([ug, masters, phd])
table(students, "templates_and_tables/student-supervision.tex")
