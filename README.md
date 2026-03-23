# Geometry Theorem Book Template

This is a LaTeX template for creating geometry theorem documents with Asymptote diagrams.

## Files

- `Template.tex` - Main LaTeX source file
- `Template.pdf` - Compiled document (generated)
- `Makefile` - Build automation
- `new-theorem.sh` - Script to create new theorem documents
- `README.md` - This documentation

## Quick Start - Create New Theorem

To create a new theorem document that auto-builds:

```bash
./new-theorem.sh "Your Theorem Name"
```

Example:

```bash
./new-theorem.sh "Pythagorean Theorem"
```

This will:

- Create `theorem-name.tex` and `theorem-name.pdf` in the current directory
- Automatically build the PDF and clean up auxiliary files

## Usage

1. Use `./new-theorem.sh` to create new theorem documents
2. Edit the `.tex` file to customize your theorem and diagram
3. Run `make` to rebuild the main template
4. For individual theorems, use: `pdflatex theorem-name.tex && asy theorem-name-*.asy && pdflatex theorem-name.tex`
5. View the `.pdf` files

## VS Code Integration

The project includes VS Code configuration that sets up the run button (**Ctrl+Shift+B** / **Cmd+Shift+B**) to use `make` for building. This provides:

- **One-click building** with automatic Asymptote processing
- **Automatic cleanup** of auxiliary files (`.aux`, `.log`, `.pre`, `.synctex.gz`, `.asy`, diagram PDFs)
- **Error highlighting** in the editor
- **PDF preview** integration

**Important:** LaTeX Workshop extension's build functionality is disabled to ensure VS Code's task system handles compilation.

## Building

### Automatic build (recommended)

```bash
make
```

This compiles the document with Asymptote and **automatically cleans up all auxiliary files**, leaving only the essential files.

### Manual build

If you prefer manual control:

```bash
pdflatex Template.tex
asy Template-1.asy
pdflatex Template.tex
```

### Cleaning

```bash
make clean      # Remove auxiliary files only (.aux, .log, .pre, .synctex.gz, .asy, diagram PDFs)
make clean-all  # Remove all generated files including the final PDF
```

## Usage

1. Use `./new-theorem.sh` to create new theorem documents
2. Edit the `.tex` file to customize your theorem and diagram
3. Run `make` to rebuild the main template
4. For individual theorems, use: `pdflatex theorem-name.tex && asy theorem-name-1.asy && pdflatex theorem-name.tex`
5. View the `.pdf` files

The template uses Asymptote for mathematical drawings, which provides excellent support for geometry diagrams. The build system automatically removes all temporary files after compilation.
