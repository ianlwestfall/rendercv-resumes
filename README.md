# RenderCV Resumes

Resumes written in YAML and rendered with [RenderCV](https://github.com/rendercv/rendercv).

## Overview

This repository contains resume variants for different roles and applications. Each resume is maintained as a YAML source file and can be rendered to PDF and other output formats using RenderCV.

Sensitive personal information can be kept out of the public repository and supplied locally at render time.

## Files

- `Software_Development_CV.yaml` – software development focused resume
- `Information_Technology_CV.yaml` – IT focused resume
- `General_CV.yaml` – generic resume
- `private.env.example` — example local-only environment file for sensitive values
- `render-local.sh` — script for injecting sensitive values at render
- `README.md` – repository documentation

## Requirements

- [RenderCV](https://github.com/rendercv/rendercv)
- [Node.js](https://nodejs.org/) and npm (for Prettier)

## Usage

Render a resume directly with:

```bash
rendercv render <resume-file-name>_CV.yaml
```

Or render a resume with sensitive information with the script:

```bash
./render.local.sh
```
