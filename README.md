# font-typekit-generator-action
An action for typekit generation along with CSS from TTF files

## Instructions
* Make sure that the filename is same as the name of font-family as the filename will be used to set the font-family name in the CSS.
* Only ttf files will be converted.

## Usage
To use this action add following to your workflow file

```yml
- name: Font TypeKit Generation Action
  uses: sharadcodes/font-typekit-generator-action@v1.0
  with:
    input-folder: "my_fonts" # This is a Required field & this folder has original font files in TTF format
    output-folder: "converted_fonts" # This is a Required field & this folder will be used to store converted font files
```

## NOTE
This action will not upload the files to your repo, in order to do so you should add the following code in your workflow file
```yml
- name: Font TypeKit Generation Action
  uses: sharadcodes/font-typekit-generator-action@v1.0
  with:
    input-folder: "my_fonts" # This is a Required field & this folder has original font files in TTF format
    output-folder: "converted_fonts" # This is a Required field & this folder will be used to store converted font files
- name: Add & Commit files
  run: |
    git config --local user.email "YOUR-GITHUB-USERNAME@github.com"
    git config --local user.name "YOUR-GITHUB-USERNAME"
    git add .
    git commit -m "Add changes" -a
    git push -f -q https://${{ secrets.GITHUB_TOKEN }}@github.com/YOUR-GITHUB-USERNAME/YOUR-REPO-NAME.git master
```        
