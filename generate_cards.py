#! /usr/bin/env python3

from jinja2 import Environment, PackageLoader, select_autoescape
from yaml import load, Loader

env = Environment(
    loader=PackageLoader("generate_cards"),
    autoescape=select_autoescape()
)
template = env.get_template("cards.html.j2")

with open('cards.yml') as yaml_file:
    data = load(yaml_file, Loader=Loader)

with open('build/cards.html', 'w') as html_file:
    html_file.write(template.render(data))
