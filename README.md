# dir-tree-generator

![Python](https://img.shields.io/badge/Python-3.8+-blue?logo=python)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Platform](https://img.shields.io/badge/Platform-Windows%20%7C%20Linux%20%7C%20macOS-lightgrey)
![Status](https://img.shields.io/badge/status-stable-brightgreen)

A simple and flexible CLI tool to generate a visual representation of your project's directory tree — with support for advanced ignore rules (like `.gitignore`).

> Generate a clean overview of your folder structure in seconds.

---

## Features

- Output a tree view of any directory  
- Control the depth of the tree with a `--depth` option (`0`, `1`, ..., or `full`)  
- Ignore folders, files or patterns (e.g. `*.log`, `folder/`, `folder/*`)  
- Show folder names without listing their content  
- Export result to a readable `.txt` file  
- Works on any OS with Python 3  

---

## Installation

Clone the repository:

```bash
git clone https://github.com/your-username/dir-tree-generator.git
cd dir-tree-generator
```

---

## Usage

```bash
python generate_tree.py [path] [options]
```

### Options

| Option                     | Description                                                  |
|---------------------------|--------------------------------------------------------------|
| `path`                    | Root directory to scan (default: current folder)             |
| `-o`, `--output`          | Output file (default: `tree.txt`)                            |
| `-d`, `--depth`           | Max depth (`0`, `1`, ..., or `full`)                         |
| `--ignore [patterns...]`  | Ignore rules (see examples below)                            |

---

## Ignore Patterns

| Pattern         | Meaning                                     |
|-----------------|---------------------------------------------|
| `folder/`       | Completely ignore folder and its content    |
| `folder/*`      | Keep folder in tree, ignore its content     |
| `*.ext`         | Ignore all files with that extension        |
| `file.txt`      | Ignore a specific file                      |

---

### Examples

```bash
# Show tree up to depth 2, ignoring node_modules entirely
python generate_tree.py -d 2 --ignore node_modules/

# Ignore all .log files and only the content of frontend/node_modules
python generate_tree.py --ignore *.log frontend/node_modules/*
```

---

## Output example

```
my-project/
├── backend/
│   └── node_modules/  (content ignored)
├── frontend/
│   ├── assets/
│   └── App.jsx
├── .gitignore
└── README.md
```

---

## License

MIT — free to use, modify and share.  
Feel free to contribute or suggest improvements!

---

## Author

Made by [Damien Bureau](https://github.com/your-username)
