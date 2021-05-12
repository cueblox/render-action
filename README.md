# CueBlox Render GitHub Action

```yaml
on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    name: Main
    steps:
    - name: Render Your Blox
      id: render
      uses: cueblox/render-action@v0.0.x
      with:
        directory: ./some/dir # Default .
        extraArgs: --quiet -t articles.txt.tmpl -w articles > articles.sh # Default ""

    - name: Output
      run: echo "${{ steps.build.outputs.messages }}"
```
