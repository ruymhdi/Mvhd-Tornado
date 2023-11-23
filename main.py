from importlib import import_module
from sys import path

path.insert(1, "./Tornado/")
main = import_module("Tornado.main")

main.run()
