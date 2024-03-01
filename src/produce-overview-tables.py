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
    return "${:.1f}K".format(x)


def table(df, filename):
    if print_tables:
        print("\n")
        sys.stdout.write(df.to_markdown())
        print("\n")
    table_tex = df.to_latex()
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
